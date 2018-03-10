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
res$bibTexKey <- "willemsen1996";

##########################################################################
##########################################################################
###
###  GENERAL INFORMATION / COMMENTS ON THIS STUDY:
###
res$generalComments <- "

You can enter comments here.

";### Make sure this line starts with a double quote and a semicolon (";)
##########################################################################
##########################################################################


##########################################################################
### SAMPLE DESCRIPTION
##########################################################################

### Description of sample, in text (e.g. "Single mothers" or "West-Coast participants", etc)
res$sample$description <- "adult smokers";

### Description of geography of sample, in text
res$sample$geography <- "The Netherlands";

###Description of one or multiple unusual circumstances involving sample, 
###e.g. "patients" or "intervention", any major criterium that
###doesn't adhere to the idea of 'population as usual'. In text or ''.
res$sample$selectedSample <- c('');

### Sample size, as a number
res$sample$size <- 1;

### SUBSAMPLES - REMOVE THIS SECTION IF THERE ARE NO SUBSAMPLES

### Indicate which information you want to override. Specify the subsample
### you're providing new data for in the single quotes between the double
### brackets; make sure the spelling is exactly identical to the list above.
### Use NA to specify data that should not be overridden.

##########################################################################
### METHODOLOGICAL INFORMATION
##########################################################################

### Specify how the data was collected ("qualitative" or "quantitative")
res$datacollectionmethod <- "quantitiative";

### Specify how many measurement moments the study has, as a number (of
### course, this will just be 1 for most studies)
res$measurementMoments <- 1;

### For each measurement moment, specify the number of days since the
### first measurement moment. This is a vector of days; e.g., for three
### measurement moments, each a month apart, this would be:
### res$measurementTimes <- c(0, 30, 60);
res$measurementTimes <- c(0);


##########################################################################
### ASSOCIATIONS: CORRELATIONS, T-TESTS, CHI-SQUARES, ETC
##########################################################################

res$association[[length(res$association) + 1]] <- list(
  variable1 = "attitude",     ### Name of first variable
  var1values = NA,                  ### Values of var 1 in this analysis (e.g. post-hoc)
  var1moment = 1,                   ### Measurement moment of var 1
  variable2 = "intention to quit",     ### Name of second variable
  var2values = NA,                  ### Values of var 2 in this analysis (e.g. post-hoc)
  var2moment = 1,                   ### Measurement moment of var 2
  insignificanceOnly = FALSE,       ### Set to true if the paper only reports 'p > .05'
  r = .43,                           ### Pearson correlation
  comment = "retrieved from table 2"                      ### Comment (e.g. calculation, page, etc)
);

res$association[[length(res$association) + 1]] <- list(
  variable1 = "social pressure at work",     ### Name of first variable
  var1values = NA,                  ### Values of var 1 in this analysis (e.g. post-hoc)
  var1moment = 1,                   ### Measurement moment of var 1
  variable2 = "intention to quit",     ### Name of second variable
  var2values = NA,                  ### Values of var 2 in this analysis (e.g. post-hoc)
  var2moment = 1,                   ### Measurement moment of var 2
  insignificanceOnly = FALSE,       ### Set to true if the paper only reports 'p > .05'
  r = .16,                           ### Pearson correlation
  comment = "retrieved from table 2"                      ### Comment (e.g. calculation, page, etc)
);


res$association[[length(res$association) + 1]] <- list(
  variable1 = "social pressure outside work",     ### Name of first variable
  var1values = NA,                  ### Values of var 1 in this analysis (e.g. post-hoc)
  var1moment = 1,                   ### Measurement moment of var 1
  variable2 = "intention to quit",     ### Name of second variable
  var2values = NA,                  ### Values of var 2 in this analysis (e.g. post-hoc)
  var2moment = 1,                   ### Measurement moment of var 2
  insignificanceOnly = FALSE,       ### Set to true if the paper only reports 'p > .05'
  r = .28,                           ### Pearson correlation
  comment = "retrieved from table 2"                      ### Comment (e.g. calculation, page, etc)
);


