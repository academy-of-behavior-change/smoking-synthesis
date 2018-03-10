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
res$bibTexKey <- "Carvajal2006";

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
res$sample$description <- "Adolescent Neversmokers at baseline. Median age 12.";

### Description of geography of sample, in text
res$sample$geography <- "Urban West-Coast";

### Sample size, as a number
res$sample$size <- 1137;

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
res$measurementMoments <- 2; 
##From paper: With the exception of smoking initiation and SES -socio economic situation-,
## all variables were determined by baseline responses.
##found in section 1.2 questionnaires and measures

### For each measurement moment, specify the number of days since the
### first measurement moment. This is a vector of days; e.g., for three
### measurement moments, each a month apart, this would be:
### res$measurementTimes <- c(0, 30, 60);
res$measurementTimes <- c(0, 10*30);

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
  variable1 = "initiation",     ### Name of first variable
  variable2 = "Depressive symptoms",     ### Name of second variable
  OR = 1.06,                          ### Odds ratio
  p = .001,                           ### P-value (if nothing else is available)
  comment = ": negative affect, (absence of) positive affect,
somatic  complaints,  and  interpersonal  problems. "                      ### Comment (e.g. calculation, page, etc)
);

res$association[[length(res$association) + 1]] <- list(
  variable1 = "initiation",     ### Name of first variable
  variable2 = "Global positive expectancies",     ### Name of second variable
  OR = .95,                          ### Odds ratio
  p = .005,                           ### P-value (if nothing else is available)
  comment = "eight items from extant optimism and hope scales "                      ### Comment (e.g. calculation, page, etc)
);


res$association[[length(res$association) + 1]] <- list(
  variable1 = "initiation",     ### Name of first variable
  variable2 = "Maladaptive coping",     ### Name of second variable
  OR = 1.12,                          ### Odds ratio
  p = .001,                           ### P-value (if nothing else is available)
  comment =  "scale included 5-items (e.g., denial, helplessness, anger)"                      ### Comment (e.g. calculation, page, etc)
);


res$association[[length(res$association) + 1]] <- list(
  variable1 = "initiation",     ### Name of first variable
  variable2 = "Smoking intentions",     ### Name of second variable
  OR = 1.32,                          ### Odds ratio
  p = .001,                           ### P-value (if nothing else is available)
  comment = NA                      ### Comment (e.g. calculation, page, etc)
);


res$association[[length(res$association) + 1]] <- list(
  variable1 = "initiation",     ### Name of first variable
  variable2 = "Perceived risk",     ### Name of second variable
  OR = .86,                          ### Odds ratio
  p = .025,                           ### P-value (if nothing else is available)
  comment = NA                      ### Comment (e.g. calculation, page, etc) 
);

res$association[[length(res$association) + 1]] <- list(
  variable1 = "initiation",     ### Name of first variable
  variable2 = "Negative attitudes",     ### Name of second variable
  OR = .95,                          ### Odds ratio
  p = .05,                           ### P-value (if nothing else is available)
  comment = NA                      ### Comment (e.g. calculation, page, etc)
);

res$association[[length(res$association) + 1]] <- list(
  variable1 = "initiation",     ### Name of first variable
  variable2 = "Positive attitudes",     ### Name of second variable
  OR = 1.13,                          ### Odds ratio
  p = .001,                           ### P-value (if nothing else is available)
  comment = NA                      ### Comment (e.g. calculation, page, etc)
);

res$association[[length(res$association) + 1]] <- list(
  variable1 = "initiation",     ### Name of first variable
  variable2 = "Self efficacy",     ### Name of second variable
  OR = .85,                          ### Odds ratio
  p = .001,                           ### P-value (if nothing else is available)
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
  variable = "initiation",             ### Replace 'example' with variable name
  moment = 2,                       ### moment this variable was measured/manipulated
  type = "question",                ### "question", "aggregate", or "manipulation"
  datatype = "logical",             ### "numeric", "logical", "nominal", "ordinal", or "text"
  values = NA,                      ### Possible values; NA or a vector, e.g. c(1, 2, 3)
  labels = NA,                      ### Labels for the values; NA or e.g. c("no", "maybe", "sometimes")
  psytype = "behavior",             ### "demographic", "belief", "determinant", "proxy", "behavior"
  dependent = "initiation",         ### "initiation", "cessation"
  direction = "consistent",                   ### "consistent" (same direction as dependent), "inconsistent"
  parent = NA,                      ### Name of parent variable into which this one is aggregated
  description = NA,                 ### Description, as text; or NA
  comment = "From paper: With the exception of smoking initiation and SES -socio economic situation-,
## all variables were determined by baseline responses.
##found in section 1.2 questionnaires and measures"                     ### Comment, as text; or NA
);

