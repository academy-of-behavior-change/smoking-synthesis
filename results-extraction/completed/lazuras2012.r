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
res$bibTexKey <- "lazuras2010";

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
res$sample$description <- "White/Blue collar employees";

### Description of geography of sample, in text
res$sample$geography <- "Greece";

### Sample size, as a number
res$sample$size <- 93;

### SUBSAMPLES - REMOVE THIS SECTION IF THERE ARE NO SUBSAMPLES

### Indicate which information you want to override. Specify the subsample
### you're providing new data for in the single quotes between the double
### brackets; make sure the spelling is exactly identical to the list above.
### Use NA to specify data that should not be overridden.

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
  variable1 = "Attitudes",     ### Name of first variable
  variable2 = "Quit intention",     ### Name of second variable
  insignificanceOnly = FALSE,       ### Set to true if the paper only reports 'p > .05'
  counter = FALSE,                  ### If TRUE (vs FALSE/NA), outcome inconsistent with hypothesis
  r = .37,                           ### Pearson correlation
  comment = "Retrieved from Table 1. P. 340"                      ### Comment (e.g. calculation, page, etc)
);

res$association[[length(res$association) + 1]] <- list(
  variable1 = "Health benefit from quitting",     ### Name of first variable
  variable2 = "Quit intention",     ### Name of second variable
  insignificanceOnly = TRUE,       ### Set to true if the paper only reports 'p > .05'
  counter = FALSE,                  ### If TRUE (vs FALSE/NA), outcome inconsistent with hypothesis
  r = .07,                           ### Pearson correlation
  comment = "Retrieved from Table 1. P. 340"                      ### Comment (e.g. calculation, page, etc)
);

res$association[[length(res$association) + 1]] <- list(
  variable1 = "Health risk from continuing smoking",     ### Name of first variable
  variable2 = "Quit intention",     ### Name of second variable
  insignificanceOnly = TRUE,       ### Set to true if the paper only reports 'p > .05'
  counter = FALSE,                  ### If TRUE (vs FALSE/NA), outcome inconsistent with hypothesis
  r = -.21,                           ### Pearson correlation
  comment = "Retrieved from Table 1. P. 340"                      ### Comment (e.g. calculation, page, etc)
);

res$association[[length(res$association) + 1]] <- list(
  variable1 = "Subjective norms",     ### Name of first variable
  variable2 = "Quit intention",     ### Name of second variable
  insignificanceOnly = TRUE,       ### Set to true if the paper only reports 'p > .05'
  counter = FALSE,                  ### If TRUE (vs FALSE/NA), outcome inconsistent with hypothesis
  r = .22,                           ### Pearson correlation
  comment = "Retrieved from Table 1. P. 340"                      ### Comment (e.g. calculation, page, etc)
);

res$association[[length(res$association) + 1]] <- list(
  variable1 = "Descriptive norms - smokers",     ### Name of first variable
  variable2 = "Quit intention",     ### Name of second variable
  insignificanceOnly = TRUE,       ### Set to true if the paper only reports 'p > .05'
  counter = FALSE,                  ### If TRUE (vs FALSE/NA), outcome inconsistent with hypothesis
  r = .08,                           ### Pearson correlation
  comment = "Retrieved from Table 1. P. 340"                      ### Comment (e.g. calculation, page, etc)
);

res$association[[length(res$association) + 1]] <- list(
  variable1 = "Descriptive norms - quitters",     ### Name of first variable
  variable2 = "Quit intention",     ### Name of second variable
  insignificanceOnly = TRUE,       ### Set to true if the paper only reports 'p > .05'
  counter = FALSE,                  ### If TRUE (vs FALSE/NA), outcome inconsistent with hypothesis
  r = -.05,                           ### Pearson correlation
  p = NA,                           ### P-value (if nothing else is available)
  comment = "Retrieved from Table 1. P. 340"                      ### Comment (e.g. calculation, page, etc)
);

res$association[[length(res$association) + 1]] <- list(
  variable1 = "Self-efficacy",     ### Name of first variable
  variable2 = "Quit intention",     ### Name of second variable
  insignificanceOnly = FALSE,       ### Set to true if the paper only reports 'p > .05'
  counter = FALSE,                  ### If TRUE (vs FALSE/NA), outcome inconsistent with hypothesis
  r = .37,                           ### Pearson correlation
  p = NA,                           ### P-value (if nothing else is available)
  comment = "Retrieved from Table 1. P. 340"                      ### Comment (e.g. calculation, page, etc)
);
res$association[[length(res$association) + 1]] <- list(
  variable1 = "Anticipated regret",     ### Name of first variable
  variable2 = "Quit intention",     ### Name of second variable
  insignificanceOnly = FALSE,       ### Set to true if the paper only reports 'p > .05'
  counter = FALSE,                  ### If TRUE (vs FALSE/NA), outcome inconsistent with hypothesis
  r = .52,                           ### Pearson correlation
  p = NA,                           ### P-value (if nothing else is available)
  comment = "Retrieved from Table 1. P. 340"                      ### Comment (e.g. calculation, page, etc)
);

##########################################################################


##########################################################################
### UNIVARIATE RESULTS: PERCENTAGES, MEANS, ETC
##########################################################################



##########################################################################
### MEASUREMENTS AND MANIPULATIONS: THE VARIABLES IN THE STUDY
##########################################################################

