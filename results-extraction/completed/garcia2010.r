##########################################################################
###
### R file for the Smoking Synthesis systematic review.
### See http://smokingsynthesis.eu for more information.
###
### INSTRUCTIONS:
### Work through the sections below, and complete the information. There
### are three types of information:
###   - Text:   this can be any content; has to be in between double quotes.
###   - Number: Any number; cannot contain any other  characters, should not be quoted.
###   - NA:     For missing information, just use NA, always without quotes (just
###             the two characters NA).
###   – Vector: Lists of either numbers of text elements; see the instructions!
###
##########################################################################

res <- list();             ### Generate object to store data
res$sample <- list();      ### Generate object to store sample information
res$subsample <- list();   ### Generate object to store subsamples
res$variable <- list();    ### Generate object to store variables
res$univariate <- list();  ### Generate object to store univariate data
res$association <- list(); ### Generate object to store association data
class(res) <- "sysRevExtractionObject"; ### Set class of object

##########################################################################
### BIBTEX KEY
##########################################################################

### Store the Bibtex key as text
res$bibTexKey <- "Garcia2010";

##########################################################################
##########################################################################
###
###  GENERAL INFORMATION / COMMENTS ON THIS STUDY:
###
res$generalComments <- "

IMPORTANT:
SubsampleComparison=true!
quitters/unsuccessful quitters

";### Make sure this line starts with a double quote and a semicolon (";)
##########################################################################
##########################################################################


##########################################################################
### SAMPLE DESCRIPTION
##########################################################################

### Description of sample, in text (e.g. "Single mothers" or "West-Coast participants", etc)
res$sample$description <- "Filipino US immigrant unsuccessful quitters";

### Description of geography of sample, in text
res$sample$geography <- "Los Angeles County";

### Sample size, as a number
res$sample$size <- 81+103;

### SUBSAMPLES - REMOVE THIS SECTION IF THERE ARE NO SUBSAMPLES

### Indicate which information you want to override. Specify the subsample
### you're providing new data for in the single quotes between the double
### brackets; make sure the spelling is exactly identical to the list above.
### Use NA to specify data that should not be overridden.

res$subsample[[length(res$subsample) + 1]] <- list( ### Create object for this subsample
  name = "Unsuccessful quitters",           ### E.g. "Single mothers", "West-Coast
  description = NA,                                 ### participants", or "Caucasian teenagers"
  geography = NA,
  size = 81
);
res$subsample[[length(res$subsample) + 1]] <- list( ### Create object for this subsample
  name = "Successful quitters",           ### E.g. "Single mothers", "West-Coast
  description = NA,                                 ### participants", or "Caucasian teenagers"
  geography = NA,
  size = 103
);
##########################################################################
### METHODOLOGICAL INFORMATION
##########################################################################

### Specify how the data was collected ("qualitative" or "quantitative")
res$datacollectionmethod <- "quantitative";

### Specify how many measurement moments the study has, as a number (of
### course, this will just be 1 for most studies)
res$measurementMoments <- 1;

### For each measurement moment, specify the number of days since the
### first measurement moment. This is a vector of days; e.g., for three
### measurement moments, each a month apart, this would be:
### res$measurementTimes <- c(0, 30, 60);
res$measurementTimes <- c(0);

### For each measurement moment, specify the sample size.
### If there's only one measurement moment, leave it like this
### and the general sample size will automatically be inserted.
### If sample sizes differ, add subsequent sample sizes like this:
###
###   res$measurementSampleSizes <- c(res$sample$size, 400, 300);
###
### (for an example where the sample size for the second wave is
###  400, and for the third wave, 300 (and for the first wave,
###  taken from the general sample size))
res$measurementSampleSizes <- res$sample$size;

##########################################################################
### ASSOCIATIONS: CORRELATIONS, T-TESTS, CHI-SQUARES, ETC
##########################################################################

  
  res$association[[length(res$association) + 1]] <- list(
    variable1 = "Knowledge of health effects",     ### Name of first variable
    var1values = NA,                  ### Values of var 1 in this analysis (e.g. post-hoc)
    var1moment = 1,                   ### Measurement moment of var 1
    variable2 = "Successful quitting",     ### Name of second variable
    var2values = NA,                  ### Values of var 2 in this analysis (e.g. post-hoc)
    var2moment = 1,                   ### Measurement moment of var 2
    insignificanceOnly = TRUE,       ### Set to true if the paper only reports 'p > .05'
    n = NA,                           ### Number of participants in analysis
    subSampleComparison = TRUE,
    subSampleComparisonVar = 2,
    subSamples = c('Successful quitters',
                 'Unsuccessful quitters'),
    
    counter = FALSE,                  ### If TRUE (vs FALSE/NA), outcome inconsistent with hypothesis
    OR = 1.13,                          ### Odds ratio
    p = NA,                           ### P-value (if nothing else is available)
    covariates = 0,                   ### Number of covariates (for multivariate analyses)
    comment = NA                      ### Comment (e.g. calculation, page, etc)
  );
  