res$association[[length(res$association) + 1]] <- list(
  variable1 = "smoking behavior at work",     ### Name of first variable
  var1values = NA,                  ### Values of var 1 in this analysis (e.g. post-hoc)
  var1moment = 1,                   ### Measurement moment of var 1
  variable2 = "intention to quit",     ### Name of second variable
  var2values = NA,                  ### Values of var 2 in this analysis (e.g. post-hoc)
  var2moment = 1,                   ### Measurement moment of var 2
  insignificanceOnly = FALSE,       ### Set to true if the paper only reports 'p > .05'
  r = -.01, #ns                           ### Pearson correlation
  comment = "retrieved from table 2"                      ### Comment (e.g. calculation, page, etc)
);


res$association[[length(res$association) + 1]] <- list(
  variable1 = "smoking behavior outside work",     ### Name of first variable
  var1values = NA,                  ### Values of var 1 in this analysis (e.g. post-hoc)
  var1moment = 1,                   ### Measurement moment of var 1
  variable2 = "intention to quit",     ### Name of second variable
  var2values = NA,                  ### Values of var 2 in this analysis (e.g. post-hoc)
  var2moment = 1,                   ### Measurement moment of var 2
  insignificanceOnly = FALSE,       ### Set to true if the paper only reports 'p > .05'
  r = .00, #ns                         ### Pearson correlation
  comment = "retrieved from table 2"                      ### Comment (e.g. calculation, page, etc)
);


res$association[[length(res$association) + 1]] <- list(
  variable1 = "self-efficacy",     ### Name of first variable
  var1values = NA,                  ### Values of var 1 in this analysis (e.g. post-hoc)
  var1moment = 1,                   ### Measurement moment of var 1
  variable2 = "intention to quit",     ### Name of second variable
  var2values = NA,                  ### Values of var 2 in this analysis (e.g. post-hoc)
  var2moment = 1,                   ### Measurement moment of var 2
  insignificanceOnly = FALSE,       ### Set to true if the paper only reports 'p > .05'
  r = .09,                           ### Pearson correlation
  comment = "retrieved from table 2"                      ### Comment (e.g. calculation, page, etc)
);


res$association[[length(res$association) + 1]] <- list(
  variable1 = "past smoking behavior",     ### Name of first variable
  var1values = NA,                  ### Values of var 1 in this analysis (e.g. post-hoc)
  var1moment = 1,                   ### Measurement moment of var 1
  variable2 = "intention to quit",     ### Name of second variable
  var2values = NA,                  ### Values of var 2 in this analysis (e.g. post-hoc)
  var2moment = 1,                   ### Measurement moment of var 2
  insignificanceOnly = FALSE,       ### Set to true if the paper only reports 'p > .05'
  r = .38,                           ### Pearson correlation
  comment = "retrieved from table 2"                      ### Comment (e.g. calculation, page, etc)
);


res$association[[length(res$association) + 1]] <- list(
  variable1 = "number of daily cigarettes",     ### Name of first variable
  var1values = NA,                  ### Values of var 1 in this analysis (e.g. post-hoc)
  var1moment = 1,                   ### Measurement moment of var 1
  variable2 = "intention to quit",     ### Name of second variable
  var2values = NA,                  ### Values of var 2 in this analysis (e.g. post-hoc)
  var2moment = 1,                   ### Measurement moment of var 2
  insignificanceOnly = FALSE,       ### Set to true if the paper only reports 'p > .05'
  r = -.04, #ns                           ### Pearson correlation
  comment = "retrieved from table 2"                      ### Comment (e.g. calculation, page, etc)
);

# res$association[[length(res$association) + 1]] <- list(
#   variable1 = "education level",     ### Name of first variable
#   var1values = NA,                  ### Values of var 1 in this analysis (e.g. post-hoc)
#   var1moment = 1,                   ### Measurement moment of var 1
#   variable2 = "intention to quit",     ### Name of second variable
#   var2values = NA,                  ### Values of var 2 in this analysis (e.g. post-hoc)
#   var2moment = 1,                   ### Measurement moment of var 2
#   insignificanceOnly = FALSE,       ### Set to true if the paper only reports 'p > .05'
#   r = -.01,                           ### Pearson correlation
#   comment = "retrieved from table 2"                      ### Comment (e.g. calculation, page, etc)
# );


