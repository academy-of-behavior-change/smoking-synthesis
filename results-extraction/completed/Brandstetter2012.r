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
res$bibTexKey <- "Brandstetter2012";

##########################################################################
##########################################################################
###
###  GENERAL INFORMATION / COMMENTS ON THIS STUDY:
###
res$generalComments <- "
Participants took part in Not On Tobacco-cessation program between 1998 and 2009

";### Make sure this line starts with a double quote and a semicolon (";)
##########################################################################
##########################################################################


##########################################################################
### SAMPLE DESCRIPTION
##########################################################################

### Description of sample, in text (e.g. "Single mothers" or "West-Coast participants", etc)
res$sample$description <- "adolescents, between 14 and 19 years old";

### Description of geography of sample, in text
res$sample$geography <- "New Jersey, West Virginia, Florida, North Carolina, Wisconsin";

### Sample size, as a number
res$sample$size <- 755;

### SUBSAMPLES - REMOVE THIS SECTION IF THERE ARE NO SUBSAMPLES

### Indicate which information you want to override. Specify the subsample
### you're providing new data for in the single quotes between the double
### brackets; make sure the spelling is exactly identical to the list above.
### Use NA to specify data that should not be overridden.

res$subsample[[length(res$subsample) + 1]] <- list( ### Create object for this subsample
  name = "Women",           ### E.g. "Single mothers", "West-Coast
  description = "adolescent women between the ages of 14 - 19",                                 ### participants", or "Caucasian teenagers"
  geography = "New Jersey, West Virginia, Florida, North Carolina, Wisconsin",
  size = 755*.58
);

res$subsample[[length(res$subsample) + 1]] <- list( ### Create object for this subsample
  name = "Men",           ### E.g. "Single mothers", "West-Coast
  description = "adolescent men between the ages of 14 - 19",                                 ### participants", or "Caucasian teenagers"
  geography = "New Jersey, West Virginia, Florida, North Carolina, Wisconsin",
  size = 755*.42
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
  variable1 = "gender",     ### Name of first variable
  variable2 = "Cessation in past 7 days",     ### Name of second variable
  var2moment = 1,                   ### Measurement moment of var 2
  n = NA,                           ### Number of participants in analysis
  df1 = NA,                         ### degrees of freedom (numerator)
  OR = 1.10,                          ### Odds ratio
  p = .08,                           ### P-value (if nothing else is available)
  comment = NA                      ### Comment (e.g. calculation, page, etc)
);

res$association[[length(res$association) + 1]] <- list(
  variable1 = "gender",     ### Name of first variable
  variable2 = "Increased CPD",     ### Name of second variable
  var2moment = 1,                   ### Measurement moment of var 2
  t = 1.05,                           ### t-value
  p = .29,                           ### P-value (if nothing else is available)
  comment = "Cigarettes per day CPD from baseline to post-intervention."         ### Comment (e.g. calculation, page, etc)
);

res$association[[length(res$association) + 1]] <- list(
  variable1 = "Smoking within 30 mins of waking",     ### Name of first variable
  var1values = NA,                  ### Values of var 1 in this analysis (e.g. post-hoc)
  var1moment = 1,                   ### Measurement moment of var 1
  variable2 = "Increased CPD",     ### Name of second variable
  var2values = NA,                  ### Values of var 2 in this analysis (e.g. post-hoc)
  var2moment = 1,                   ### Measurement moment of var 2
  subsample = "Women",                   ### Name of relevant subsample
  n = NA,                           ### Number of participants in analysis
  df1 = NA,                         ### degrees of freedom (numerator)
  t = 3.57,                           ### t-value
  p = .001,                           ### P-value (if nothing else is available)
  comment = NA                      ### Comment (e.g. calculation, page, etc)
);

res$association[[length(res$association) + 1]] <- list(
  variable1 = "Low confidence in ability to quit",     ### Name of first variable
  var1values = NA,                  ### Values of var 1 in this analysis (e.g. post-hoc)
  var1moment = 1,                   ### Measurement moment of var 1
  variable2 = "Increased CPD",     ### Name of second variable
  var2values = NA,                  ### Values of var 2 in this analysis (e.g. post-hoc)
  var2moment = 1,                   ### Measurement moment of var 2
  subsample = "Women",                   ### Name of relevant subsample
  n = NA,                           ### Number of participants in analysis
  df1 = NA,                         ### degrees of freedom (numerator)
  t = 3.15,                           ### t-value
  p = 0.02,                           ### P-value (if nothing else is available)
  comment = NA                      ### Comment (e.g. calculation, page, etc)
);



