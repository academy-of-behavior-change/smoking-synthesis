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
res$bibTexKey <- "Bidstrup2009";

##########################################################################
##########################################################################
###
###  GENERAL INFORMATION / COMMENTS ON THIS STUDY:
###
res$generalComments <- "

Het zijn meningen van mensen die op baseline niet rookten en later nog steeds niet. 
Deze attitudes (op baseline-leeftijd) zijn dus ogenschijnlijk de ‘gunstigste’ attitudes om 
(ook 2 jaar later) niet te beginnen met roken).

There are two follow-ups, both have a variable n and a mutually adjusted analysis, 
I've taken  the mutually adjusted results only.
There's actually three N's, one for each measurement point, considering I'm only reporting 
data from the second and third measurement (the latter having the smallest N), I'm taking the N
of the first follow up (i.e the second measurement) as the 'main' N in this extraction. 

Since I'm not including data from the first measurement, I'm not sure whether 
I should include all three measurement moments, but I will for now. 
(It doesn't work out with the N I chose to include, as the N on the first measurement is much larger)
";### Make sure this line starts with a double quote and a semicolon (";)
##########################################################################
##########################################################################


##########################################################################
### SAMPLE DESCRIPTION
##########################################################################

### Description of sample, in text (e.g. "Single mothers" or "West-Coast participants", etc)
res$sample$description <- "adolescents (mean age = 13) who have never smoked";

### Description of geography of sample, in text
res$sample$geography <- "Denmark";

### Sample size, as a number
res$sample$size <- 908;

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
res$measurementMoments <- 3;

### For each measurement moment, specify the number of days since the
### first measurement moment. This is a vector of days; e.g., for three
### measurement moments, each a month apart, this would be:
### res$measurementTimes <- c(0, 30, 60);
res$measurementTimes <- c(0, 182, 547);


##########################################################################
### ASSOCIATIONS: CORRELATIONS, T-TESTS, CHI-SQUARES, ETC
##########################################################################

res$association[[length(res$association) + 1]] <- list(
  variable1 = "Attitude toward smoking",     ### Name of first variable
  var1moment = 1,                   ### Measurement moment of var 1
  variable2 = "Smoking at 1st follow up",     ### Name of second variable
  var2moment = 2,                   ### Measurement moment of var 2
  n = (877+908)/2,                         ### degrees of freedom (numerator)
  OR = 1.2,                          ### Odds ratio
  covariates = 0,                   ### Number of covariates (for multivariate analyses)
  comment = "Page 389, Table 2, column 1." ### Comment (e.g. calculation, page, etc)
);


res$association[[length(res$association) + 1]] <- list(
  variable1 = "Mother smokes",     ### Name of first variable
  var1values = c(1, 3),                  ### Values of var 1 in this analysis (e.g. post-hoc)
  var1moment = 1,                   ### Measurement moment of var 1
  variable2 = "Smoking at 1st follow up",     ### Name of second variable
  var2moment = 2,                   ### Measurement moment of var 2
  n = (877+908)/2,                         ### degrees of freedom (numerator)
  OR = 1.6,                          ### Odds ratio
  covariates = 0,                   ### Number of covariates (for multivariate analyses)
  comment = "Table 2, p. 389, column 1."                      ### Comment (e.g. calculation, page, etc)
);

res$association[[length(res$association) + 1]] <- list(
  variable1 = "Father smokes",     ### Name of first variable
  var1values = c(1, 2),                  ### Values of var 1 in this analysis (e.g. post-hoc)
  var1moment = 1,                   ### Measurement moment of var 1
  variable2 = "Smoking at 1st follow up",     ### Name of second variable
  var2moment = 2,                   ### Measurement moment of var 2
  n = (877+908)/2,                         ### degrees of freedom (numerator)
  OR = 6.1,                          ### Odds ratio
  covariates = 0,                   ### Number of covariates (for multivariate analyses)
  comment = "Table 2, p. 389, column 1."                      ### Comment (e.g. calculation, page, etc)
);

res$association[[length(res$association) + 1]] <- list(
  variable1 = "Father smokes",     ### Name of first variable
  var1values = c(1, 3),                  ### Values of var 1 in this analysis (e.g. post-hoc)
  var1moment = 1,                   ### Measurement moment of var 1
  variable2 = "Smoking at 1st follow up",     ### Name of second variable
  var2moment = 2,                   ### Measurement moment of var 2
  n = (877+908)/2,                         ### degrees of freedom (numerator)
  OR = 2.3,                          ### Odds ratio
  covariates = 0,                   ### Number of covariates (for multivariate analyses)
  comment = "Table 2, p. 389, column 1."                      ### Comment (e.g. calculation, page, etc)
);

