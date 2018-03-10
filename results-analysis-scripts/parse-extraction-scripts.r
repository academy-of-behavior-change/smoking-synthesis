########################################################################
### Packages
########################################################################

### Load userfriendlyscience. If not installed, install it and load it.
if (!require('userfriendlyscience')) {
  install.packages(pkgs='userfriendlyscience',
                   repos="https://cloud.r-project.org",
                   dependencies=TRUE);
  require(userfriendlyscience);
}

### Load other packages
safeRequire('tidyverse');
safeRequire('plyr');
safeRequire('here');
safeRequire('metafor');

### Load metabefor
if (!require('metabefor')) {
  stop("For some reason, I failed to load metabefor, probably because ",
       "it was not installed succesfully. It is very much in progress, ",
       "in infancy even; contact Gjalt-Jorn to obtain the .tar.gz file.");
}

########################################################################
### Settings
########################################################################

### Set number of decimals to round to when exporting results
### (necessary because Excel can't deal with a lot of decimals)
exportPrecision <- 5;

basePath <- here::here();

extractedArticlesPath <- file.path(basePath,
                                   "results-extraction",
                                   "completed");
extractionWorkingPath <- file.path(basePath,
                                   "results-working-path");
classificationWorkingPath <- file.path(basePath,
                                       "results-classification",
                                       "phase-1-generated");
classificationFilesPath <- file.path(basePath,
                                     "results-classification",
                                     "phase-1-done");

###########################################################################
### Import extractionscripts and add (sub)sample and variable details to
### the univariate results and the associations.
###########################################################################

### Process all extracted articles
extractionFeedback <-
  capture.output(ss.extracted <-
                   processExtractedFiles(extractedArticlesPath));

### To show the feedback from the processing of the extrationscripts
cat(paste0(extractionFeedback, collapse="\n"));

### Store the feedback in a file
writeLines(extractionFeedback,
           file.path(extractionWorkingPath, 'extraction-feedback.txt'));

### Store under a differentname so we can quickly get the original raw
### values again
ss.combined <- ss.extracted;

### Add sample information to the univariate results
ss.combined$output$univariate <-
  addSampleInfo(listOfObjects = ss.combined$intermediate$processedObjects,
                dataframe = ss.combined$output$univariate,
                variableToAdd = c('size'));

### Add sample information to the associations
ss.combined$output$association <-
  addSampleInfo(listOfObjects = ss.combined$intermediate$processedObjects,
                dataframe = ss.combined$output$association,
                variableToAdd = c('size'));

### Add variable (operationalisation) information to the univariate results
ss.combined$output$univariate <-
  addVariableInfo(variablesDataframe = ss.combined$output$variable,
                  dataframe = ss.combined$output$univariate,
                  variableNameColumn = "variable",
                  variableToAdd = c('dependent',
                                    'direction',
                                    'values',
                                    'uniqueVarID'));

### Add variable (operationalisation) information for the one variable
### to the associations
ss.combined$output$association <-
  addVariableInfo(variablesDataframe = ss.combined$output$variable,
                  dataframe = ss.combined$output$association,
                  variableNameColumn = "variable",
                  variableNameColumnInDF = "variable1",
                  newVarPrefix = "var1_",
                  variableToAdd = c('dependent',
                                    'direction',
                                    'values',
                                    'uniqueVarID',
                                    'psytype'));

### Add variable (operationalisation) information for the other variable
### to the associations
ss.combined$output$association <-
  addVariableInfo(variablesDataframe = ss.combined$output$variable,
                  dataframe = ss.combined$output$association,
                  variableNameColumn = "variable",
                  variableNameColumnInDF = "variable2",
                  newVarPrefix = "var2_",
                  variableToAdd = c('dependent',
                                    'direction',
                                    'values',
                                    'uniqueVarID',
                                    'psytype'));


### Conveniently set the 'psychological variable types' of the predictor
### and the dependent variable
ss.combined$output$association$pred_psytype <-
  ifelse(ss.combined$output$association$var1_psytype == 'determinant' |
           ss.combined$output$association$var2_psytype == 'determinant',
         'determinant',
         ifelse(ss.combined$output$association$var1_psytype == 'belief' |
                  ss.combined$output$association$var2_psytype == 'belief',
                'belief', 'none'));