#res$association[[length(res$association) + 1]] <- list(
#  variable1 = "Smoking within 30 mins of waking AND low confidence in ability to quit",     ### Name of first variable
#  var1values = NA,                  ### Values of var 1 in this analysis (e.g. post-hoc)
#  var1moment = 1,                   ### Measurement moment of var 1
#  variable2 = "Increased CPD",     ### Name of second variable
#  var2values = NA,                  ### Values of var 2 in this analysis (e.g. post-hoc)
#  var2moment = 1,                   ### Measurement moment of var 2
#  subsample = "Women",                   ### Name of relevant subsample
#  n = NA,                           ### Number of participants in analysis
#  df1 = 15,                         ### degrees of freedom (numerator)
#  df2 = 166,                         ### for anova, second degrees of freedom (denominator)
#  t = NA,                           ### t-value
#  F = 8.24,                           ### F-value
#  counter = FALSE,                  ### If TRUE (vs FALSE/NA), outcome inconsistent with hypothesis
#  OR = NA,                          ### Odds ratio
#  p = NA,                           ### P-value (if nothing else is available)
#  covariates = 0,                   ### Number of covariates (for multivariate analyses)
#  comment = "CPD: Cigarettes Per Day
#  Variables: Smoking within 30 mins of waking, AND low confidence in ability to quit.
#  page 3, bottom of Section marked Cessation."                     ### Comment (e.g. calculation, page, etc)
#);


res$association[[length(res$association) + 1]] <- list(
  variable1 = "Prior quit attempts",     ### Name of first variable
  var1values = NA,                  ### Values of var 1 in this analysis (e.g. post-hoc)
  var1moment = 1,                   ### Measurement moment of var 1
  variable2 = "Increased CPD",     ### Name of second variable
  var2values = NA,                  ### Values of var 2 in this analysis (e.g. post-hoc)
  var2moment = 1,                   ### Measurement moment of var 2
  subsample = "Men",                   ### Name of relevant subsample
  n = NA,                           ### Number of participants in analysis
  df1 = NA,                         ### degrees of freedom (numerator)
  df2 = NA,                         ### for anova, second degrees of freedom (denominator)
  t = -3.53,                           ### t-value
  F = NA,                           ### F-value
  chisq = NA,                       ### Chi square value
  crosstable = matrix(c(NA, NA,     ### Cross-table, for entering raw data. Make sure to start
                        NA, NA),    ### with the frequency for the lowest value for both variables,
                        ncol=2,     ### for example, column variable = 0 (not 1) and 
                        byrow=TRUE),### row variable = 0 (not 1).
  counter = FALSE,                  ### If TRUE (vs FALSE/NA), outcome inconsistent with hypothesis
  r = NA,                           ### Pearson correlation
  d = NA,                           ### Cohen's d value
  etasq = NA,                       ### Eta squared value
  OR = NA,                          ### Odds ratio
  p = .001,                           ### P-value (if nothing else is available)
  covariates = 0,                   ### Number of covariates (for multivariate analyses)
  comment = NA                      ### Comment (e.g. calculation, page, etc)
);


res$association[[length(res$association) + 1]] <- list(
  variable1 = "Prior quit attempts",     ### Name of first variable
  var1values = NA,                  ### Values of var 1 in this analysis (e.g. post-hoc)
  var1moment = 1,                   ### Measurement moment of var 1
  variable2 = "Increased CPD",     ### Name of second variable
  var2values = NA,                  ### Values of var 2 in this analysis (e.g. post-hoc)
  var2moment = 1,                   ### Measurement moment of var 2
  subsample = "Men",                   ### Name of relevant subsample
  df1 = 15,                         ### degrees of freedom (numerator)
  df2 = 73,                         ### for anova, second degrees of freedom (denominator)
  t = NA,                           ### t-value
  F = 3.37,                           ### F-value
  counter = FALSE,                  ### If TRUE (vs FALSE/NA), outcome inconsistent with hypothesis
  p = .001,                           ### P-value (if nothing else is available)
  covariates = 0,                   ### Number of covariates (for multivariate analyses)
  comment = "actually  belongs together with association above, but since two p-values are provided in text,
  and because that makes me nervous, I've added them separately. Retrieved from p.3."                      ### Comment (e.g. calculation, page, etc)
);