res$association[[length(res$association) + 1]] <- list(
  variable1 = "Best friend smokes",     ### Name of first variable
  var1values = c(1, 2),                  ### Values of var 1 in this analysis (e.g. post-hoc)
  var1moment = 1,                   ### Measurement moment of var 1
  variable2 = "Smoking at 1st follow up",     ### Name of second variable
  var2moment = 2,                   ### Measurement moment of var 2
  n = (877+908)/2,                         ### degrees of freedom (numerator)
  OR = 0.7,                          ### Odds ratio
  covariates = 0,                   ### Number of covariates (for multivariate analyses)
  comment = "Table 2, p. 389, column 1."                      ### Comment (e.g. calculation, page, etc)
);

res$association[[length(res$association) + 1]] <- list(
  variable1 = "Best friend smokes",     ### Name of first variable
  var1values = c(1, 3),                  ### Values of var 1 in this analysis (e.g. post-hoc)
  var1moment = 1,                   ### Measurement moment of var 1
  variable2 = "Smoking at 1st follow up",     ### Name of second variable
  var2moment = 2,                   ### Measurement moment of var 2
  n = (877+908)/2,                         ### degrees of freedom (numerator)
  OR = 6.8,                          ### Odds ratio
  covariates = 0,                   ### Number of covariates (for multivariate analyses)
  comment = "Table 2, p. 389, column 1."                      ### Comment (e.g. calculation, page, etc)
);

res$association[[length(res$association) + 1]] <- list(
  variable1 = "Social influence (norms)",     ### Name of first variable
  var1moment =1,                   ### Measurement moment of var 1
  variable2 = "Smoking at 1st follow up",     ### Name of second variable
  var2moment = 2,                   ### Measurement moment of var 2                  
  n = (877+908)/2,				 ### Name of relevant subsample
  df1 = NA,                         ### degrees of freedom (numerator)
  df2 = NA,                         ### for anova, second degrees of freedom (denominator)
  OR = 1.3,                          ### Odds ratio
  p = NA,                           ### P-value (if nothing else is available)
  covariates = 0,                   ### Number of covariates (for multivariate analyses)
  comment = "Table 2, p. 389, column 1."                      ### Comment (e.g. calculation, page, etc)
);

res$association[[length(res$association) + 1]] <- list(
  variable1 = "Social influence (pressure)",     ### Name of first variable
  var1moment = 1,                   ### Measurement moment of var 1
  variable2 = "Smoking at 1st follow up",     ### Name of second variable
  var2moment = 2,                   ### Measurement moment of var 2                 
  n = (877+908)/2,				 ### Name of relevant subsample
  df1 = NA,                         ### degrees of freedom (numerator)
  df2 = NA,                         ### for anova, second degrees of freedom (denominator)
  OR = 1.5,                          ### Odds ratio
  comment = "Table 2, p. 389, column 1."                      ### Comment (e.g. calculation, page, etc)
);

res$association[[length(res$association) + 1]] <- list(
  variable1 = "Self-efficacy",     ### Name of first variable
  var1moment = 1,                   ### Measurement moment of var 1
  variable2 = "Smoking at 1st follow up",     ### Name of second variable
  var2moment = 2,                   ### Measurement moment of var 2
  subsample = NA,
  n = (877+908)/2,					 ### Name of relevant subsample
  df1 = NA,                         ### degrees of freedom (numerator)
  df2 = NA,                         ### for anova, second degrees of freedom (denominator)
  OR = 1.4,                          ### Odds ratio
  p = NA,                           ### P-value (if nothing else is available)
  covariates = 0,                   ### Number of covariates (for multivariate analyses)
  comment = "Table 2, p. 389, column 1."                      ### Comment (e.g. calculation, page, etc)
);

res$association[[length(res$association) + 1]] <- list(
  variable1 = "Attitude toward smoking",     ### Name of first variable
  var1moment = 1,                   ### Measurement moment of var 1
  variable2 = "Smoking at 2nd follow up",     ### Name of second variable
  var2moment = 3,                   ### Measurement moment of var 2
  n = (426+411)/2,                         ### degrees of freedom (numerator)
  df2 = NA,                         ### for anova, second degrees of freedom (denominator)
  OR = 1.1,                          ### Odds ratio
  p = NA,                           ### P-value (if nothing else is available)
  comment = "Table 2, p. 389, third column"                      ### Comment (e.g. calculation, page, etc)
);