res$association[[length(res$association) + 1]] <- list(
    variable1 = "Positive beliefs on physical and social consequences of smoking",     ### Name of first variable
    var1values = NA,                  ### Values of var 1 in this analysis (e.g. post-hoc)
    var1moment = 1,                   ### Measurement moment of var 1
    variable2 = "Successful quitting",     ### Name of second variable
    var2values = NA,                  ### Values of var 2 in this analysis (e.g. post-hoc)
    var2moment = 1,                   ### Measurement moment of var 2
    insignificanceOnly = FALSE,       ### Set to true if the paper only reports 'p > .05'
    n = NA,                           ### Number of participants in analysis
    subSampleComparison = TRUE,
    subSampleComparisonVar = 2,
    subSamples = c('Successful quitters',
                 'Unsuccessful quitters'),
    counter = FALSE,                  ### If TRUE (vs FALSE/NA), outcome inconsistent with hypothesis
    OR = .69,                          ### Odds ratio
    p = NA,                           ### P-value (if nothing else is available)
    covariates = 0,                   ### Number of covariates (for multivariate analyses)
    comment = NA                      ### Comment (e.g. calculation, page, etc)
);


res$association[[length(res$association) + 1]] <- list(
    variable1 = "Household smoking prohibited",     ### Name of first variable
    var1values = NA,                  ### Values of var 1 in this analysis (e.g. post-hoc)
    var1moment = 1,                   ### Measurement moment of var 1
    variable2 = "Successful quitting",     ### Name of second variable
    var2values = NA,                  ### Values of var 2 in this analysis (e.g. post-hoc)
    var2moment = 1,                   ### Measurement moment of var 2
    insignificanceOnly = FALSE,       ### Set to true if the paper only reports 'p > .05'
    n = NA,                           ### Number of participants in analysis
    subSampleComparison = TRUE,
    subSampleComparisonVar = 2,
    subSamples = c('Successful quitters',
                 'Unsuccessful quitters'),
    counter = FALSE,                  ### If TRUE (vs FALSE/NA), outcome inconsistent with hypothesis
    OR = 3.82,                          ### Odds ratio
    p = NA,                           ### P-value (if nothing else is available)
    covariates = 0,                   ### Number of covariates (for multivariate analyses)
    comment = NA                      ### Comment (e.g. calculation, page, etc)
);
    
##########################################################################

##########################################################################
### UNIVARIATE RESULTS: PERCENTAGES, MEANS, ETC
##########################################################################

res$univariate[[length(res$univariate) + 1]] <- list(
  variable = "Knowledge of health effects",       ### Name of variable this result pertains to
  subsample = "Unsuccessful quitters",                   ### Name of relevant subsample, or NA
  moment = 1,                       ### Measurement moment this datapoint pertains to
  mean = 7.2,                        ### Mean or NA
  sd = 1.1,                          ### Standard deviation, or NA
  qualitative = NA,                 ### Description (qualitative research)
  comment = "retrieved from Table 1. p. 261"                     ### Comment or NA
);

res$univariate[[length(res$univariate) + 1]] <- list(
  variable = "Knowledge of health effects",       ### Name of variable this result pertains to
  subsample = "Successful quitters",                   ### Name of relevant subsample, or NA
  moment = 1,                       ### Measurement moment this datapoint pertains to
  mean = 7.5,                        ### Mean or NA
  sd = .9,                          ### Standard deviation, or NA
  qualitative = NA,                 ### Description (qualitative research)
  comment = "retrieved from Table 1. p. 261"                      ### Comment or NA
);


res$univariate[[length(res$univariate) + 1]] <- list(
  variable = "Positive beliefs on physical and social consequences of smoking",       ### Name of variable this result pertains to
  subsample = "Unsuccessful quitters",                   ### Name of relevant subsample, or NA
  moment = 1,                       ### Measurement moment this datapoint pertains to
  mean = 5.2,                        ### Mean or NA
  sd = 3.1,                          ### Standard deviation, or NA
  qualitative = NA,                 ### Description (qualitative research)
  comment = "retrieved from Table 1. p 261 more positive beliefs makes you less likely to quit"                      ### Comment or NA
);

res$univariate[[length(res$univariate) + 1]] <- list(
  variable = "Positive beliefs on physical and social consequences of smoking",       ### Name of variable this result pertains to
  subsample = "Successful quitters",                   ### Name of relevant subsample, or NA
  moment = 1,                       ### Measurement moment this datapoint pertains to
  mean = 2.5,                       ### Mean or NA
  sd = 2.6,                          ### Standard deviation, or NA
  qualitative = NA,                 ### Description (qualitative research)
  comment = "retrieved from Table 1., p. 261 more positive beliefs makes you less likely to quit"                      ### Comment or NA
);


res$univariate[[length(res$univariate) + 1]] <- list(
  variable = "Household smoking prohibited",       ### Name of variable this result pertains to
  subsample = "Unsuccessful quitters",                   ### Name of relevant subsample, or NA
  moment = 1,                       ### Measurement moment this datapoint pertains to
  percentage = 29.6,   ### Standard deviation, or NA
  qualitative = NA,                 ### Description (qualitative research)
  comment = "retrieved from Table 1. p. 261"                      ### Comment or NA
);