res$association[[length(res$association) + 1]] <- list(
  variable1 = "Addiction",     ### Name of first variable
  var1values = NA,                  ### Values of var 1 in this analysis (e.g. post-hoc)
  var1moment = 1,                   ### Measurement moment of var 1
  variable2 = "Baseline CPD",     ### Name of second variable
  var2values = NA,                  ### Values of var 2 in this analysis (e.g. post-hoc)
  var2moment = 1,                   ### Measurement moment of var 2
  subsample = "Men",                   ### Name of relevant subsample
  counter = FALSE,                  ### If TRUE (vs FALSE/NA), outcome inconsistent with hypothesis
  p = .001,                           ### P-value (if nothing else is available)
  comment = NA                      ### Comment (e.g. calculation, page, etc)
);

res$association[[length(res$association) + 1]] <- list(
  variable1 = "Addiction",     ### Name of first variable
  var1values = NA,                  ### Values of var 1 in this analysis (e.g. post-hoc)
  var1moment = 1,                   ### Measurement moment of var 1
  variable2 = "Baseline CPD",     ### Name of second variable
  var2values = NA,                  ### Values of var 2 in this analysis (e.g. post-hoc)
  var2moment = 1,                   ### Measurement moment of var 2
  subsample = "Women",                   ### Name of relevant subsample
  counter = FALSE,                  ### If TRUE (vs FALSE/NA), outcome inconsistent with hypothesis
  p = .001,                           ### P-value (if nothing else is available)
  comment = NA                      ### Comment (e.g. calculation, page, etc)
);

res$association[[length(res$association) + 1]] <- list(
  variable1 = "Motivation to quit",     ### Name of first variable
  var1values = NA,                  ### Values of var 1 in this analysis (e.g. post-hoc)
  var1moment = 1,                   ### Measurement moment of var 1
  variable2 = "Baseline CPD",       ### Name of second variable
  var2values = NA,                  ### Values of var 2 in this analysis (e.g. post-hoc)
  var2moment = 1,                   ### Measurement moment of var 2
  subsample = "Men",                   ### Name of relevant subsample
  counter = FALSE,                  ### If TRUE (vs FALSE/NA), outcome inconsistent with hypothesis
  p = .002,                           ### P-value (if nothing else is available)
  comment = NA                      ### Comment (e.g. calculation, page, etc)
);

res$association[[length(res$association) + 1]] <- list(
  variable1 = "Motivation to quit",     ### Name of first variable
  var1values = NA,                  ### Values of var 1 in this analysis (e.g. post-hoc)
  var1moment = 1,                   ### Measurement moment of var 1
  variable2 = "Baseline CPD",     ### Name of second variable
  var2values = NA,                  ### Values of var 2 in this analysis (e.g. post-hoc)
  var2moment = 1,                   ### Measurement moment of var 2
  subsample = "Women",                   ### Name of relevant subsample
  counter = FALSE,                  ### If TRUE (vs FALSE/NA), outcome inconsistent with hypothesis
  p = .001,                           ### P-value (if nothing else is available)
  comment = NA                      ### Comment (e.g. calculation, page, etc)
);


res$association[[length(res$association) + 1]] <- list(
  variable1 = "Confidence in quitting",     ### Name of first variable
  var1values = NA,                  ### Values of var 1 in this analysis (e.g. post-hoc)
  var1moment = 1,                   ### Measurement moment of var 1
  variable2 = "Baseline CPD",     ### Name of second variable
  var2values = NA,                  ### Values of var 2 in this analysis (e.g. post-hoc)
  var2moment = 1,                   ### Measurement moment of var 2
  subsample = "Men",                   ### Name of relevant subsample
  counter = FALSE,                  ### If TRUE (vs FALSE/NA), outcome inconsistent with hypothesis
  p = .003,                           ### P-value (if nothing else is available)
  comment = NA                      ### Comment (e.g. calculation, page, etc)
);


