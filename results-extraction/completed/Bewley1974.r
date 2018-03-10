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
res$bibTexKey <- "Bewley1974";

##########################################################################
##########################################################################
###
###  GENERAL INFORMATION / COMMENTS ON THIS STUDY:
###
res$generalComments <- "

The original N was 293, but due to the small number of girls (64), 
only data on boys are reported in current paper.
This brings the N down to 229. (See: Summary page 37/38)

";### Make sure this line starts with a double quote and a semicolon (";)
##########################################################################
##########################################################################


##########################################################################
### SAMPLE DESCRIPTION
##########################################################################

### Description of sample, in text (e.g. "Single mothers" or "West-Coast participants", etc)
res$sample$description <- "Boys between the ages of 10 and 11.5";

### Description of geography of sample, in text
res$sample$geography <- "Derbyshire, United Kingdom";

### Sample size, as a number
res$sample$size <- 229;

### SUBSAMPLES - REMOVE THIS SECTION IF THERE ARE NO SUBSAMPLES

### Indicate which information you want to override. Specify the subsample
### you're providing new data for in the single quotes between the double
### brackets; make sure the spelling is exactly identical to the list above.
### Use NA to specify data that should not be overridden.

res$subsample[[length(res$subsample) + 1]] <- list( ### Create object for this subsample
  name = "Heavy Smokers",           ### E.g. "Single mothers", "West-Coast
  description = "Boys who smoke 1 cigarette a day or more",                                 ### participants", or "Caucasian teenagers"
  geography = NA,
  size = 29
);

res$subsample[[length(res$subsample) + 1]] <- list( ### Create object for this subsample
  name = "Light Smokers",           ### E.g. "Single mothers", "West-Coast
  description = "Boys who smoke less than 1 cigarette a day",                                 ### participants", or "Caucasian teenagers"
  geography = NA,
  size = 48
);
res$subsample[[length(res$subsample) + 1]] <- list( ### Create object for this subsample
  name = "Experimental Smokers",           ### E.g. "Single mothers", "West-Coast
  description = "Boys who've smoked once, even a puff",                                 ### participants", or "Caucasian teenagers"
  geography = NA,
  size = 76
);
res$subsample[[length(res$subsample) + 1]] <- list( ### Create object for this subsample
  name = "Non Smokers",           ### E.g. "Single mothers", "West-Coast
  description = "Boys who've never smoked",                                 ### participants", or "Caucasian teenagers"
  geography = NA,
  size = 76
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
  variable1 = "Bad idea for children to smoke",     ### Name of first variable
  var1values = NA,                  ### Values of var 1 in this analysis (e.g. post-hoc)
  var1moment = 1,                   ### Measurement moment of var 1
  variable2 = "Smoking status",     ### Name of second variable
  var2values = NA,                  ### Values of var 2 in this analysis (e.g. post-hoc)
  var2moment = 1,                   ### Measurement moment of var 2
  subsample = NA,                   ### Name of relevant subsample
  df1 = 3,                         ### degrees of freedom (numerator)
  chisq = 9.9,                       ### Chi square value
							### Odds ratio
                            ### P-value (if nothing else is available)
                     ### Number of covariates (for multivariate analyses)
  comment = "DF= 3 want 4 groepen - 1"   ### Comment (e.g. calculation, page, etc)
);

res$association[[length(res$association) + 1]] <- list(
  variable1 = "Smoking is enjoyable",     ### Name of first variable
  var1moment = 1,                   
  variable2 = "Smoking status",     ### Name of second variable
  var2moment = 1,                   ### Measurement moment of var 2
  subsample = NA,                   ### Name of relevant subsample
  df1 = 3,                         ### degrees of freedom (numerator)                                                  
  chisq = 12.0,                       ### Chi square value
  comment = NA                      ### Comment (e.g. calculation, page, etc)
);

res$association[[length(res$association) + 1]] <- list(
  variable1 = "Smoking is a waste of money",     ### Name of first variable
  var1moment = 1,                   
  variable2 = "Smoking status",     ### Name of second variable
  var2moment = 1,                   ### Measurement moment of var 2
  subsample = NA,                   ### Name of relevant subsample
  df1 = 3,                         ### degrees of freedom (numerator)                                                  
  chisq = 22.4,                       ### Chi square value
  comment = NA                      ### Comment (e.g. calculation, page, etc)
);