res$association[[length(res$association) + 1]] <- list(
  variable1 = "tolerance toward smoking",     ### Name of first variable
  var1values = NA,                  ### Values of var 1 in this analysis (e.g. post-hoc)
  var1moment = 1,                   ### Measurement moment of var 1
  variable2 = "intention to quit",     ### Name of second variable
  var2values = NA,                  ### Values of var 2 in this analysis (e.g. post-hoc)
  var2moment = 1,                   ### Measurement moment of var 2
  insignificanceOnly = FALSE,       ### Set to true if the paper only reports 'p > .05'
  r = .04,#ns                           ### Pearson correlation
  comment = "retrieved from table 2"                      ### Comment (e.g. calculation, page, etc)
);




##########################################################################


##########################################################################
### UNIVARIATE RESULTS: PERCENTAGES, MEANS, ETC
##########################################################################


##########################################################################
###
### GENERATE TEMPLATE OF VARIABLE MEASUREMENTS AND MANIPULATIONS  - FEEL LIKE BATMAN.
###
##########################################################################
# generateOperationalisationTemplates(object=res,
#                                     defaultOverrides =
#                                       list(moment = 1,
#                                            type = '"aggregate"',
#                                            datatype = '"numeric"',
#                                            psytype = '"belief"',
#                                            dependent='"cessation"',
#                                            direction = '"consistent"',
#                                            comment = '"retrieved from pages 196/197 under the heading Quesstionnaire"'));
# 

###########################################################################
### MEASUREMENTS AND MANIPULATIONS: THE VARIABLES IN THE STUDY
###########################################################################

res$variable[[length(res$variable) + 1]] <- list(
  variable = "attitude",
  moment = 1,                                                                ### moment this variable was measured/manipulated
  type = "aggregate",                                                        ### "question", "aggregate", or "manipulation"
  datatype = "numeric",                                                      ### "numeric", "logical", "nominal", "ordinal", or "text"
  psytype = "belief",                                                        ### "demographic", "belief", "determinant", "proxy", "behavior"
  dependent = "cessation",                                                   ### "initiation", "cessation"
  direction = "consistent",                                                  ### "consistent" (same direction as dependent), "inconsistent"
  parent = NA,                                                               ### Name of parent variable into which this one is aggregated
  description = NA,                                                          ### Description, as text; or NA
  comment = "retrieved from pages 196/197 under the heading Quesstionnaire"  ### Comment, as text; or NA
);

res$variable[[length(res$variable) + 1]] <- list(
  variable = "intention to quit",
  moment = 1,                                                                ### moment this variable was measured/manipulated
  type = "aggregate",                                                        ### "question", "aggregate", or "manipulation"
  datatype = "numeric",                                                      ### "numeric", "logical", "nominal", "ordinal", or "text"
  psytype = "belief",                                                        ### "demographic", "belief", "determinant", "proxy", "behavior"
  dependent = "cessation",                                                   ### "initiation", "cessation"
  direction = "consistent",                                                  ### "consistent" (same direction as dependent), "inconsistent"
  parent = NA,                                                               ### Name of parent variable into which this one is aggregated
  description = NA,                                                          ### Description, as text; or NA
  comment = "retrieved from pages 196/197 under the heading Quesstionnaire"  ### Comment, as text; or NA
);

res$variable[[length(res$variable) + 1]] <- list(
  variable = "social pressure at work",
  moment = 1,                                                                ### moment this variable was measured/manipulated
  type = "aggregate",                                                        ### "question", "aggregate", or "manipulation"
  datatype = "numeric",                                                      ### "numeric", "logical", "nominal", "ordinal", or "text"
  values = NA,                                                               ### Possible values; NA or a vector, e.g. c(1, 2, 3)
  labels = NA,                                                               ### Labels for the values; NA or e.g. c("no", "maybe", "sometimes")
  psytype = "belief",                                                        ### "demographic", "belief", "determinant", "proxy", "behavior"
  dependent = "cessation",                                                   ### "initiation", "cessation"
  direction = "consistent",                                                  ### "consistent" (same direction as dependent), "inconsistent"
  parent = NA,                                                               ### Name of parent variable into which this one is aggregated
  description = NA,                                                          ### Description, as text; or NA
  comment = "retrieved from pages 196/197 under the heading Quesstionnaire"  ### Comment, as text; or NA
);