res$association[[length(res$association) + 1]] <- list(
  variable1 = "Confidence in quitting",     ### Name of first variable
  var1values = NA,                  ### Values of var 1 in this analysis (e.g. post-hoc)
  var1moment = 1,                   ### Measurement moment of var 1
  variable2 = "Baseline CPD",     ### Name of second variable
  var2values = NA,                  ### Values of var 2 in this analysis (e.g. post-hoc)
  var2moment = 1,                   ### Measurement moment of var 2
  subsample = "Women",                   ### Name of relevant subsample
  counter = FALSE,                  ### If TRUE (vs FALSE/NA), outcome inconsistent with hypothesis
  p = .001,                           ### P-value (if nothing else is available)
  comment = NA                      ### Comment (e.g. calculation, page, etc)
);


res$association[[length(res$association) + 1]] <- list(
  variable1 = "Baseline CPD",     ### Name of first variable
  var1values = NA,                  ### Values of var 1 in this analysis (e.g. post-hoc)
  var1moment = 1,                   ### Measurement moment of var 1
  variable2 = "Quit outcome",     ### Name of second variable
  var2values = NA,                  ### Values of var 2 in this analysis (e.g. post-hoc)
  var2moment = 1,                   ### Measurement moment of var 2
  subsample = "Women",                   ### Name of relevant subsample
  counter = FALSE,                  ### If TRUE (vs FALSE/NA), outcome inconsistent with hypothesis
  p = .001,                           ### P-value (if nothing else is available)
  comment = NA                      ### Comment (e.g. calculation, page, etc)
);


res$association[[length(res$association) + 1]] <- list(
  variable1 = "Motivation to quit",     ### Name of first variable
  var1values = NA,                  ### Values of var 1 in this analysis (e.g. post-hoc)
  var1moment = 1,                   ### Measurement moment of var 1
  variable2 = "Quit outcome",     ### Name of second variable
  var2values = NA,                  ### Values of var 2 in this analysis (e.g. post-hoc)
  var2moment = 1,                   ### Measurement moment of var 2
  subsample = "Men",                   ### Name of relevant subsample
  counter = FALSE,                  ### If TRUE (vs FALSE/NA), outcome inconsistent with hypothesis
  p = .003,                           ### P-value (if nothing else is available)
  comment = NA                      ### Comment (e.g. calculation, page, etc)
);


res$association[[length(res$association) + 1]] <- list(
  variable1 = "Reasons for smoking",     ### Name of first variable
  var1values = NA,                  ### Values of var 1 in this analysis (e.g. post-hoc)
  var1moment = 1,                   ### Measurement moment of var 1
  variable2 = "Quit outcome",     ### Name of second variable
  var2values = NA,                  ### Values of var 2 in this analysis (e.g. post-hoc)
  var2moment = 1,                   ### Measurement moment of var 2
  subsample = "Women",                   ### Name of relevant subsample
  counter = FALSE,                  ### If TRUE (vs FALSE/NA), outcome inconsistent with hypothesis
  p = .001,                           ### P-value (if nothing else is available)
  comment = NA                      ### Comment (e.g. calculation, page, etc)
);


res$association[[length(res$association) + 1]] <- list(
  variable1 = "Reasons for smoking",     ### Name of first variable
  var1values = NA,                  ### Values of var 1 in this analysis (e.g. post-hoc)
  var1moment = 1,                   ### Measurement moment of var 1
  variable2 = "Baseline CPD",     ### Name of second variable
  var2values = NA,                  ### Values of var 2 in this analysis (e.g. post-hoc)
  var2moment = 1,                   ### Measurement moment of var 2
  subsample = "Men",                   ### Name of relevant subsample
  counter = FALSE,                  ### If TRUE (vs FALSE/NA), outcome inconsistent with hypothesis
  p = .03,                           ### P-value (if nothing else is available)
  comment = NA                      ### Comment (e.g. calculation, page, etc)
);


##########################################################################


##########################################################################
### UNIVARIATE RESULTS: PERCENTAGES, MEANS, ETC
##########################################################################


##########################################################################


##########################################################################
### MEASUREMENTS AND MANIPULATIONS: THE VARIABLES IN THE STUDY
##########################################################################