res$univariate[[length(res$univariate) + 1]] <- list(
  variable = "Household smoking prohibited",       ### Name of variable this result pertains to
  subsample = "Successful quitters",                   ### Name of relevant subsample, or NA
  moment = 1,                       ### Measurement moment this datapoint pertains to
  percentage = 61.2,  ### Standard deviation, or NA
  qualitative = NA,                 ### Description (qualitative research)
  comment = "retrieved from Table 1. p. 261"                      ### Comment or NA
);

##########################################################################


##########################################################################
### MEASUREMENTS AND MANIPULATIONS: THE VARIABLES IN THE STUDY
##########################################################################


res$variable[[length(res$variable) + 1]] <- list(
  variable = "Knowledge of health effects",             ### Replace 'example' with variable name
  moment = 1,                       ### moment this variable was measured/manipulated
  type = "aggregate",                ### "question", "aggregate", or "manipulation"
  datatype = "numeric",             ### "numeric", "logical", "nominal", "ordinal", or "text"
  values = NA,                      ### Possible values; NA or a vector, e.g. c(1, 2, 3)
  labels = NA,                      ### Labels for the values; NA or e.g. c("no", "maybe", "sometimes")
  psytype = "belief",             ### "demographic", "belief", "determinant", "proxy", "behavior"
  dependent = "cessation",         ### "initiation", "cessation"
  direction = "consistent",                   ### "consistent" (same direction as dependent), "inconsistent"
  parent = NA,                      ### Name of parent variable into which this one is aggregated
  description = NA,                 ### Description, as text; or NA
  comment = "Details of items and scale unknown, reported in other paper. Presumably numeric."                      ### Comment, as text; or NA
);

res$variable[[length(res$variable) + 1]] <- list(
  variable = "Positive beliefs on physical and social consequences of smoking",             ### Replace 'example' with variable name
  moment = 1,                       ### moment this variable was measured/manipulated
  type = "aggregate",                ### "question", "aggregate", or "manipulation"
  datatype = "numeric",             ### "numeric", "logical", "nominal", "ordinal", or "text"
  values = NA,                      ### Possible values; NA or a vector, e.g. c(1, 2, 3)
  labels = NA,                      ### Labels for the values; NA or e.g. c("no", "maybe", "sometimes")
  psytype = "belief",             ### "demographic", "belief", "determinant", "proxy", "behavior"
  dependent = "cessation",         ### "initiation", "cessation"
  direction = "inconsistent",                   ### "consistent" (same direction as dependent), "inconsistent"
  parent = NA,                      ### Name of parent variable into which this one is aggregated
  description = NA,                 ### Description, as text; or NA
  comment = "A high knowledge index score indicates a high level of knowledge on the health effects
            of smoking, while a high belief index score indicates more positive belief toward the physical 
            and social benefits of smoking. Details regarding knowledge and beliefs items have been reported 
            previously [8]. See Measures, bottom left p. 260"                      ### Comment, as text; or NA
);


res$variable[[length(res$variable) + 1]] <- list(
  variable = "Household smoking prohibited",             ### Replace 'example' with variable name
  moment = 1,                       ### moment this variable was measured/manipulated
  type = "question",                ### "question", "aggregate", or "manipulation"
  datatype = "logical",             ### "numeric", "logical", "nominal", "ordinal", or "text"
  psytype = "proxy",             ### "demographic", "belief", "determinant", "proxy", "behavior"
  dependent = "cessation",         ### "initiation", "cessation"
  direction = "consistent",                   ### "consistent" (same direction as dependent), "inconsistent"
  parent = NA,                      ### Name of parent variable into which this one is aggregated
  description = NA,                 ### Description, as text; or NA
  comment = NA                      ### Comment, as text; or NA
);

res$variable[[length(res$variable) + 1]] <- list(
  variable = "Successful quitting",             ### Replace 'example' with variable name
  moment = 1,                       ### moment this variable was measured/manipulated
  type = "question",                ### "question", "aggregate", or "manipulation"
  datatype = "logical",             ### "numeric", "logical", "nominal", "ordinal", or "text"
  psytype = "proxy",             ### "demographic", "belief", "determinant", "proxy", "behavior"
  dependent = "cessation",         ### "initiation", "cessation"
  direction = "consistent",                   ### "consistent" (same direction as dependent), "inconsistent"
  parent = NA,                      ### Name of parent variable into which this one is aggregated
  description = NA,                 ### Description, as text; or NA
  comment = NA                      ### Comment, as text; or NA
);

##########################################################################



##########################################################################
### END
##########################################################################

### Some verification functions; note that these need the 'userfriendlyscience'
### package to be installed and loaded (with 'require').

### This function checks whether for all variables that are used, the
### operationalisation is also extracted, and vice versa:
extractionVerification(res);

### For showing the entire dataframes
#print.data.frame(extractionVerification(res)$dat$extractedVariables)
#print.data.frame(extractionVerification(res)$dat$extractedUnivariate)
#print.data.frame(extractionVerification(res)$dat$extractedAssociations)