res$association[[length(res$association) + 1]] <- list(
  variable1 = "Mother smokes",     ### Name of first variable
  var1values = c(1, 3),                  ### Values of var 1 in this analysis (e.g. post-hoc)
  var1moment = 1,                   ### Measurement moment of var 1
  variable2 = "Smoking at 2nd follow up",     ### Name of second variable
  var2moment = 3,                   ### Measurement moment of var 2
  n = (426+441)/2,                         ### degrees of freedom (numerator)
  OR = 1.8,                          ### Odds ratio
  comment = "Table 2, p. 389, third column"                      ### Comment (e.g. calculation, page, etc)
);


res$association[[length(res$association) + 1]] <- list(
  variable1 = "Father smokes",     ### Name of first variable
  var1values = c(1, 2),                  ### Values of var 1 in this analysis (e.g. post-hoc)
  var1moment = 1,                   ### Measurement moment of var 1
  variable2 = "Smoking at 2nd follow up",     ### Name of second variable
  var2moment = 3,                   ### Measurement moment of var 2
  n = (426+441)/2,                         ### degrees of freedom (numerator)
  OR = 2.8,                          ### Odds ratio
  comment = "Table 2, p. 389, third column"                      ### Comment (e.g. calculation, page, etc)
);

res$association[[length(res$association) + 1]] <- list(
  variable1 = "Father smokes",     ### Name of first variable
  var1values = c(1, 3),                  ### Values of var 1 in this analysis (e.g. post-hoc)
  var1moment = 1,                   ### Measurement moment of var 1
  variable2 = "Smoking at 2nd follow up",     ### Name of second variable
  var2moment = 3,                   ### Measurement moment of var 2
  n = (426+441)/2,                         ### degrees of freedom (numerator)
  OR = 1.8,                          ### Odds ratio
  comment = "Table 2, p. 389, third column"                      ### Comment (e.g. calculation, page, etc)
);

res$association[[length(res$association) + 1]] <- list(
  variable1 = "Best friend smokes",     ### Name of first variable
  var1values = c(1, 2),                  ### Values of var 1 in this analysis (e.g. post-hoc)
  var1moment = 1,                   ### Measurement moment of var 1
  variable2 = "Smoking at 2nd follow up",     ### Name of second variable
  var2moment = 3,                   ### Measurement moment of var 2
  n = (426+441)/2,                         ### degrees of freedom (numerator)
  OR = 0.7,                          ### Odds ratio
  comment = "Table 2, p. 389, third column"                      ### Comment (e.g. calculation, page, etc)
);

res$association[[length(res$association) + 1]] <- list(
  variable1 = "Best friend smokes",     ### Name of first variable
  var1values = c(1, 3),                  ### Values of var 1 in this analysis (e.g. post-hoc)
  var1moment = 1,                   ### Measurement moment of var 1
  variable2 = "Smoking at 2nd follow up",     ### Name of second variable
  var2moment = 3,                   ### Measurement moment of var 2
  n = (426+441)/2,                         ### degrees of freedom (numerator)
  OR = 2.2,                          ### Odds ratio
  comment = "Table 2, p. 389, third column"                      ### Comment (e.g. calculation, page, etc)
);


res$association[[length(res$association) + 1]] <- list(
  variable1 = "Social influence (norms)",     ### Name of first variable
  var1moment = 1,                   ### Measurement moment of var 1
  variable2 = "Smoking at 2nd follow up",     ### Name of second variable
  var2moment = 3,                   ### Measurement moment of var 2
  n = (426+441)/2,  ### Name of relevant subsample
  df1 = NA,                         ### degrees of freedom (numerator)
  df2 = NA,                         ### for anova, second degrees of freedom (denominator)
  OR = 1.6,                          ### Odds ratio
  comment = "Table 2, p. 389, third column"                      ### Comment (e.g. calculation, page, etc)
);