ss.combined$output$association$dep_psytype <-
  ifelse(ss.combined$output$association$var1_psytype == 'behavior' |
           ss.combined$output$association$var2_psytype == 'behavior',
         'behavior',
         ifelse(ss.combined$output$association$var1_psytype == 'proxy' |
                  ss.combined$output$association$var2_psytype == 'proxy',
                'proxy', 'none'));

### Show variables and their "psytypes"
ss.combined$output$association[, c('variable1', 'variable2', 'pred_psytype', 'dep_psytype')]

### Store the dependent variable in a convenient variable, and verify
### whether it's the same for both variables in each association
ss.combined$output$association$dependent <-
  ifelse(ss.combined$output$association$var1_dependent == ss.combined$output$association$var2_dependent,
         ss.combined$output$association$var1_dependent,
         NA);
if (any(is.na(ss.combined$output$association$dependent))) {
  cat0('### WARNING: the dependent variable is different for the ',
       'following associations:\n\n');
  tmpDataframe <- data.frame();
  for (currentRow in which(is.na(ss.combined$output$association$dependent))) {
    tmpDataframe[nrow(tmpDataframe)+1, 'study'] <-
      ss.combined$output$association[currentRow, 'study'];
    tmpDataframe[nrow(tmpDataframe), 'variable1'] <-
      ss.combined$output$association[currentRow, 'variable1'];
    tmpDataframe[nrow(tmpDataframe), 'variable2'] <-
      ss.combined$output$association[currentRow, 'variable2'];
    tmpDataframe[nrow(tmpDataframe), 'var1_dependent'] <-
      ss.combined$output$association[currentRow, 'var1_dependent'];
    tmpDataframe[nrow(tmpDataframe), 'var2_dependent'] <-
      ss.combined$output$association[currentRow, 'var2_dependent'];
  }
  print(tmpDataframe);
  cat0("\n");
}

###########################################################################
### Converting statistics to effect size measures, storing everything
### in one 'r-family effect size' variable, and computing the variance
###########################################################################

### Convert statistics and effect sizes to effect sizes and other
### effect sizes.
ss.combined$output$association <-
  convertStatistics(ss.combined$output$association);

### For articles where the Pearson correlation was not provided, we have
### to compute it ourselves, converted from some other value. The
### convertStatistics function already converted Cohen's d and
### odds ratio's to Pearson correlations; now we have to convert Cramer's
### v and eta squared values. Since these are unidirectional, we will have
### to use the direction extracted from the papers to determine their
### sign. Note that we assume that sqrt(etasq) equals Pearson's r, based
### on the explanation at http://stats.stackexchange.com/questions/166696

### Figure out the direction of the association for unidimensional effect
### sizes (V and eta^2)
ss.combined$output$association$r_fam_sign <-
  ifelse(ss.combined$output$association$var1_direction == "inconsistent",
         -1, 1) *
  ifelse(ss.combined$output$association$var2_direction == "inconsistent",
         -1, 1);
ss.combined$output$association$r_fam_sign[is.na(ss.combined$output$association$r_fam_sign)] <-
  1;

### Convert V to r, using the direction
v_names <- c('v', grep('^v\\..*',
                       names(ss.combined$output$association),
                       value=TRUE));
for (currentVar in v_names) {
  ss.combined$output$association[[paste0('r.computed.from.', currentVar)]] <-
    ss.combined$output$association[[currentVar]] *
    ss.combined$output$association$r_fam_sign;
}

### Convert etasq to r, using the direction
etasq_names <- c('etasq', grep('^etasq\\..*',
                               names(ss.combined$output$association),
                               value=TRUE));
for (currentVar in etasq_names) {
  ss.combined$output$association[[paste0('r.computed.from.', currentVar)]] <-
    sqrt(ss.combined$output$association[[currentVar]]) *
    ss.combined$output$association$r_fam_sign;
}

### Get the names of the available converted r variables
r_fam_names <- grep('^r\\..*', names(ss.combined$output$association),
                    value=TRUE);

### We'll need the sample size stored in n
ss.combined$output$association$n.extracted <-
  ss.combined$output$association$n;
ss.combined$output$association$n <-
  ifelse(!is.na(ss.combined$output$association$n),
         ss.combined$output$association$n,
         ss.combined$output$association$size);