res$association[[length(res$association) + 1]] <- list(
  variable1 = "Nice to smoke with friends",     ### Name of first variable
  var1moment = 1,                   
  variable2 = "Smoking status",     ### Name of second variable
  var2moment = 1,                   ### Measurement moment of var 2
  subsample = NA,                   ### Name of relevant subsample
  df1 = 3,                         ### degrees of freedom (numerator)                                                  
  chisq = 19.2,                       ### Chi square value
  comment = NA                      ### Comment (e.g. calculation, page, etc)
);

res$association[[length(res$association) + 1]] <- list(
  variable1 = "Smoking makes you feel grown up",     ### Name of first variable
  var1moment = 1,                   
  variable2 = "Smoking status",     ### Name of second variable
  var2moment = 1,                   ### Measurement moment of var 2
  subsample = NA,                   ### Name of relevant subsample
  df1 = 3,                         ### degrees of freedom (numerator)                                                  
  chisq = 5.0,                       ### Chi square value
  comment = "non significant"                     ### Comment (e.g. calculation, page, etc)
);

res$association[[length(res$association) + 1]] <- list(
  variable1 = "Parents should not be angry if their children smoke",     ### Name of first variable
  var1moment = 1,                   
  variable2 = "Smoking status",     ### Name of second variable
  var2moment = 1,                   ### Measurement moment of var 2
  subsample = NA,                   ### Name of relevant subsample
  df1 = 3,                         ### degrees of freedom (numerator)                                                  
  chisq = 1.4,                       ### Chi square value
  comment = "non significant"                      ### Comment (e.g. calculation, page, etc)
);

res$association[[length(res$association) + 1]] <- list(
  variable1 = "Smoking causes cancer",     ### Name of first variable
  var1moment = 1,                   
  variable2 = "Smoking status",     ### Name of second variable
  var2moment = 1,                   ### Measurement moment of var 2
  subsample = NA,                   ### Name of relevant subsample
  df1 = 3,                         ### degrees of freedom (numerator)                                                  
  chisq = 1.0,                       ### Chi square value
  comment = "non significant"                      ### Comment (e.g. calculation, page, etc)
);

res$association[[length(res$association) + 1]] <- list(
  variable1 = "Smoking is not harmful",     ### Name of first variable
  var1moment = 1,                   
  variable2 = "Smoking status",     ### Name of second variable
  var2moment = 1,                   ### Measurement moment of var 2
  subsample = NA,                   ### Name of relevant subsample
  df1 = 3,                         ### degrees of freedom (numerator)                                                  
  chisq = 3.3,                       ### Chi square value
  comment = "non significant"                      ### Comment (e.g. calculation, page, etc)
);

res$association[[length(res$association) + 1]] <- list(
  variable1 = "People my age smoke to show off",     ### Name of first variable
  var1moment = 1,                   
  variable2 = "Smoking status",     ### Name of second variable
  var2moment = 1,                   ### Measurement moment of var 2
  subsample = NA,                   ### Name of relevant subsample
  df1 = 3,                         ### degrees of freedom (numerator)                                                  
  chisq = 12.8,                       ### Chi square value
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
  variable = "Bad idea for children to smoke",             ### Replace 'example' with variable name
  moment = 1,                       ### moment this variable was measured/manipulated
  type = "question",                ### "question", "aggregate", or "manipulation"
  datatype = "logical",             ### "numeric", "logical", "nominal", "ordinal", or "text"
  values = NA,                      ### Possible values; NA or a vector, e.g. c(1, 2, 3)
  labels = NA,                      ### Labels for the values; NA or e.g. c("no", "maybe", "sometimes")
  psytype = "belief",             ### "demographic", "belief", "determinant", "proxy", "behavior"
  dependent = "initiation",         ### "initiation", "cessation"
  direction = "inconsistent",
  parent = NA,                      ### Name of parent variable into which this one is aggregated
  description = "Boys were asked if they agreed with statement in variable.",                 ### Description, as text; or NA
  comment = "retrieved from page 42. Table IX"                     ### Comment, as text; or NA
);

