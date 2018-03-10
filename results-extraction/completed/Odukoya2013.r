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
res$bibTexKey <- "odukoya2013";

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
res$sample$description <- "Secondary school students, aged 10 to 21";

### Description of geography of sample, in text
res$sample$geography <- "Lagos, Nigeria";

### Sample size, as a number
res$sample$size <- 973;

### SUBSAMPLES - REMOVE THIS SECTION IF THERE ARE NO SUBSAMPLES

### Indicate which information you want to override. Specify the subsample
### you're providing new data for in the single quotes between the double
### brackets; make sure the spelling is exactly identical to the list above.
### Use NA to specify data that should not be overridden.

res$subsample[[length(res$subsample) + 1]] <- list( ### Create object for this subsample
  name = "smokers",           ### E.g. "Single mothers", "West-Coast
  description = "Those who have smoked, even only once",                                 ### participants", or "Caucasian teenagers"
  geography = NA,
  size = 94
);

res$subsample[[length(res$subsample) + 1]] <- list( ### Create object for this subsample
  name = "non-smokers",           ### E.g. "Single mothers", "West-Coast
  description = "participants who have never smoked",                                 ### participants", or "Caucasian teenagers"
  geography = NA,
  size = 879
);


res$subsample[[length(res$subsample) + 1]] <- list( ### Create object for this subsample
  name = "suscebtible non-smokers",           ### E.g. "Single mothers", "West-Coast
  description = "non smokes who might initiate",                                 ### participants", or "Caucasian teenagers"
  geography = NA,
  size = 146
);