### Now we have to average these. Because most of them will be missing,
### we'll use apply to process every line of the dataframe separately.
### Hardly elegant, but it will work :-)
### We're using adply as suggested by Hadley at
### http://stackoverflow.com/questions/2074606
ss.combined$output$association <-
  adply(ss.combined$output$association, 1,
        function(row, r_vars=r_fam_names) {
          pearsonRs <- na.omit(unlist(row[, r_vars]));
          if (length(pearsonRs) == 1) {
            row$r.averaged.from.computations <- pearsonRs;
            return(row);
          } else if (length(pearsonRs) > 1) {
            row$r.averaged.from.computations <-
              averagePearsonRs(pearsonRs,
                               as.numeric(rep(row$n, length(pearsonRs))));
            return(row);
          }
          else {
            return(row);
          }
        });

### Store the r provided in the articles in the final r_fam_es variable,
### if it's available
ss.combined$output$association$r_fam_es <-
  ifelse(!is.na(ss.combined$output$association$r),
         ss.combined$output$association$r,
         ss.combined$output$association$r.averaged.from.computations);

###########################################################################
### Export the variable names so these can be classified
###########################################################################

exportVarClassificFiles(dat = ss.combined$output$variable,
                        filename = "variable classification ([RATER]).xls",
                        variables = c('variable',
                                      'type',
                                      'datatype',
                                      'dependent',
                                      'direction',
                                      'psytype',
                                      'comment',
                                      'parent',
                                      'study',
                                      'uniqueVarID'),
                        classifiers = c('K', 'R', 'W', 'P'),
                        path = classificationWorkingPath);

###########################################################################
### Import the classified variables - only run after that phase has
### ended, of course!
###########################################################################

classifiedVars <- importVarClassificFiles(path=classificationFilesPath);

### Add classification columns
ss.combined$output$variable <-
  merge(ss.combined$output$variable,
        classifiedVars$output$dat,
        by="uniqueVarID", all.x=TRUE, all.y=FALSE);

### Temporarily set classification by classifyer 'P' to final classification
ss.combined$output$variable$classification <- ss.combined$output$variable$classification_P;

### Add variable (operationalisation) information for the one variable
### to the associations
ss.combined$output$association <-
  addVariableInfo(variablesDataframe = ss.combined$output$variable,
                  dataframe = ss.combined$output$association,
                  variableNameColumn = "variable",
                  variableNameColumnInDF = "variable1",
                  newVarPrefix = "var1_",
                  variableToAdd = 'classification');

### Add variable (operationalisation) information for the other variable
### to the associations
ss.combined$output$association <-
  addVariableInfo(variablesDataframe = ss.combined$output$variable,
                  dataframe = ss.combined$output$association,
                  variableNameColumn = "variable",
                  variableNameColumnInDF = "variable2",
                  newVarPrefix = "var2_",
                  variableToAdd = 'classification');

###########################################################################
### Export the full variable, univariate, and association tables
###########################################################################

write.table(ss.combined$output$variable,
            file.path(extractionWorkingPath, 'variables.tsv'),
            sep="\t", row.names=FALSE);
write.table(ss.combined$output$univariate,
            file.path(extractionWorkingPath, 'univariate.tsv'),
            sep="\t", row.names=FALSE);
write.table(ss.combined$output$association,
            file.path(extractionWorkingPath, 'associations.tsv'),
            sep="\t", row.names=FALSE);

###########################################################################
### Conduct the meta-analyses
###########################################################################

### Store the dependent variables and predictors
dependentVariables <- unique(ss.combined$output$variable$dependent);

predictors <- unique(ss.combined$output$variable$classification);

nonpredictors <- c('behavior', 'intention', 'demographic', 'irrelevant',
                   'peripheral', 'pending', 'external factor');

### Remove behavior and intentions from the list of predictors
predictors <- na.omit(predictors[!predictors %IN% nonpredictors]);

### We won't process variables where the psytype is 'none'
predictorPsytypes <- unique(ss.combined$output$association$pred_psytype);
dependentPsytypes <- unique(ss.combined$output$association$dep_psytype);
predictorPsytypes <- predictorPsytypes[predictorPsytypes != 'none'];
dependentPsytypes <- dependentPsytypes[dependentPsytypes != 'none'];