res$variable[[length(res$variable) + 1]] <- list(
  variable = "Depressive symptoms",             ### Replace 'example' with variable name
  moment = 1,                       ### moment this variable was measured/manipulated
  type = "aggregate",                ### "question", "aggregate", or "manipulation"
  datatype = "numeric",             ### "numeric", "logical", "nominal", "ordinal", or "text"
  values = NA,                      ### Possible values; NA or a vector, e.g. c(1, 2, 3)
  labels = NA,                      ### Labels for the values; NA or e.g. c("no", "maybe", "sometimes")
  psytype = "determinant",             ### "demographic", "belief", "determinant", "proxy", "behavior"
  dependent = "initiation",         ### "initiation", "cessation"
  direction = "consistent",                   ### "consistent" (same direction as dependent), "inconsistent"
  parent = NA,                      ### Name of parent variable into which this one is aggregated
  description = "within the past 7 days: negative affect, (absence of) positive affect,
somatic  complaints,  and  interpersonal  problems.",                 ### Description, as text; or NA
  comment = "explanation retrieved from page 652/653 
  - proximal/distal determinants"                      ### Comment, as text; or NA
);

res$variable[[length(res$variable) + 1]] <- list(
  variable = "Global positive expectancies",             ### Replace 'example' with variable name
  moment = 1,                       ### moment this variable was measured/manipulated
  type = "aggregate",                ### "question", "aggregate", or "manipulation"
  datatype = "numeric",             ### "numeric", "logical", "nominal", "ordinal", or "text"
  values = NA,                      ### Possible values; NA or a vector, e.g. c(1, 2, 3)
  labels = NA,                      ### Labels for the values; NA or e.g. c("no", "maybe", "sometimes")
  psytype = "determinant",             ### "demographic", "belief", "determinant", "proxy", "behavior"
  dependent = "initiation",         ### "initiation", "cessation"
  direction = "inconsistent",                   ### "consistent" (same direction as dependent), "inconsistent"
  parent = NA,                      ### Name of parent variable into which this one is aggregated
  description = "eight items from extant optimism and hope scales",                 ### Description, as text; or NA
  comment = "explanation retrieved from page 
  652/653 - proximal/distal determinants"                      ### Comment, as text; or NA
);

res$variable[[length(res$variable) + 1]] <- list(
  variable = "Maladaptive coping",             ### Replace 'example' with variable name
  moment = 1,                       ### moment this variable was measured/manipulated
  type = "aggregate",                ### "question", "aggregate", or "manipulation"
  datatype = "numeric",             ### "numeric", "logical", "nominal", "ordinal", or "text"
  values = NA,                      ### Possible values; NA or a vector, e.g. c(1, 2, 3)
  labels = NA,                      ### Labels for the values; NA or e.g. c("no", "maybe", "sometimes")
  psytype = "determinant",             ### "demographic", "belief", "determinant", "proxy", "behavior"
  dependent = "initiation",         ### "initiation", "cessation"
  direction = "consistent",                   ### "consistent" (same direction as dependent), "inconsistent"
  parent = NA,                      ### Name of parent variable into which this one is aggregated
  description = "denial, helplessness, anger etc",                 ### Description, as text; or NA
  comment = "explanation retrieved from page 
  652/653 - proximal/distal determinants"                     ### Comment, as text; or NA
);

res$variable[[length(res$variable) + 1]] <- list(
  variable = "Smoking intentions",             ### Replace 'example' with variable name
  moment = 1,                       ### moment this variable was measured/manipulated
  type = "aggregate",                ### "question", "aggregate", or "manipulation"
  datatype = "numeric",             ### "numeric", "logical", "nominal", "ordinal", or "text"
  values = NA,                      ### Possible values; NA or a vector, e.g. c(1, 2, 3)
  labels = NA,                      ### Labels for the values; NA or e.g. c("no", "maybe", "sometimes")
  psytype = "proxy",             ### "demographic", "belief", "determinant", "proxy", "behavior"
  dependent = "initiation",         ### "initiation", "cessation"
  direction = "consistent",                   ### "consistent" (same direction as dependent), "inconsistent"
  parent = NA,                      ### Name of parent variable into which this one is aggregated
  description = NA,                 ### Description, as text; or NA
  comment = NA                      ### Comment, as text; or NA
);