res$subsample[[length(res$subsample) + 1]] <- list( ### Create object for this subsample
  name = "non-suscebtible non-smokers",           ### E.g. "Single mothers", "West-Coast
  description = "non smokes who might not initiate",                                 ### participants", or "Caucasian teenagers"
  geography = NA,
  size = 733
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


##########################################################################
### ASSOCIATIONS: CORRELATIONS, T-TESTS, CHI-SQUARES, ETC
##########################################################################

res$association[[length(res$association) + 1]] <- list(
  variable1 = "in favour of smoking ban in public places",     ### Name of first variable
  variable2 = "smoking status",     ### Name of second variable
  subsample = NA,                   ### Name of relevant subsample
  insignificanceOnly = FALSE,       ### Set to true if the paper only reports 'p > .05'
  crosstable = matrix(c(309,  56,
                        570,  38  ### Cross-table, for entering raw data. Make sure to start
                            ),    ### with the frequency for the lowest value for both variables,
                      ncol=2,     ### for example, column variable = 0 (not 1) and 
                      byrow=TRUE),### row variable = 0 (not 1).
  counter = FALSE,                  ### If TRUE (vs FALSE/NA), outcome inconsistent with hypothesis                           ### Pearson correlation
  comment = "retrieved from table 1. page 1749"                      ### Comment (e.g. calculation, page, etc)
);


res$association[[length(res$association) + 1]] <- list(
  variable1 = "parent smokes",     ### Name of first variable
  variable2 = "smoking status",     ### Name of second variable
  subsample = NA,                   ### Name of relevant subsample
  insignificanceOnly = FALSE,       ### Set to true if the paper only reports 'p > .05'
  crosstable = matrix(c(845,  83,  
                         34,  11  ### Cross-table, for entering raw data. Make sure to start
                            ),    ### with the frequency for the lowest value for both variables,
                      ncol=2,     ### for example, column variable = 0 (not 1) and 
                      byrow=TRUE),### row variable = 0 (not 1).
  counter = FALSE,                  ### If TRUE (vs FALSE/NA), outcome inconsistent with hypothesis                           ### Pearson correlation
  comment = "retrieved from table 1. page 1749"                      ### Comment (e.g. calculation, page, etc)
);

res$association[[length(res$association) + 1]] <- list(
  variable1 = "friend smokes",     ### Name of first variable
  variable2 = "smoking status",     ### Name of second variable
  insignificanceOnly = FALSE,       ### Set to true if the paper only reports 'p > .05'
  crosstable = matrix(c(759,  65, 
                        120,  29    ### Cross-table, for entering raw data. Make sure to start
                            ),    ### with the frequency for the lowest value for both variables,
                      ncol=2,     ### for example, column variable = 0 (not 1) and 
                      byrow=TRUE),### row variable = 0 (not 1).
  counter = FALSE,                  ### If TRUE (vs FALSE/NA), outcome inconsistent with hypothesis                           ### Pearson correlation
  comment = "retrieved from table 1. page 1749"                      ### Comment (e.g. calculation, page, etc)
);  


#res$association[[length(res$association) + 1]] <- list(
#  variable1 = "has been sent to purchase cigarettes by older adult",     ### Name of first variable
#  variable2 = "smoking status",     ### Name of second variable
#  insignificanceOnly = FALSE,       ### Set to true if the paper only reports 'p > .05'
#  crosstable = matrix(c(612,  55,
#                        267,  39
#                            ),    ### with the frequency for the lowest value for both variables,
#                      ncol=2,     ### for example, column variable = 0 (not 1) and 
#                      byrow=TRUE),### row variable = 0 (not 1).
#  counter = FALSE,                  ### If TRUE (vs FALSE/NA), outcome inconsistent with hypothesis                           ### Pearson correlation
#  comment = "retrieved from table 1. page 1749"                      ### Comment (e.g. calculation, page, etc)
#);

res$association[[length(res$association) + 1]] <- list(
  variable1 = "in favour of public smoking ban",     ### Name of first variable
  variable2 = "susceptibility",     ### Name of second variable
  insignificanceOnly = FALSE,       ### Set to true if the paper only reports 'p > .05'
  crosstable = matrix(c(240, 69,
                        493, 77 ### Cross-table, for entering raw data. Make sure to start
                            ),    ### with the frequency for the lowest value for both variables,
                      ncol=2,     ### for example, column variable = 0 (not 1) and 
                      byrow=TRUE),### row variable = 0 (not 1).
  counter = FALSE,                  ### If TRUE (vs FALSE/NA), outcome inconsistent with hypothesis                           ### Pearson correlation
  comment = "retrieved from table 3 page 1750"                      ### Comment (e.g. calculation, page, etc)
);


res$association[[length(res$association) + 1]] <- list(
  variable1 = "parent smokes",     ### Name of first variable
  variable2 = "susceptibility",     ### Name of second variable
  insignificanceOnly = FALSE,       ### Set to true if the paper only reports 'p > .05'
  crosstable = matrix(c(705, 140, 
                         28,   6
                            ),    ### with the frequency for the lowest value for both variables,
                      ncol=2,     ### for example, column variable = 0 (not 1) and 
                      byrow=TRUE),### row variable = 0 (not 1).
  counter = FALSE,                  ### If TRUE (vs FALSE/NA), outcome inconsistent with hypothesis
  comment = "retrieved from table 3 page 1750"                      ### Comment (e.g. calculation, page, etc)
);

  
res$association[[length(res$association) + 1]] <- list(
  variable1 = "friend smokes",     ### Name of first variable
  variable2 = "susceptibility",     ### Name of second variable
  subsample = NA,                   ### Name of relevant subsample
  insignificanceOnly = FALSE,       ### Set to true if the paper only reports 'p > .05'
  crosstable = matrix(c(669, 90, 
                        64, 56 
                            ),    ### with the frequency for the lowest value for both variables,
                      ncol=2,     ### for example, column variable = 0 (not 1) and 
                      byrow=TRUE),### row variable = 0 (not 1).
  counter = FALSE,                  ### If TRUE (vs FALSE/NA), outcome inconsistent with hypothesis
  comment = NA                      ### Comment (e.g. calculation, page, etc)
);
 
res$association[[length(res$association) + 1]] <- list(
  variable1 = "ever been offered a cigarette",     ### Name of first variable
  variable2 = "susceptibility",     ### Name of second variable
  subsample = NA,                   ### Name of relevant subsample
  insignificanceOnly = FALSE,       ### Set to true if the paper only reports 'p > .05'
  crosstable = matrix(c(673, 110,
                        60,  36
                            ),    ### with the frequency for the lowest value for both variables,
                      ncol=2,     ### for example, column variable = 0 (not 1) and 
                      byrow=TRUE),### row variable = 0 (not 1).
  counter = FALSE,                  ### If TRUE (vs FALSE/NA), outcome inconsistent with hypothesis
  comment = NA                      ### Comment (e.g. calculation, page, etc)
);

#res$association[[length(res$association) + 1]] <- list(
#  variable1 = "has been sent to purchase cigarettes by older adult",     ### Name of first variable
#  variable2 = "susceptibility",     ### Name of second variable
#  subsample = NA,                   ### Name of relevant subsample
#  insignificanceOnly = FALSE,       ### Set to true if the paper only reports 'p > .05'
#  crosstable = matrix(c(551,  6,
#                        182,  85
#                            ),    ### with the frequency for the lowest value for both variables,
#                      ncol=2,     ### for example, column variable = 0 (not 1) and 
#                      byrow=TRUE),### row variable = 0 (not 1).
#  counter = FALSE,                  ### If TRUE (vs FALSE/NA), outcome inconsistent with hypothesis
#  comment = NA                      ### Comment (e.g. calculation, page, etc)
#);



res$association[[length(res$association) + 1]] <- list(
  variable1 = "tobacco-related health knowledge",     ### Name of first variable
  var1values = NA,                  ### Values of var 1 in this analysis (e.g. post-hoc)
  var1moment = 1,                   ### Measurement moment of var 1
  variable2 = "susceptibility",     ### Name of second variable
  var2values = NA,                  ### Values of var 2 in this analysis (e.g. post-hoc)
  var2moment = 1,                   ### Measurement moment of var 2
  insignificanceOnly = FALSE,       ### Set to true if the paper only reports 'p > .05'
  subSampleComparison = TRUE,       ### When univariate data for two or more groups is extracted
  subSamples = c('susceptible non-smokers',                ### Here, specify the two or more names of the subsamples
                 'non-susceptible non-smokers'),           ### the comparison of which constitutes this variable    		
  counter = FALSE,                  ### If TRUE (vs FALSE/NA), outcome inconsistent with hypothesis
  comment = NA                      ### Comment (e.g. calculation, page, etc)
);


res$association[[length(res$association) + 1]] <- list(
  variable1 = "Positive attitude toward smoking",     ### Name of first variable
  var1values = NA,                  ### Values of var 1 in this analysis (e.g. post-hoc)
  var1moment = 1,                   ### Measurement moment of var 1
  variable2 = "susceptibility",     ### Name of second variable
  var2values = NA,                  ### Values of var 2 in this analysis (e.g. post-hoc)
  var2moment = 1,                   ### Measurement moment of var 2
  insignificanceOnly = FALSE,       ### Set to true if the paper only reports 'p > .05'
  subSampleComparison = TRUE,       ### When univariate data for two or more groups is extracted
  subSamples = c('susceptible non-smokers',                ### Here, specify the two or more names of the subsamples
                 'non-susceptible non-smokers'),               ### the comparison of which constitutes this variable        
  counter = FALSE,                  ### If TRUE (vs FALSE/NA), outcome inconsistent with hypothesis
  comment = NA                      ### Comment (e.g. calculation, page, etc)
);

##########################################################################


##########################################################################
### UNIVARIATE RESULTS: PERCENTAGES, MEANS, ETC
##########################################################################


#res$univariate[[length(res$univariate) + 1]] <- list(
#  variable = "tobacco-related health knowledge",       ### Name of variable this result pertains to
#  subsample = "Smokers",                   ### Name of relevant subsample, or NA
#  mean = 7.2,                        ### Mean or NA
#  sd = 3.1,                          ### Standard deviation, or NA
#  qualitative = NA,                 ### Description (qualitative research)
#  comment = NA                      ### Comment or NA
#);

res$univariate[[length(res$univariate) + 1]] <- list(
  variable = "tobacco-related health knowledge",       ### Name of variable this result pertains to
  subsample = "Non-smokers",                   ### Name of relevant subsample, or NA
  mean = 8.4,                        ### Mean or NA
  sd = 2.9,                          ### Standard deviation, or NA
  qualitative = NA,                 ### Description (qualitative research)
  comment = NA                      ### Comment or NA
);


#res$univariate[[length(res$univariate) + 1]] <- list(
#  variable = "Positive attitude toward smoking",       ### Name of variable this result pertains to
#  subsample = "Smokers",                   ### Name of relevant subsample, or NA
#  mean = 9.2,                        ### Mean or NA
#  sd = 3.9,                          ### Standard deviation, or NA
#  qualitative = NA,                 ### Description (qualitative research)
#  comment = "extracted from table 1, p. 1749"                      ### Comment or NA
#);

res$univariate[[length(res$univariate) + 1]] <- list(
  variable = "Positive attitude toward smoking",       ### Name of variable this result pertains to
  subsample = "Non-smokers",                   ### Name of relevant subsample, or NA
  mean = 4.9,                        ### Mean or NA
  sd = 3.1,                          ### Standard deviation, or NA
  qualitative = NA,                 ### Description (qualitative research)
  comment = "extracted from table 1, p. 1749"                      ### Comment or NA
);


##extracted from table 3.

res$univariate[[length(res$univariate) + 1]] <- list(
  variable = "tobacco-related health knowledge",       ### Name of variable this result pertains to
  subsample = "suscebtible non-smokers",                ### Name of relevant subsample, or NA
  mean = 7.0,                        ### Mean or NA
  sd = 3.0,                          ### Standard deviation, or NA
  qualitative = NA,                 ### Description (qualitative research)
  comment = NA                      ### Comment or NA
);

res$univariate[[length(res$univariate) + 1]] <- list(
  variable = "tobacco-related health knowledge",       ### Name of variable this result pertains to
  subsample = "non-suscebtible non-smokers",                   ### Name of relevant subsample, or NA
  mean = 8.7,                        ### Mean or NA
  sd = 2.8,                          ### Standard deviation, or NA
  qualitative = NA,                 ### Description (qualitative research)
  comment = NA                      ### Comment or NA
);


res$univariate[[length(res$univariate) + 1]] <- list(
  variable = "Positive attitude toward smoking",       ### Name of variable this result pertains to
  subsample = "suscebtible non-smokers",                   ### Name of relevant subsample, or NA
  mean = 6.45,                        ### Mean or NA
  sd = 3.0,                          ### Standard deviation, or NA
  qualitative = NA,                 ### Description (qualitative research)
  comment = "extracted from table 1, p. 1749"                      ### Comment or NA
);

res$univariate[[length(res$univariate) + 1]] <- list(
  variable = "Positive attitude toward smoking",       ### Name of variable this result pertains to
  subsample = "non-suscebtible non-smokers",                   ### Name of relevant subsample, or NA
  mean = 4.68,                        ### Mean or NA
  sd = 2.9,                          ### Standard deviation, or NA
  qualitative = NA,                 ### Description (qualitative research)
  comment = "extracted from table 1, p. 1749"                      ### Comment or NA
);


##########################################################################
## generateOperationalisationTemplates(object=res,
##                                    defaultOverrides =
##  list(dependent='"initiation"',
##        moment = 1, type = '"aggregate"', datatype = '"numeric"', psytype = '"belief"', direction = '"consistent"'));


###########################################################################
### MEASUREMENTS AND MANIPULATIONS: THE VARIABLES IN THE STUDY
###########################################################################

res$variable[[length(res$variable) + 1]] <- list(
  variable = "in favour of smoking ban in public places",
  moment = 1,                ### moment this variable was measured/manipulated
  type = "question",        ### "question", "aggregate", or "manipulation"
  datatype = "logical",      ### "numeric", "logical", "nominal", "ordinal", or "text"
  psytype = "belief",        ### "demographic", "belief", "determinant", "proxy", "behavior"
  dependent = "initiation",  ### "initiation", "cessation"
  direction = "consistent",  ### "consistent" (same direction as dependent), "inconsistent"
  parent = NA,               ### Name of parent variable into which this one is aggregated
  description = NA,          ### Description, as text; or NA
  comment = NA               ### Comment, as text; or NA
);

res$variable[[length(res$variable) + 1]] <- list(
  variable = "smoking status",
  moment = 1,                ### moment this variable was measured/manipulated
  type = "question",        ### "question", "aggregate", or "manipulation"
  datatype = "logical",      ### "numeric", "logical", "nominal", "ordinal", or "text"
  psytype = "belief",        ### "demographic", "belief", "determinant", "proxy", "behavior"
  dependent = "initiation",  ### "initiation", "cessation"
  direction = "consistent",  ### "consistent" (same direction as dependent), "inconsistent"
  parent = NA,               ### Name of parent variable into which this one is aggregated
  description = "retrieved from page 1749 under measures",          ### Description, as text; or NA
  comment = NA               ### Comment, as text; or NA
);

res$variable[[length(res$variable) + 1]] <- list(
  variable = "parent smokes",
  moment = 1,                ### moment this variable was measured/manipulated
  type = "question",        ### "question", "aggregate", or "manipulation"
  datatype = "logical",      ### "numeric", "logical", "nominal", "ordinal", or "text"
  values = NA,               ### Possible values; NA or a vector, e.g. c(1, 2, 3)
  labels = NA,               ### Labels for the values; NA or e.g. c("no", "maybe", "sometimes")
  psytype = "belief",        ### "demographic", "belief", "determinant", "proxy", "behavior"
  dependent = "initiation",  ### "initiation", "cessation"
  direction = "consistent",  ### "consistent" (same direction as dependent), "inconsistent"
  parent = NA,               ### Name of parent variable into which this one is aggregated
  description = NA,          ### Description, as text; or NA
  comment = NA               ### Comment, as text; or NA
);

res$variable[[length(res$variable) + 1]] <- list(
  variable = "friend smokes",
  moment = 1,                ### moment this variable was measured/manipulated
  type = "question",        ### "question", "aggregate", or "manipulation"
  datatype = "logical",      ### "numeric", "logical", "nominal", "ordinal", or "text"
  values = NA,               ### Possible values; NA or a vector, e.g. c(1, 2, 3)
  labels = NA,               ### Labels for the values; NA or e.g. c("no", "maybe", "sometimes")
  psytype = "belief",        ### "demographic", "belief", "determinant", "proxy", "behavior"
  dependent = "initiation",  ### "initiation", "cessation"
  direction = "consistent",  ### "consistent" (same direction as dependent), "inconsistent"
  parent = NA,               ### Name of parent variable into which this one is aggregated
  description = NA,          ### Description, as text; or NA
  comment = NA               ### Comment, as text; or NA
);

res$variable[[length(res$variable) + 1]] <- list(
  variable = "in favour of public smoking ban",
  moment = 1,                ### moment this variable was measured/manipulated
  type = "question",        ### "question", "aggregate", or "manipulation"
  datatype = "logical",      ### "numeric", "logical", "nominal", "ordinal", or "text"
  values = NA,               ### Possible values; NA or a vector, e.g. c(1, 2, 3)
  labels = NA,               ### Labels for the values; NA or e.g. c("no", "maybe", "sometimes")
  psytype = "belief",        ### "demographic", "belief", "determinant", "proxy", "behavior"
  dependent = "initiation",  ### "initiation", "cessation"
  direction = "inconsistent",  ### "consistent" (same direction as dependent), "inconsistent"
  parent = NA,               ### Name of parent variable into which this one is aggregated
  description = NA,          ### Description, as text; or NA
  comment = NA               ### Comment, as text; or NA
);

res$variable[[length(res$variable) + 1]] <- list(
  variable = "susceptibility",
  moment = 1,                ### moment this variable was measured/manipulated
  type = "question",        ### "question", "aggregate", or "manipulation"
  datatype = "logical",      ### "numeric", "logical", "nominal", "ordinal", or "text"
  psytype = "belief",        ### "demographic", "belief", "determinant", "proxy", "behavior"
  dependent = "initiation",  ### "initiation", "cessation"
  direction = "consistent",  ### "consistent" (same direction as dependent), "inconsistent"
  parent = NA,               ### Name of parent variable into which this one is aggregated
  description = "retrieved from left column of page 1749 under measures.",          ### Description, as text; or NA
  comment = NA               ### Comment, as text; or NA
);

res$variable[[length(res$variable) + 1]] <- list(
  variable = "ever been offered a cigarette",
  moment = 1,                ### moment this variable was measured/manipulated
  type = "question",        ### "question", "aggregate", or "manipulation"
  datatype = "logical",      ### "numeric", "logical", "nominal", "ordinal", or "text"
  psytype = "belief",        ### "demographic", "belief", "determinant", "proxy", "behavior"
  dependent = "initiation",  ### "initiation", "cessation"
  direction = "consistent",  ### "consistent" (same direction as dependent), "inconsistent"
  parent = NA,               ### Name of parent variable into which this one is aggregated
  description = NA,          ### Description, as text; or NA
  comment = NA               ### Comment, as text; or NA
);

res$variable[[length(res$variable) + 1]] <- list(
  variable = "tobacco-related health knowledge",
  moment = 1,                ### moment this variable was measured/manipulated
  type = "aggregate",        ### "question", "aggregate", or "manipulation"
  datatype = "numeric",      ### "numeric", "logical", "nominal", "ordinal", or "text"
  psytype = "belief",        ### "demographic", "belief", "determinant", "proxy", "behavior"
  dependent = "initiation",  ### "initiation", "cessation"
  direction = "inconsistent",  ### "consistent" (same direction as dependent), "inconsistent"
  parent = NA,               ### Name of parent variable into which this one is aggregated
  description = NA,          ### Description, as text; or NA
  comment = NA               ### Comment, as text; or NA
);

res$variable[[length(res$variable) + 1]] <- list(
  variable = "Positive attitude toward smoking",
  moment = 1,                ### moment this variable was measured/manipulated
  type = "aggregate",        ### "question", "aggregate", or "manipulation"
  datatype = "numeric",      ### "numeric", "logical", "nominal", "ordinal", or "text"
  psytype = "belief",        ### "demographic", "belief", "determinant", "proxy", "behavior"
  dependent = "initiation",  ### "initiation", "cessation"
  direction = "consistent",  ### "consistent" (same direction as dependent), "inconsistent"
  parent = NA,               ### Name of parent variable into which this one is aggregated
  description = NA,          ### Description, as text; or NA
  comment = NA               ### Comment, as text; or NA
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