###########################################################################
### Only analyse behavior for now
dependentPsytypes <- 'behavior';

### Set the predictor and dependent variables for convenience
ss.combined$output$association$pred_name <-
  ifelse(ss.combined$output$association$var1_psytype %IN% predictorPsytypes,
         ss.combined$output$association$var1_classification,
         ifelse(ss.combined$output$association$var2_psytype %IN% predictorPsytypes,
                ss.combined$output$association$var2_classification,
                'none'));
ss.combined$output$association$dep_name <-
  ifelse(ss.combined$output$association$var1_psytype %IN% dependentPsytypes,
         ss.combined$output$association$var1_classification,
         ifelse(ss.combined$output$association$var2_psytype %IN% dependentPsytypes,
                ss.combined$output$association$var2_classification,
                'none'));

### Verify
ss.combined$output$association[, c("pred_name", "dep_name", "var1_classification", "var2_classification")];

### We conduct meta-analyses per behavior (initiation and cessation),
dataframes <- list();
rmaOutput <- list();
rmaIndex <- vector();
for (currentDepVar in dependentVariables) {
  cat0('\n', repeatStr('#', 80), "\n", repeatStr('#', 80), "\n");
  cat0("######### Commencing series of meta-analyses for '",
       currentDepVar, "'.");
  cat0('\n', repeatStr('#', 80), "\n", repeatStr('#', 80), "\n");
  dataframes[[currentDepVar]] <- list();
  ### Per 'psytype' of that dependent variable
  for (currentDepPsytype in dependentPsytypes) {
    cat0('\n', repeatStr('#', 80), "\n");
    cat0("###### Currently examining '", currentDepVar, "' measured ",
         "as ", currentDepPsytype, ".");
    cat0('\n', repeatStr('#', 80), "\n");
    dataframes[[currentDepVar]][[currentDepPsytype]] <- list();
    ### Per 'psytype' of the predictors

    #######################################################################
    ### For now, do not distinguish beliefs and determinants
    #for (currentPredPsytype in predictorPsytypes) {
      currentPredPsytype <- 'both';
    #######################################################################

      dataframes[[currentDepVar]][[currentDepPsytype]][[currentPredPsytype]] <- list();
      ### And separately for each 'classification' of predictors
      for (currentPredVar in predictors) {

        applicableRows <-
          isTrue(ss.combined$output$association$pred_name == currentPredVar) &
          #isTrue(ss.combined$output$association$pred_psytype == currentPredPsytype) &
          isTrue(ss.combined$output$association$dependent == currentDepVar) &
          isTrue(ss.combined$output$association$dep_psytype == currentDepPsytype);

        validRows <- applicableRows &
          !is.na(ss.combined$output$association$r_fam_es);

        cat0("### '", currentPredVar, "' (as ",
             currentPredPsytype, ") predicting '",
             currentDepVar, "' (as ",
             currentDepPsytype, ").\n");
        cat0("### ", sum(applicableRows), " rows applicable; ",
             sum(validRows), " rows have valid effect sizes.\n");

        ### Store dataframe for this meta-analysis
        tmpDataframe <-
          dataframes[[currentDepVar]][[currentDepPsytype]][[currentPredPsytype]][[currentPredVar]] <-
          ss.combined$output$association[validRows, ];

        if (nrow(tmpDataframe) > 0) {
          cat0("### Number of rows with valid effect size is ",
               nrow(tmpDataframe),
               ", so commencing meta-analysis.\n\n");
          rmaIndex[length(rmaIndex)+1] <-
            paste0("'", currentPredVar, "' (as ",
                   currentPredPsytype, ") predicting '",
                   currentDepVar, "' (as ",
                   currentDepPsytype, "), k=", nrow(tmpDataframe));
          rmaOutput[[length(rmaOutput)+1]] <-
            rma(data=tmpDataframe,
                ri=tmpDataframe$r_fam_es,
                ni=tmpDataframe$n,
                measure='COR');
        } else {
          cat0("### No valid effect sizes, so not conducting a meta-analysis.\n\n");
        }
      }
    #}
  }
}