res$variable[[length(res$variable) + 1]] <- list(
  variable = "gender",             ### Replace 'example' with variable name
  moment = 1,                       ### moment this variable was measured/manipulated
  type = "question",                ### "question", "aggregate", or "manipulation"
  datatype = "logical",             ### "numeric", "logical", "nominal", "ordinal", or "text"
  values = NA,                      ### Possible values; NA or a vector, e.g. c(1, 2, 3)
  labels = NA,                      ### Labels for the values; NA or e.g. c("no", "maybe", "sometimes")
  psytype = "demographic",             ### "demographic", "belief", "determinant", "proxy", "behavior"
  dependent = "cessation",         ### "initiation", "cessation"
 
  parent = NA,                      ### Name of parent variable into which this one is aggregated
  description = NA,                 ### Description, as text; or NA
  comment = NA                      ### Comment, as text; or NA
);

res$variable[[length(res$variable) + 1]] <- list(
  variable = "Cessation in past 7 days",             ### Replace 'example' with variable name
  moment = 1,                       ### moment this variable was measured/manipulated
  type = "question",                ### "question", "aggregate", or "manipulation"
  datatype = "logical",             ### "numeric", "logical", "nominal", "ordinal", or "text"
  values = NA,                      ### Possible values; NA or a vector, e.g. c(1, 2, 3)
  labels = NA,                      ### Labels for the values; NA or e.g. c("no", "maybe", "sometimes")
  psytype = "behavior",             ### "demographic", "belief", "determinant", "proxy", "behavior"
  dependent = "cessation",         ### "initiation", "cessation"
  direction = "consistent",                   ### "consistent" (same direction as dependent), "inconsistent"
  parent = NA,                      ### Name of parent variable into which this one is aggregated
  description = NA,                 ### Description, as text; or NA
  comment = NA                      ### Comment, as text; or NA
);

res$variable[[length(res$variable) + 1]] <- list(
  variable = "Increased CPD",             ### Replace 'example' with variable name
  moment = 1,                       ### moment this variable was measured/manipulated
  type = "question",                ### "question", "aggregate", or "manipulation"
  datatype = "numeric",             ### "numeric", "logical", "nominal", "ordinal", or "text"
  values = NA,                      ### Possible values; NA or a vector, e.g. c(1, 2, 3)
  labels = NA,                      ### Labels for the values; NA or e.g. c("no", "maybe", "sometimes")
  psytype = "behavior",             ### "demographic", "belief", "determinant", "proxy", "behavior"
  dependent = "cessation",         ### "initiation", "cessation"
  direction = "inconsistent",                   ### "consistent" (same direction as dependent), "inconsistent"
  parent = NA,                      ### Name of parent variable into which this one is aggregated
  description = NA,                 ### Description, as text; or NA
  comment = NA                      ### Comment, as text; or NA
);


res$variable[[length(res$variable) + 1]] <- list(
  variable = "Smoking within 30 mins of waking",             ### Replace 'example' with variable name
  moment = 1,                       ### moment this variable was measured/manipulated
  type = "question",                ### "question", "aggregate", or "manipulation"
  datatype = "logical",             ### "numeric", "logical", "nominal", "ordinal", or "text"
  values = NA,                      ### Possible values; NA or a vector, e.g. c(1, 2, 3)
  labels = NA,                      ### Labels for the values; NA or e.g. c("no", "maybe", "sometimes")
  psytype = "behavior",             ### "demographic", "belief", "determinant", "proxy", "behavior"
  dependent = "cessation",         ### "initiation", "cessation"
  direction = "inconsistent",                   ### "consistent" (same direction as dependent), "inconsistent"
  parent = NA,                      ### Name of parent variable into which this one is aggregated
  description = NA,                 ### Description, as text; or NA
  comment = NA                      ### Comment, as text; or NA
);