res$variable[[length(res$variable) + 1]] <- list(
  variable = "social pressure outside work",
  moment = 1,                                                                ### moment this variable was measured/manipulated
  type = "aggregate",                                                        ### "question", "aggregate", or "manipulation"
  datatype = "numeric",                                                      ### "numeric", "logical", "nominal", "ordinal", or "text"
  values = NA,                                                               ### Possible values; NA or a vector, e.g. c(1, 2, 3)
  labels = NA,                                                               ### Labels for the values; NA or e.g. c("no", "maybe", "sometimes")
  psytype = "belief",                                                        ### "demographic", "belief", "determinant", "proxy", "behavior"
  dependent = "cessation",                                                   ### "initiation", "cessation"
  direction = "consistent",                                                  ### "consistent" (same direction as dependent), "inconsistent"
  parent = NA,                                                               ### Name of parent variable into which this one is aggregated
  description = NA,                                                          ### Description, as text; or NA
  comment = "retrieved from pages 196/197 under the heading Quesstionnaire"  ### Comment, as text; or NA
);

res$variable[[length(res$variable) + 1]] <- list(
  variable = "smoking behavior at work",
  moment = 1,                                                                ### moment this variable was measured/manipulated
  type = "question",                                                        ### "question", "aggregate", or "manipulation"
  datatype = "numeric",                                                      ### "numeric", "logical", "nominal", "ordinal", or "text"
  values = NA,                                                               ### Possible values; NA or a vector, e.g. c(1, 2, 3)
  labels = NA,                                                               ### Labels for the values; NA or e.g. c("no", "maybe", "sometimes")
  psytype = "belief",                                                        ### "demographic", "belief", "determinant", "proxy", "behavior"
  dependent = "cessation",                                                   ### "initiation", "cessation"
  direction = "consistent",                                                  ### "consistent" (same direction as dependent), "inconsistent"
  parent = NA,                                                               ### Name of parent variable into which this one is aggregated
  description = NA,                                                          ### Description, as text; or NA
  comment = "retrieved from pages 196/197 under the heading Quesstionnaire"  ### Comment, as text; or NA
);

res$variable[[length(res$variable) + 1]] <- list(
  variable = "smoking behavior outside work",
  moment = 1,                                                                ### moment this variable was measured/manipulated
  type = "aggregate",                                                        ### "question", "aggregate", or "manipulation"
  datatype = "numeric",                                                      ### "numeric", "logical", "nominal", "ordinal", or "text"
  values = NA,                                                               ### Possible values; NA or a vector, e.g. c(1, 2, 3)
  labels = NA,                                                               ### Labels for the values; NA or e.g. c("no", "maybe", "sometimes")
  psytype = "belief",                                                        ### "demographic", "belief", "determinant", "proxy", "behavior"
  dependent = "cessation",                                                   ### "initiation", "cessation"
  direction = "consistent",                                                  ### "consistent" (same direction as dependent), "inconsistent"
  parent = NA,                                                               ### Name of parent variable into which this one is aggregated
  description = NA,                                                          ### Description, as text; or NA
  comment = "retrieved from pages 196/197 under the heading Quesstionnaire"  ### Comment, as text; or NA
);

res$variable[[length(res$variable) + 1]] <- list(
  variable = "self-efficacy",
  moment = 1,                                                                ### moment this variable was measured/manipulated
  type = "aggregate",                                                        ### "question", "aggregate", or "manipulation"
  datatype = "numeric",                                                      ### "numeric", "logical", "nominal", "ordinal", or "text"
  values = NA,                                                               ### Possible values; NA or a vector, e.g. c(1, 2, 3)
  labels = NA,                                                               ### Labels for the values; NA or e.g. c("no", "maybe", "sometimes")
  psytype = "belief",                                                        ### "demographic", "belief", "determinant", "proxy", "behavior"
  dependent = "cessation",                                                   ### "initiation", "cessation"
  direction = "consistent",                                                  ### "consistent" (same direction as dependent), "inconsistent"
  parent = NA,                                                               ### Name of parent variable into which this one is aggregated
  description = NA,                                                          ### Description, as text; or NA
  comment = "retrieved from pages 196/197 under the heading Quesstionnaire"  ### Comment, as text; or NA
);