cat0('', repeatStr('#', 80),
     paste0("### Conducted ", length(rmaIndex),
            " meta-analyses, specifically:"), repeatStr('#', 80),
     rmaIndex, sep="\n");

names(rmaOutput) <- rmaIndex;

resultsDataframe <- ldply(rmaOutput, function(x) {
    return(data.frame(estimate = x$b,
                      ci.lb = x$ci.lb,
                      ci.ub = x$ci.ub,
                      k = x$k,
                      p = x$pval));
  });

names(resultsDataframe)[names(resultsDataframe)=='.id'] <- "analysis";

initiationResults <- resultsDataframe[resultsDataframe$k>1 & grepl('initiation', rmaIndex),];
cessationResults <- resultsDataframe[resultsDataframe$k>1 & grepl('cessation', rmaIndex),];

initiationResults$analysis <- sub("'(.*)'.*'.*' \\(as (.*)\\).*", "\\1 predicting \\2", initiationResults$analysis);
cessationResults$analysis <- sub("'(.*)'.*'.*' \\(as (.*)\\).*", "\\1 predicting \\2", cessationResults$analysis);

### Some estimates are negative - that does not make sense, probably
### due to miscoded 'consistent' values. For now, just flip them
### here manually.

initiationResults <- adply(initiationResults, .margins=1, .id=NULL,
                           function(x) {
                             if ((x['p'] < .05) && x['estimate'] < 0) {
                               x['estimate'] <- -1 * x['estimate'];
                               tmp <- -1 * x['ci.lb'];
                               x['ci.lb'] <- -1 * x['ci.ub'];
                               x['ci.ub'] <- tmp;
                             }
                             return(x);
                           });

###########################################################################
### For now, only looking at behavior
###########################################################################
initiationResults$analysis <- sub("(.*) predicting behavior", "\\1", initiationResults$analysis);
cessationResults$analysis <- sub("(.*) predicting behavior", "\\1", cessationResults$analysis);

ggColors <- list(lightbg = c('background' = '#FFFFFF',
                             'very light blue' = '#e8f0f8',
                             'light blue, faded' = '#cadded',
                             'light blue, solid' = '#a4c4e1',
                             'mid blue' = '#2a5581',
                             'dark blue' = '#172f47',
                             'foreground' = '#000000'),
                 darkbg = c('background' = '#000000',
                            'very dark blue:' = '#002436',
                            'dark blue, faded:' = '#224569',
                            'dark blue, solid:' = '#3c79b8',
                            'mid blue:' = '#a7c7e8',
                            'light blue:' = '#f0f1f3',
                            'foreground' = '#FFFFFF'));

theme_greatergood <- function(colors = ggColors$lightbg,
                              base_size = 12,
                              base_family = "",
                              ...) {
  bgColor <- colors[1];
  almostBgColor <- colors[2];
  subtleColor <- colors[3];
  primaryColor <- colors[length(colors)];
  secondaryColor <- colors[length(colors)-1];

  return(
  theme_classic(base_size = base_size, base_family = base_family) %+replace%
    theme(text = element_text(size=20, color=secondaryColor,
                              family="",
                              face="plain",
                              hjust=0,
                              vjust=0.5,
                              angle=0,
                              lineheight=1,
                              margin = margin(),
                              debug = FALSE),
          axis.text = element_text(hjust=.5, color=primaryColor),
          axis.title = element_blank(),
          axis.line = element_line(color=subtleColor, size=2),
          axis.ticks = element_line(color=subtleColor, size=1),
          axis.ticks.x = element_line(color=subtleColor, size=1),
          panel.background = element_rect(fill=bgColor),
          panel.grid.major = element_line(color=almostBgColor, size=1),
          panel.grid.major.y = element_blank(),
          plot.background = element_rect(fill=bgColor),
          legend.background = element_rect(fill=bgColor),
          legend.text = element_text(color=primaryColor)));
}