res$variable[[length(res$variable) + 1]] <- list(
  variable = "Low confidence in ability to quit",             ### Replace 'example' with variable name
  moment = 1,                       ### moment this variable was measured/manipulated
  type = "aggregate",                ### "question", "aggregate", or "manipulation"
  datatype = "numeric",             ### "numeric", "logical", "nominal", "ordinal", or "text"
  values = c(1,2,3,4,5),                      ### Possible values; NA or a vector, e.g. c(1, 2, 3)
  labels = c("low confidence","x","x","x","high confidence"),                      ### Labels for the values; NA or e.g. c(no", "maybe", "sometimes")
  psytype = "determinant",             ### "demographic", "belief", "determinant", "proxy", "behavior"
  dependent = "cessation",         ### "initiation", "cessation"
  direction = "inconsistent",                   ### "consistent" (same direction as dependent), "inconsistent"
  parent = NA,                      ### Name of parent variable into which this one is aggregated
  description = NA,                 ### Description, as text; or NA
  comment = NA                      ### Comment, as text; or NA
);

#res$variable[[length(res$variable) + 1]] <- list(
#  variable = "Smoking within 30 mins of waking AND low confidence in ability to quit",             ### Replace 'example' with variable name
#  moment = 1,                       ### moment this variable was measured/manipulated
#  type = "aggregate",                ### "question", "aggregate", or "manipulation"
#  datatype = "ordinal",             ### "numeric", "logical", "nominal", "ordinal", or "text"
#  values = c(1,2,3,4,5),                      ### Possible values; NA or a vector, e.g. c(1, 2, 3)
#  labels = c("low confidence","x","x","x","high confidence"),                      ### Labels for the values; NA or e.g. c(no", "maybe", "sometimes")
#  psytype = "determinant",             ### "demographic", "belief", "determinant", "proxy", "behavior"
#  dependent = "cessation",         ### "initiation", "cessation"
#  direction = "inconsistent",                   ### "consistent" (same direction as dependent), "inconsistent"
#  parent = NA,                      ### Name of parent variable into which this one is aggregated
#  description = NA,                 ### Description, as text; or NA
#  comment = "I'm at a loss, but this data is supposed to be included."                      ### Comment, as text; or NA
#);

res$variable[[length(res$variable) + 1]] <- list(
  variable = "Prior quit attempts",             ### Replace 'example' with variable name
  moment = 1,                       ### moment this variable was measured/manipulated
  type = "question",                ### "question", "aggregate", or "manipulation"
  datatype = "numeric",             ### "numeric", "logical", "nominal", "ordinal", or "text"
  values = NA,                      ### Possible values; NA or a vector, e.g. c(1, 2, 3)
  labels = NA,                      ### Labels for the values; NA or e.g. c("no", "maybe", "sometimes")
  psytype = "behavior",             ### "demographic", "belief", "determinant", "proxy", "behavior"
  dependent = "cessation",         ### "initiation", "cessation"
  direction = "consistent",                   ### "consistent" (same direction as dependent), "inconsistent"
  parent = NA,                      ### Name of parent variable into which this one is aggregated
  description = NA,                 ### Description, as text; or NA
  comment = NA                      ### Comment, as text; or NA
);

res$variable[[length(res$variable) + 1]] <- list(
  variable = "Addiction",             ### Replace 'example' with variable name
  moment = 1,                       ### moment this variable was measured/manipulated
  type = "aggregate",                ### "question", "aggregate", or "manipulation"
  datatype = "numeric",             ### "numeric", "logical", "nominal", "ordinal", or "text"
  values = NA,                      ### Possible values; NA or a vector, e.g. c(1, 2, 3)
  labels = NA,                      ### Labels for the values; NA or e.g. c("no", "maybe", "sometimes")
  psytype = "determinant",             ### "demographic", "belief", "determinant", "proxy", "behavior"
  dependent = "cessation",         ### "initiation", "cessation"
  direction = "inconsistent",                   ### "consistent" (same direction as dependent), "inconsistent"
  parent = NA,                      ### Name of parent variable into which this one is aggregated
  description = NA,                 ### Description, as text; or NA
  comment = NA                      ### Comment, as text; or NA
);