res$variable[[length(res$variable) + 1]] <- list(
  variable = "Quit intention",             ### Replace 'example' with variable name
  moment = 1,                       ### moment this variable was measured/manipulated
  type = "question",                ### "question", "aggregate", or "manipulation"
  datatype = "numeric",             ### "numeric", "logical", "nominal", "ordinal", or "text"
  psytype = "proxy",             ### "demographic", "belief", "determinant", "proxy", "behavior"
  dependent = "cessation",         ### "initiation", "cessation"
  comment = NA                      ### Comment, as text; or NA
);

res$variable[[length(res$variable) + 1]] <- list(
  variable = "Attitudes",             ### Replace 'example' with variable name
  moment = 1,                       ### moment this variable was measured/manipulated
  type = "aggregate",                ### "question", "aggregate", or "manipulation"
  datatype = "numeric",             ### "numeric", "logical", "nominal", "ordinal", or "text"
  psytype = "determinant",             ### "demographic", "belief", "determinant", "proxy", "behavior"
  dependent = "cessation",         ### "initiation", "cessation"
  comment = "attitudes to smoking cessation"                      ### Comment, as text; or NA
);

res$variable[[length(res$variable) + 1]] <- list(
  variable = "Health benefit from quitting",             ### Replace 'example' with variable name
  moment = 1,                       ### moment this variable was measured/manipulated
  type = "question",                ### "question", "aggregate", or "manipulation"
  datatype = "numeric",             ### "numeric", "logical", "nominal", "ordinal", or "text"
  psytype = "belief",             ### "demographic", "belief", "determinant", "proxy", "behavior"
  dependent = "cessation",         ### "initiation", "cessation"
  comment = NA                      ### Comment, as text; or NA
);

res$variable[[length(res$variable) + 1]] <- list(
  variable = "Health risk from continuing smoking",             ### Replace 'example' with variable name
  moment = 1,                       ### moment this variable was measured/manipulated
   type = "question",                ### "question", "aggregate", or "manipulation"
  datatype = "numeric",             ### "numeric", "logical", "nominal", "ordinal", or "text"
  psytype = "belief",             ### "demographic", "belief", "determinant", "proxy", "behavior"
  dependent = "cessation",         ### "initiation", "cessation"
  comment = NA                      ### Comment, as text; or NA
);

res$variable[[length(res$variable) + 1]] <- list(
  variable = "Subjective norms",             ### Replace 'example' with variable name
  moment = 1,                       ### moment this variable was measured/manipulated
 type = "question",                ### "question", "aggregate", or "manipulation"
  datatype = "numeric",             ### "numeric", "logical", "nominal", "ordinal", or "text"
  psytype = "belief",             ### "demographic", "belief", "determinant", "proxy", "behavior"
  dependent = "cessation",         ### "initiation", "cessation"
  comment = NA                      ### Comment, as text; or NA
);

res$variable[[length(res$variable) + 1]] <- list(
  variable = "Descriptive norms - smokers",             ### Replace 'example' with variable name
  moment = 1,                       ### moment this variable was measured/manipulated
  type = "question",                ### "question", "aggregate", or "manipulation"
  datatype = "numeric",             ### "numeric", "logical", "nominal", "ordinal", or "text"
  psytype = "belief",             ### "demographic", "belief", "determinant", "proxy", "behavior"
  dependent = "cessation",         ### "initiation", "cessation"
  comment = NA                      ### Comment, as text; or NA
);

res$variable[[length(res$variable) + 1]] <- list(
  variable = "Descriptive norms - quitters",             ### Replace 'example' with variable name
  moment = 1,                       ### moment this variable was measured/manipulated
  type = "question",                ### "question", "aggregate", or "manipulation"
  datatype = "numeric",             ### "numeric", "logical", "nominal", "ordinal", or "text"
  psytype = "belief",             ### "demographic", "belief", "determinant", "proxy", "behavior"
  dependent = "cessation",         ### "initiation", "cessation"
  comment = NA                      ### Comment, as text; or NA
);

res$variable[[length(res$variable) + 1]] <- list(
  variable = "Self-efficacy",             ### Replace 'example' with variable name
  moment = 1,                       ### moment this variable was measured/manipulated
  type = "question",                ### "question", "aggregate", or "manipulation"
  datatype = "numeric",             ### "numeric", "logical", "nominal", "ordinal", or "text"
  psytype = "determinant",             ### "demographic", "belief", "determinant", "proxy", "behavior"
  dependent = "cessation",         ### "initiation", "cessation"
  comment = NA                      ### Comment, as text; or NA
);

res$variable[[length(res$variable) + 1]] <- list(
  variable = "Anticipated regret",             ### Replace 'example' with variable name
  moment = 1,                       ### moment this variable was measured/manipulated
  type = "question",                ### "question", "aggregate", or "manipulation"
  datatype = "numeric",             ### "numeric", "logical", "nominal", "ordinal", or "text"
  psytype = "belief",             ### "demographic", "belief", "determinant", "proxy", "behavior"
  dependent = "cessation",         ### "initiation", "cessation"
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
#extractionVerification(res);

### For showing the entire dataframes
#print.data.frame(extractionVerification(res)$dat$extractedVariables)
#print.data.frame(extractionVerification(res)$dat$extractedUnivariate)
#print.data.frame(extractionVerification(res)$dat$extractedAssociations)