### Order plots
ciPlots <- list();
for (drawPlot in c('initiationResults', 'cessationResults')) {
  ciPlots[[drawPlot]] <- ggplot(get(drawPlot), aes(x=analysis,
                                                   y=estimate,
                                                   ymin=ci.lb,
                                                   ymax=ci.ub,
                                                   size=k)) +
    coord_flip() +
    theme_greatergood(colors = ggColors$darkbg) +
    geom_hline(yintercept=0, color=ggColors$darkbg[4], size=1.5) +
    geom_errorbar(width=nrow(get(drawPlot))/30, size=1.5,
                  color=ggColors$darkbg[5]) +
    geom_point(colour=ggColors$darkbg[6], fill=ggColors$darkbg[2]) +
    scale_size(range = c(3, 10));
  ggsave(plot = ciPlots[[drawPlot]],
         filename = paste0(drawPlot, '.png'),
         path = extractionWorkingPath,
         dpi = 300,
         width = 20,
         height = 16,
         unit="cm");
}

### Order plots
ciPlotsLight <- list();
for (drawPlot in c('initiationResults', 'cessationResults')) {
  ciPlotsLight[[drawPlot]] <- ggplot(get(drawPlot), aes(x=analysis,
                                                   y=estimate,
                                                   ymin=ci.lb,
                                                   ymax=ci.ub,
                                                   size=k)) +
    coord_flip() +
    theme_greatergood(colors = ggColors$lightbg) +
    geom_hline(yintercept=0, color=ggColors$lightbg[4], size=1.5) +
    geom_errorbar(width=nrow(get(drawPlot))/30, size=1.5,
                  color=ggColors$lightbg[5]) +
    geom_point(colour=ggColors$lightbg[6], fill=ggColors$lightbg[2]) +
    scale_size(range = c(3, 10));
  ggsave(plot = ciPlotsLight[[drawPlot]],
         filename = paste0(drawPlot, ' - light.png'),
         path = extractionWorkingPath,
         dpi = 300,
         width = 20,
         height = 16,
         unit="cm");
}


ciPlots;


###########################################################################
### Get some basic descriptives about the extracted information
###########################################################################

### Number of studies from which data was extracted
length(unique(ss.combined$output$variable$study))

### Number of extracted variables
nrow(ss.combined$output$variable);

### Variables per study
varsPerStudy <- count(ss.combined$output$variable$study);
varsPerStudy <- varsPerStudy[order(varsPerStudy$freq, decreasing=TRUE), ];
varsPerStudy$id <- 1:nrow(varsPerStudy);
summary(varsPerStudy$freq);
ggplot(varsPerStudy, aes(y=freq, x=id)) +
  geom_bar(color=ggColors$darkbg[6],
           fill=ggColors$darkbg[6],
           stat='identity',
           aes(width=.75)) +
  theme_greatergood(colors = ggColors$darkbg);
ggsave(filename = 'variablesPerStudy.png',
       path = extractionWorkingPath,
       dpi = 300,
       width = 20,
       height = 16,
       unit="cm");



### Number of extracted classified variables
nrow(ss.combined$output$association);

### Associations per study
AssocPerStudy <- count(ss.combined$output$association$study);
AssocPerStudy <- AssocPerStudy[order(AssocPerStudy$freq, decreasing=TRUE), ];
AssocPerStudy$id <- 1:nrow(AssocPerStudy);
summary(AssocPerStudy$freq);
ggplot(AssocPerStudy, aes(y=freq, x=id)) +
  geom_bar(color=ggColors$darkbg[6],
           fill=ggColors$darkbg[6],
           stat='identity',
           aes(width=.75)) +
  theme_greatergood(colors = ggColors$darkbg);
ggsave(filename = 'associationsPerStudy.png',
       path = extractionWorkingPath,
       dpi = 300,
       width = 20,
       height = 16,
       unit="cm");




### Number of different variable classifications
length(unique(ss.combined$output$variable$classification));

### Associations per study
AssocPerStudy <- count(ss.combined$output$association$study);
AssocPerStudy <- AssocPerStudy[order(AssocPerStudy$freq, decreasing=TRUE), ];
AssocPerStudy$id <- 1:nrow(AssocPerStudy);
summary(AssocPerStudy$freq);
ggplot(AssocPerStudy, aes(y=freq, x=id)) +
  geom_bar(color=ggColors$darkbg[6],
           fill=ggColors$darkbg[6],
           stat='identity',
           aes(width=.75)) +
  theme_greatergood(colors = ggColors$darkbg);
ggsave(filename = 'associationsPerStudy.png',
       path = extractionWorkingPath,
       dpi = 300,
       width = 20,
       height = 16,
       unit="cm");