res$variable[[length(res$variable) + 1]] <- list(
  variable = "Smoking is enjoyable",             ### Replace 'example' with variable name
  moment = 1,                       ### moment this variable was measured/manipulated
  type = "question",                ### "question", "aggregate", or "manipulation"
  datatype = "logical",             ### "numeric", "logical", "nominal", "ordinal", or "text"
  values = NA,                      ### Possible values; NA or a vector, e.g. c(1, 2, 3)
  labels = NA,                      ### Labels for the values; NA or e.g. c("no", "maybe", "sometimes")
  psytype = "belief",             ### "demographic", "belief", "determinant", "proxy", "behavior"
  dependent = "initiation",         ### "initiation", "cessation"
  direction = "consistent",
  parent = NA,                      ### Name of parent variable into which this one is aggregated
  description = "Boys were asked if they agreed with statement in variable.",                 ### Description, as text; or NA
  comment = "retrieved from page 42. Table IX"                    ### Comment, as text; or NA
);

res$variable[[length(res$variable) + 1]] <- list(
  variable = "Smoking is a waste of money",             ### Replace 'example' with variable name
  moment = 1,                       ### moment this variable was measured/manipulated
  type = "question",                ### "question", "aggregate", or "manipulation"
  datatype = "logical",             ### "numeric", "logical", "nominal", "ordinal", or "text"
  values = NA,                      ### Possible values; NA or a vector, e.g. c(1, 2, 3)
  labels = NA,                      ### Labels for the values; NA or e.g. c("no", "maybe", "sometimes")
  psytype = "belief",             ### "demographic", "belief", "determinant", "proxy", "behavior"
  dependent = "initiation",         ### "initiation", "cessation"
  direction = "inconsistent",
  parent = NA,                      ### Name of parent variable into which this one is aggregated
  description = "Boys were asked if they agreed with statement in variable.",                 ### Description, as text; or NA
  comment = "retrieved from page 42. Table IX"                      ### Comment, as text; or NA
);

res$variable[[length(res$variable) + 1]] <- list(
  variable = "Nice to smoke with friends",             ### Replace 'example' with variable name
  moment = 1,                       ### moment this variable was measured/manipulated
  type = "question",                ### "question", "aggregate", or "manipulation"
  datatype = "logical",             ### "numeric", "logical", "nominal", "ordinal", or "text"
  values = NA,                      ### Possible values; NA or a vector, e.g. c(1, 2, 3)
  labels = NA,                      ### Labels for the values; NA or e.g. c("no", "maybe", "sometimes")
  psytype = "belief",             ### "demographic", "belief", "determinant", "proxy", "behavior"
  dependent = "initiation",         ### "initiation", "cessation"
  direction = "consistent",
  parent = NA,                      ### Name of parent variable into which this one is aggregated
  description = "Boys were asked if they agreed with statement in variable.",                 ### Description, as text; or NA
  comment = "retrieved from page 42. Table IX"                      ### Comment, as text; or NA
);

res$variable[[length(res$variable) + 1]] <- list(
  variable = "Smoking makes you feel grown up",             ### Replace 'example' with variable name
  moment = 1,                       ### moment this variable was measured/manipulated
  type = "question",                ### "question", "aggregate", or "manipulation"
  datatype = "logical",             ### "numeric", "logical", "nominal", "ordinal", or "text"
  values = NA,                      ### Possible values; NA or a vector, e.g. c(1, 2, 3)
  labels = NA,                      ### Labels for the values; NA or e.g. c("no", "maybe", "sometimes")
  psytype = "belief",             ### "demographic", "belief", "determinant", "proxy", "behavior"
  dependent = "initiation",         ### "initiation", "cessation"
  direction = "consistent",
  parent = NA,                      ### Name of parent variable into which this one is aggregated
  description = "Boys were asked if they agreed with statement in variable.",                 ### Description, as text; or NA
  comment = "retrieved from page 42. Table IX"                      ### Comment, as text; or NA
);


res$variable[[length(res$variable) + 1]] <- list(
  variable = "Parents should not be angry if their children smoke",             ### Replace 'example' with variable name
  moment = 1,                       ### moment this variable was measured/manipulated
  type = "question",                ### "question", "aggregate", or "manipulation"
  datatype = "logical",             ### "numeric", "logical", "nominal", "ordinal", or "text"
  values = NA,                      ### Possible values; NA or a vector, e.g. c(1, 2, 3)
  labels = NA,                      ### Labels for the values; NA or e.g. c("no", "maybe", "sometimes")
  psytype = "belief",             ### "demographic", "belief", "determinant", "proxy", "behavior"
  dependent = "initiation",         ### "initiation", "cessation"
  direction = "consistent",
  parent = NA,                      ### Name of parent variable into which this one is aggregated
  description = "Boys were asked if they agreed with statement in variable.",                 ### Description, as text; or NA
  comment = "retrieved from page 42. Table IX"                      ### Comment, as text; or NA
);