res$variable[[length(res$variable) + 1]] <- list(
  variable = "past smoking behavior",
  moment = 1,                                                                ### moment this variable was measured/manipulated
  type = "question",                                                        ### "question", "aggregate", or "manipulation"
  datatype = "numeric",                                                      ### "numeric", "logical", "nominal", "ordinal", or "text"
  values = NA,                                                               ### Possible values; NA or a vector, e.g. c(1, 2, 3)
  labels = NA,                                                               ### Labels for the values; NA or e.g. c("no", "maybe", "sometimes")
  psytype = "behavior",                                                        ### "demographic", "belief", "determinant", "proxy", "behavior"
  dependent = "cessation",                                                   ### "initiation", "cessation"
  direction = "consistent",                                                  ### "consistent" (same direction as dependent), "inconsistent"
  parent = NA,                                                               ### Name of parent variable into which this one is aggregated
  description = NA,                                                          ### Description, as text; or NA
  comment = "retrieved from pages 196/197 under the heading Quesstionnaire
  attained by asking how often participant has tried to quit"  ### Comment, as text; or NA
);

res$variable[[length(res$variable) + 1]] <- list(
  variable = "number of daily cigarettes",
  moment = 1,                                                                ### moment this variable was measured/manipulated
  type = "behavior",                                                        ### "question", "aggregate", or "manipulation"
  datatype = "numeric",                                                      ### "numeric", "logical", "nominal", "ordinal", or "text"
  values = NA,                                                               ### Possible values; NA or a vector, e.g. c(1, 2, 3)
  labels = NA,                                                               ### Labels for the values; NA or e.g. c("no", "maybe", "sometimes")
  psytype = "belief",                                                        ### "demographic", "belief", "determinant", "proxy", "behavior"
  dependent = "cessation",                                                   ### "initiation", "cessation"
  direction = "consistent",                                                  ### "consistent" (same direction as dependent), "inconsistent"
  parent = NA,                                                               ### Name of parent variable into which this one is aggregated
  description = NA,                                                          ### Description, as text; or NA
  comment = "retrieved from pages 196/197 under the heading Quesstionnaire"  ### Comment, as text; or NA
);

res$variable[[length(res$variable) + 1]] <- list(
  variable = "tolerance toward smoking",
  moment = 1,                                                                ### moment this variable was measured/manipulated
  type = "aggregate",                                                        ### "question", "aggregate", or "manipulation"
  datatype = "numeric",                                                      ### "numeric", "logical", "nominal", "ordinal", or "text"
  values = NA,                                                               ### Possible values; NA or a vector, e.g. c(1, 2, 3)
  labels = NA,                                                               ### Labels for the values; NA or e.g. c("no", "maybe", "sometimes")
  psytype = "belief",                                                        ### "demographic", "belief", "determinant", "proxy", "behavior"
  dependent = "cessation",                                                   ### "initiation", "cessation"
  direction = "consistent",                                                  ### "consistent" (same direction as dependent), "inconsistent"
  parent = NA,                                                               ### Name of parent variable into which this one is aggregated
  description = NA,                                                          ### Description, as text; or NA
  comment = "retrieved from pages 196/197 under the heading Quesstionnaire"  ### Comment, as text; or NA
);


##########################################################################
### END
##########################################################################

### Some verification functions; note that these need the 'userfriendlyscience'
### package to be installed and loaded (with 'require').

### This function checks whether for all variables that are used, the
### operationalisation is also extracted, and vice versa:
#extractionVerification(res);

### For showing the entire dataframes
#print.data.frame(extractionVerification(res)$dat$extractedVariables)
#print.data.frame(extractionVerification(res)$dat$extractedUnivariate)
#print.data.frame(extractionVerification(res)$dat$extractedAssociations)