res$association[[length(res$association) + 1]] <- list(
  variable1 = "Self-efficacy",     ### Name of first variable
  var1moment = 1,                   ### Measurement moment of var 1
  variable2 = "Smoking at 2nd follow up",     ### Name of second variable
  var2moment = 3,                   ### Measurement moment of var 2
  n = (426+441)/2,  
  df1 = NA,                         ### degrees of freedom (numerator)
  df2 = NA,                         ### for anova, second degrees of freedom (denominator)                                   ### Eta squared value
  OR = 1.2,                          ### Odds ratio
  comment = "Table 2, p. 389, third column"                      ### Comment (e.g. calculation, page, etc)
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
  variable = "Attitude toward smoking",             ### Replace 'example' with variable name
  moment = 1,                       ### moment this variable was measured/manipulated
  type = "aggregate",                ### "question", "aggregate", or "manipulation"
  datatype = "numeric",             ### "numeric", "logical", "nominal", "ordinal", or "text"
  values = NA,                      ### Possible values; NA or a vector, e.g. c(1, 2, 3)
  labels = NA,  ### Labels for the values; NA or e.g. c("no", "maybe", "sometimes")
  psytype = "belief",             ### "demographic", "belief", "determinant", "proxy", "behavior"
  dependent = "initiation",
  direction = "consistent",
  ### "initiation", "cessation"
  parent = NA,                      ### Name of parent variable into which this one is aggregated
  description = "I that smoking is bad/not bad for my health, I think smoking is very stupid/not stupid",               
  comment = NA ### Comment, as text; or NA
);

res$variable[[length(res$variable) + 1]] <- list(
  variable = "Mother smokes",             ### Replace 'example' with variable name
  moment = 1,                       ### moment this variable was measured/manipulated
  type = "question",                ### "question", "aggregate", or "manipulation"
  datatype = "nominal",             ### "numeric", "logical", "nominal", "ordinal", or "text"
  values = c(1,3),                      ### Possible values; NA or a vector, e.g. c(1, 2, 3)
  labels = c("No", "Yes"),  ### Labels for the values; NA or e.g. c("no", "maybe", "sometimes")
  psytype = "belief",             ### "demographic", "belief", "determinant", "proxy", "behavior"
  dependent = "initiation",
  direction = "consistent",
  ### "initiation", "cessation"
  parent = NA,                      ### Name of parent variable into which this one is aggregated
  description = "Does your mother smoke?",                 ### Description, as text; or NA
  comment = "Figure 3, p. 387"  ### Comment, as text; or NA
);

res$variable[[length(res$variable) + 1]] <- list(
  variable = "Father smokes",             ### Replace 'example' with variable name
  moment = 1,                       ### moment this variable was measured/manipulated
  type = "question",                ### "question", "aggregate", or "manipulation"
  datatype = "nominal",             ### "numeric", "logical", "nominal", "ordinal", or "text"
  values = c(1,2,3),                      ### Possible values; NA or a vector, e.g. c(1, 2, 3)
  labels = c("No", "Don't know", "Yes"),  ### Labels for the values; NA or e.g. c("no", "maybe", "sometimes")
  psytype = "belief",             ### "demographic", "belief", "determinant", "proxy", "behavior"
  dependent = "initiation",         ### "initiation", "cessation"
  direction = "consistent",
  parent = NA,                      ### Name of parent variable into which this one is aggregated
  description = "Does your father smoke?",                 ### Description, as text; or NA
  comment = "Figure 3, p. 387"  ### Comment, as text; or NA
);

res$variable[[length(res$variable) + 1]] <- list(
  variable = "Best friend smokes",             ### Replace 'example' with variable name
  moment = 1,                       ### moment this variable was measured/manipulated
  type = "question",                ### "question", "aggregate", or "manipulation"
  datatype = "nominal",             ### "numeric", "logical", "nominal", "ordinal", or "text"
  values = c(1,2,3),                      ### Possible values; NA or a vector, e.g. c(1, 2, 3)
  labels = c("No", "Don't know", "Yes"),  ### Labels for the values; NA or e.g. c("no", "maybe", "sometimes")
  psytype = "belief",             ### "demographic", "belief", "determinant", "proxy", "behavior"
  dependent = "initiation",         ### "initiation", "cessation"
  direction = "consistent",
  parent = NA,                      ### Name of parent variable into which this one is aggregated
  description = "Does your best friend smoke?",                 ### Description, as text; or NA
  comment = "Figure 3, p. 387"  ### Comment, as text; or NA
);

res$variable[[length(res$variable) + 1]] <- list(
  variable = "Social influence (norms)",    ### Replace 'example' with variable name
  moment = 1,                      ### moment this variable was measured/manipulated
  type = "aggregate",                ### "question", "aggregate", or "manipulation"
  datatype = "numeric",             ### "numeric", "logical", "nominal", "ordinal", or "text"
  values = NA,                      ### Possible values; NA or a vector, e.g. c(1, 2, 3)
  labels = NA,                      ### Labels for the values; NA or e.g. c("no", "maybe", "sometimes")
  psytype = "determinant",             ### "demographic", "belief", "determinant", "proxy", "behavior"
  dependent = "initiation",         ### "initiation", "cessation"
  direction = "inconsistent",
  parent = NA,                      ### Name of parent variable into which this one is aggregated
  description = "My teachers/friens/best friend think its (Ok, don't care, think I should not) smoke",                 ### Description, as text; or NA
  comment = NA                      ### Comment, as text; or NA
);