res$variable[[length(res$variable) + 1]] <- list(
  variable = "Perceived risk",             ### Replace 'example' with variable name
  moment = 1,                       ### moment this variable was measured/manipulated
  type = "aggregate",                ### "question", "aggregate", or "manipulation"
  datatype = "numeric",             ### "numeric", "logical", "nominal", "ordinal", or "text"
  values = NA,                      ### Possible values; NA or a vector, e.g. c(1, 2, 3)
  labels = NA,                      ### Labels for the values; NA or e.g. c("no", "maybe", "sometimes")
  psytype = "determinant",             ### "demographic", "belief", "determinant", "proxy", "behavior"
  dependent = "initiation",         ### "initiation", "cessation"
  direction = NA,                   ### "consistent" (same direction as dependent), "inconsistent"
  parent = NA,                      ### Name of parent variable into which this one is aggregated
  description = NA,                 ### Description, as text; or NA
  comment = "explanation retrieved from page 653 
  page 652/653 - proximal/distal determinants"                      ### Comment, as text; or NA
);

res$variable[[length(res$variable) + 1]] <- list(
  variable = "Negative attitudes",             ### Replace 'example' with variable name
  moment = 1,                       ### moment this variable was measured/manipulated
  type = "aggregate",                ### "question", "aggregate", or "manipulation"
  datatype = "numeric",             ### "numeric", "logical", "nominal", "ordinal", or "text"
  values = NA,                      ### Possible values; NA or a vector, e.g. c(1, 2, 3)
  labels = NA,                      ### Labels for the values; NA or e.g. c("no", "maybe", "sometimes")
  psytype = "determinant",             ### "demographic", "belief", "determinant", "proxy", "behavior"
  dependent = "initiation",         ### "initiation", "cessation"
  direction = "inconsistent",                   ### "consistent" (same direction as dependent), "inconsistent"
  parent = NA,                      ### Name of parent variable into which this one is aggregated
  description = "negative attitudes toward smoking",                 ### Description, as text; or NA
  comment = "explanation retrieved from page 652/653 - proximal/distal determinants"                     ### Comment, as text; or NA
);

res$variable[[length(res$variable) + 1]] <- list(
  variable = "Positive attitudes",             ### Replace 'example' with variable name
  moment = 1,                       ### moment this variable was measured/manipulated
  type = "aggregate",                ### "question", "aggregate", or "manipulation"
  datatype = "numeric",             ### "numeric", "logical", "nominal", "ordinal", or "text"
  values = NA,                      ### Possible values; NA or a vector, e.g. c(1, 2, 3)
  labels = NA,                      ### Labels for the values; NA or e.g. c("no", "maybe", "sometimes")
  psytype = "determinant",             ### "demographic", "belief", "determinant", "proxy", "behavior"
  dependent = "initiation",         ### "initiation", "cessation"
  direction = "consistent",                   ### "consistent" (same direction as dependent), "inconsistent"
  parent = NA,                      ### Name of parent variable into which this one is aggregated
  description = "positive attitudes toward smoking",                 ### Description, as text; or NA
  comment = "explanation retrieved from page 652/653 - proximal/distal determinants"                     ### Comment, as text; or NA
);

res$variable[[length(res$variable) + 1]] <- list(
  variable = "Self efficacy",             ### Replace 'example' with variable name
  moment = 1,                       ### moment this variable was measured/manipulated
  type = "aggregate",                ### "question", "aggregate", or "manipulation"
  datatype = "numeric",             ### "numeric", "logical", "nominal", "ordinal", or "text"
  values = NA,                      ### Possible values; NA or a vector, e.g. c(1, 2, 3)
  labels = NA,                      ### Labels for the values; NA or e.g. c("no", "maybe", "sometimes")
  psytype = "determinant",             ### "demographic", "belief", "determinant", "proxy", "behavior"
  dependent = "initiation",         ### "initiation", "cessation"
  direction = "inconsistent",                   ### "consistent" (same direction as dependent), "inconsistent"
  parent = NA,                      ### Name of parent variable into which this one is aggregated
  description = NA,                 ### Description, as text; or NA
  comment = "explanation retrieved from page 652/653 - proximal/distal determinants"                      ### Comment, as text; or NA
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
#print.data.frame(extractionVerification(res)$dat$extractedAssociations)