res$variable[[length(res$variable) + 1]] <- list(
  variable = "Baseline CPD",             ### Replace 'example' with variable name
  moment = 1,                       ### moment this variable was measured/manipulated
  type = "question",                ### "question", "aggregate", or "manipulation"
  datatype = "numeric",             ### "numeric", "logical", "nominal", "ordinal", or "text"
  values = NA,                      ### Possible values; NA or a vector, e.g. c(1, 2, 3)
  labels = NA,                      ### Labels for the values; NA or e.g. c("no", "maybe", "sometimes")
  psytype = "behavior",             ### "demographic", "belief", "determinant", "proxy", "behavior"
  dependent = "cessation",         ### "initiation", "cessation"
  direction = "consistent",                   ### "consistent" (same direction as dependent), "inconsistent"
  parent = NA,                      ### Name of parent variable into which this one is aggregated
  description = NA,                 ### Description, as text; or NA
  comment = NA                      ### Comment, as text; or NA
);

res$variable[[length(res$variable) + 1]] <- list(
  variable = "Motivation to quit",             ### Replace 'example' with variable name
  moment = 1,                       ### moment this variable was measured/manipulated
  type = "question",                ### "question", "aggregate", or "manipulation"
  datatype = "numeric",             ### "numeric", "logical", "nominal", "ordinal", or "text"
  values = NA,                      ### Possible values; NA or a vector, e.g. c(1, 2, 3)
  labels = NA,                      ### Labels for the values; NA or e.g. c("no", "maybe", "sometimes")
  psytype = "proxy",             ### "demographic", "belief", "determinant", "proxy", "behavior"
  dependent = "cessation",         ### "initiation", "cessation"
  direction = "consistent",                   ### "consistent" (same direction as dependent), "inconsistent"
  parent = NA,                      ### Name of parent variable into which this one is aggregated
  description = NA,                 ### Description, as text; or NA
  comment = NA                      ### Comment, as text; or NA
);

res$variable[[length(res$variable) + 1]] <- list(
  variable = "Confidence in quitting",             ### Replace 'example' with variable name
  moment = 1,                       ### moment this variable was measured/manipulated
  type = "question",                ### "question", "aggregate", or "manipulation"
  datatype = "numeric",             ### "numeric", "logical", "nominal", "ordinal", or "text"
  values = NA,                      ### Possible values; NA or a vector, e.g. c(1, 2, 3)
  labels = NA,                      ### Labels for the values; NA or e.g. c("no", "maybe", "sometimes")
  psytype = "determinant",             ### "demographic", "belief", "determinant", "proxy", "behavior"
  dependent = "cessation",         ### "initiation", "cessation"
  direction = "consistent",                   ### "consistent" (same direction as dependent), "inconsistent"
  parent = NA,                      ### Name of parent variable into which this one is aggregated
  description = NA,                 ### Description, as text; or NA
  comment = NA                      ### Comment, as text; or NA
);

res$variable[[length(res$variable) + 1]] <- list(
  variable = "Quit outcome",             ### Replace 'example' with variable name
  moment = 1,                       ### moment this variable was measured/manipulated
  type = "question",                ### "question", "aggregate", or "manipulation"
  datatype = "logical",             ### "numeric", "logical", "nominal", "ordinal", or "text"
  values = NA,                      ### Possible values; NA or a vector, e.g. c(1, 2, 3)
  labels = NA,                      ### Labels for the values; NA or e.g. c("no", "maybe", "sometimes")
  psytype = "behavior",             ### "demographic", "belief", "determinant", "proxy", "behavior"
  dependent = "cessation",         ### "initiation", "cessation"
  direction = "consistent",                   ### "consistent" (same direction as dependent), "inconsistent"
  parent = NA,                      ### Name of parent variable into which this one is aggregated
  description = NA,                 ### Description, as text; or NA
  comment = NA                      ### Comment, as text; or NA
);

res$variable[[length(res$variable) + 1]] <- list(
  variable = "Reasons for smoking",             ### Replace 'example' with variable name
  moment = 1,                       ### moment this variable was measured/manipulated
  type = "aggregate",                ### "question", "aggregate", or "manipulation"
  datatype = "nominal",             ### "numeric", "logical", "nominal", "ordinal", or "text"
  values = NA,                      ### Possible values; NA or a vector, e.g. c(1, 2, 3)
  labels = NA,                      ### Labels for the values; NA or e.g. c("no", "maybe", "sometimes")
  psytype = "proxy",             ### "demographic", "belief", "determinant", "proxy", "behavior"
  dependent = "cessation",         ### "initiation", "cessation"
  direction = "inconsistent",                   ### "consistent" (same direction as dependent), "inconsistent"
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