res$variable[[length(res$variable) + 1]] <- list(
  variable = "Smoking causes cancer",             ### Replace 'example' with variable name
  moment = 1,                       ### moment this variable was measured/manipulated
  type = "question",                ### "question", "aggregate", or "manipulation"
  datatype = "logical",             ### "numeric", "logical", "nominal", "ordinal", or "text"
  values = NA,                      ### Possible values; NA or a vector, e.g. c(1, 2, 3)
  labels = NA,                      ### Labels for the values; NA or e.g. c("no", "maybe", "sometimes")
  psytype = "belief",             ### "demographic", "belief", "determinant", "proxy", "behavior"
  dependent = "initiation",         ### "initiation", "cessation"
  direction = "inconsistent",
  parent = NA,                      ### Name of parent variable into which this one is aggregated
  description = "Boys were asked if they agreed with statement in variable.",                 ### Description, as text; or NA
  comment = "retrieved from page 42. Table IX"                      ### Comment, as text; or NA
);

res$variable[[length(res$variable) + 1]] <- list(
  variable = "Smoking is not harmful",             ### Replace 'example' with variable name
  moment = 1,                       ### moment this variable was measured/manipulated
  type = "question",                ### "question", "aggregate", or "manipulation"
  datatype = "logical",             ### "numeric", "logical", "nominal", "ordinal", or "text"
  values = NA,                      ### Possible values; NA or a vector, e.g. c(1, 2, 3)
  labels = NA,                      ### Labels for the values; NA or e.g. c("no", "maybe", "sometimes")
  psytype = "belief",             ### "demographic", "belief", "determinant", "proxy", "behavior"
  dependent = "initiation",         ### "initiation", "cessation"
  direction = "consistent",
  parent = NA,                      ### Name of parent variable into which this one is aggregated
  description = "Boys were asked if they agreed with statement in variable.",                 ### Description, as text; or NA
  comment = "retrieved from page 42. Table IX"                      ### Comment, as text; or NA
);

res$variable[[length(res$variable) + 1]] <- list(
  variable = "People my age smoke to show off",             ### Replace 'example' with variable name
  moment = 1,                       ### moment this variable was measured/manipulated
  type = "question",                ### "question", "aggregate", or "manipulation"
  datatype = "logical",             ### "numeric", "logical", "nominal", "ordinal", or "text"
  values = NA,                      ### Possible values; NA or a vector, e.g. c(1, 2, 3)
  labels = NA,                      ### Labels for the values; NA or e.g. c("no", "maybe", "sometimes")
  psytype = "belief",             ### "demographic", "belief", "determinant", "proxy", "behavior"
  dependent = "initiation",         ### "initiation", "cessation"
  direction = "consistent",
  parent = NA,                      ### Name of parent variable into which this one is aggregated
  description = "Boys were asked if they agreed with statement in variable.",                 ### Description, as text; or NA
  comment = "retrieved from page 42. Table IX"                      ### Comment, as text; or NA
);

res$variable[[length(res$variable) + 1]] <- list(
  variable = "Smoking status",             ### Replace 'example' with variable name
  moment = 1,                       ### moment this variable was measured/manipulated
  type = "question",                ### "question", "aggregate", or "manipulation"
  datatype = "ordinal",             ### "numeric", "logical", "nominal", "ordinal", or "text"
  values = c(0,1,2,3),                      ### Possible values; NA or a vector, e.g. c(1, 2, 3)
  labels = c("Non-smoker","Experimental Smoker", "Light Smoker","Heavy Smoker"), ### Labels for the values; NA or e.g. c("no", "maybe", "sometimes")
  psytype = "behavior",             ### "demographic", "belief", "determinant", "proxy", "behavior"
  dependent = "initiation",         ### "initiation", "cessation"
  direction = "consistent",
  parent = NA,                      ### Name of parent variable into which this one is aggregated
  description = "The category to which boys are assigned based on their smoking behaviour.",                 ### Description, as text; or NA
  comment = "Retrieved from Table IX, page 43"                     ### Comment, as text; or NA
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