res$variable[[length(res$variable) + 1]] <- list(
  variable = "Social influence (pressure)",    ### Replace 'example' with variable name
  moment = 1,                      ### moment this variable was measured/manipulated
  type = "aggregate",                ### "question", "aggregate", or "manipulation"
  datatype = "numeric",             ### "numeric", "logical", "nominal", "ordinal", or "text"
  values = NA,                      ### Possible values; NA or a vector, e.g. c(1, 2, 3)
  labels = NA,                      ### Labels for the values; NA or e.g. c("no", "maybe", "sometimes")
  psytype = "determinant",             ### "demographic", "belief", "determinant", "proxy", "behavior"
  dependent = "initiation",         ### "initiation", "cessation"
  direction = "consistent",
  parent = NA,                      ### Name of parent variable into which this one is aggregated
  description = "I've felt pressured to smoke by (friends, best friend, other adolescents) Yes/no",                 ### Description, as text; or NA
  comment = "only Yes/No answer options, therefore coded as c(1,3)"                      ### Comment, as text; or NA
);

res$variable[[length(res$variable) + 1]] <- list(
  variable = "Self-efficacy",             ### Replace 'example' with variable name
  moment = 1,                       ### moment this variable was measured/manipulated
  type = "question",                ### "question", "aggregate", or "manipulation"
  datatype = "numeric",             ### "numeric", "logical", "nominal", "ordinal", or "text"
  values = NA,                      ### Possible values; NA or a vector, e.g. c(1, 2, 3)
  labels = NA,
  ### Labels for the values; NA or e.g. c("no", "maybe", "sometimes")
  psytype = "belief",             ### "demographic", "belief", "determinant", "proxy", "behavior"
  dependent = "initiation",         ### "initiation", "cessation"
  direction = "inconsistent",
  parent = NA,                      ### Name of parent variable into which this one is aggregated
  description = "I'm (sure/probably could/not so sure/probably couldn't /sure I can't) 
  refrain from smoking if someone I had a crush on wanted me to",                 ### Description, as text; or NA
  comment = NA                      ### Comment, as text; or NA
);

res$variable[[length(res$variable) + 1]] <- list(
  variable = "Smoking at 1st follow up",             ### Replace 'example' with variable name
  moment = 2,                       ### moment this variable was measured/manipulated
  type = "aggregate",                ### "question", "aggregate", or "manipulation"
  datatype = "logical",             ### "numeric", "logical", "nominal", "ordinal", or "text"
  values = c(0,1),                      ### Possible values; NA or a vector, e.g. c(1, 2, 3)
  labels = c("neversmoke", "eversmoke"),                      ### Labels for the values; NA or e.g. c(no", "maybe", "sometimes")
  psytype = "behavior",             ### "demographic", "belief", "determinant", "proxy", "behavior"
  dependent = "initiation",
  direction = "consistent",  ### "initiation", "cessation"
  parent = NA,                      ### Name of parent variable into which this one is aggregated
  description = "asks about current and past smoking (2 items)",                 ### Description, as text; or NA
  comment = NA                      ### Comment, as text; or NA
);

res$variable[[length(res$variable) + 1]] <- list(
  variable = "Smoking at 2nd follow up",   ### Replace 'example' with variable name
  moment = 3,                       ### moment this variable was measured/manipulated
  type = "aggregate",                ### "question", "aggregate", or "manipulation"
  datatype = "logical",             ### "numeric", "logical", "nominal", "ordinal", or "text"
  values = c(0,1),                      ### Possible values; NA or a vector, e.g. c(1, 2, 3)
  labels = c("neversmoke", "eversmoke"),                      ### Labels for the values; NA or e.g. c("no", "maybe", "sometimes")
  psytype = "behavior",             ### "demographic", "belief", "determinant", "proxy", "behavior"
  dependent = "initiation",         ### "initiation", "cessation"
  direction = "consistent",
  parent = NA,                      ### Name of parent variable into which this one is aggregated
  description = "asks about current and past smoking (2 items)",                 ### Description, as text; or NA
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
