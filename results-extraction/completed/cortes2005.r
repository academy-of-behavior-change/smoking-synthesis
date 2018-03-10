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
res$bibTexKey <- "cortes2005";

##########################################################################
##########################################################################
###
###  GENERAL INFORMATION / COMMENTS ON THIS STUDY:
###
res$generalComments <- "

Spanish, data obtained in 2000, translated. 

All results retrieved from table 3 page 40.

";### Make sure this line starts with a double quote and a semicolon (";)
##########################################################################
##########################################################################


##########################################################################
### SAMPLE DESCRIPTION
##########################################################################

### Description of sample, in text (e.g. "Single mothers" or "West-Coast participants", etc)
res$sample$description <- "Adolescents between 13 and 14 years of age";

### Description of geography of sample, in text
res$sample$geography <- "Barcelona, Spain";

### Sample size, as a number
res$sample$size <- 379;

### SUBSAMPLES - REMOVE THIS SECTION IF THERE ARE NO SUBSAMPLES

### Indicate which information you want to override. Specify the subsample
### you're providing new data for in the single quotes between the double
### brackets; make sure the spelling is exactly identical to the list above.
### Use NA to specify data that should not be overridden.

res$subsample[[length(res$subsample) + 1]] <- list( ### Create object for this subsample
  name = "Non-smokers",           ### E.g. "Single mothers", "West-Coast
  description = "participants who've never smoked a single cigarette",                                 ### participants", or "Caucasian teenagers"
  geography = NA,
  size = 177
);

res$subsample[[length(res$subsample) + 1]] <- list( ### Create object for this subsample
  name = "Smokers",           ### E.g. "Single mothers", "West-Coast
  description = "Participants who've smoked at least one cigarette within the last month",                                 ### participants", or "Caucasian teenagers"
  geography = NA,
  size = 115
);

res$subsample[[length(res$subsample) + 1]] <- list( ### Create object for this subsample
  name = "Experimenters",           ### E.g. "Single mothers", "West-Coast
  description = "Participants who've smoked at least once but not within the last month",                                 ### participants", or "Caucasian teenagers"
  geography = NA,
  size = 87
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


##########################################################################


##########################################################################
### UNIVARIATE RESULTS: PERCENTAGES, MEANS, ETC
##########################################################################

res$univariate[[length(res$univariate) + 1]] <- list(
  variable = "Damage to own and others health is the worst about smoking",       ### Name of variable this result pertains to
  subsample = "Non-smokers",                   ### Name of relevant subsample, or NA
  percentage = 94.7,                  ### Percentage that endorsed 1, or NA
  comment = NA                      ### Comment or NA
);

res$univariate[[length(res$univariate) + 1]] <- list(
  variable = "Damage to own and others health is the worst about smoking",       ### Name of variable this result pertains to
  subsample = "Experimenters",                   ### Name of relevant subsample, or NA
  percentage = 89.0,                  ### Percentage that endorsed 1, or NA
  comment = NA  ### Comment or NA
);

res$univariate[[length(res$univariate) + 1]] <- list(
  variable = "Damage to own and others health is the worst about smoking",       ### Name of variable this result pertains to
  subsample = "Smokers",                   ### Name of relevant subsample, or NA
  percentage = 62.5,                  ### Percentage that endorsed 1, or NA
  comment = NA                      ### Comment or NA
);

res$univariate[[length(res$univariate) + 1]] <- list(
  variable = "Bad breath is the worst about smoking",       ### Name of variable this result pertains to
  subsample = "Non-smokers",                   ### Name of relevant subsample, or NA
  percentage = 4.4,                  ### Percentage that endorsed 1, or NA
  comment = NA                      ### Comment or NA
);

res$univariate[[length(res$univariate) + 1]] <- list(
  variable = "Bad breath is the worst about smoking",       ### Name of variable this result pertains to
  subsample = "Experimenters",                   ### Name of relevant subsample, or NA
  percentage = 8.5,                  ### Percentage that endorsed 1, or NA
  comment = NA                      ### Comment or NA
);

res$univariate[[length(res$univariate) + 1]] <- list(
  variable = "Bad breath is the worst about smoking",       ### Name of variable this result pertains to
  subsample = "Smokers",                   ### Name of relevant subsample, or NA
  percentage = 12.5,                  ### Percentage that endorsed 1, or NA
  comment = NA                      ### Comment or NA
);


res$univariate[[length(res$univariate) + 1]] <- list(
  variable = "expense is the worst about smoking",       ### Name of variable this result pertains to
  subsample = "Non-smokers",                   ### Name of relevant subsample, or NA
  percentage = 0.6 ,                  ### Percentage that endorsed 1, or NA
  comment = NA                      ### Comment or NA
);

res$univariate[[length(res$univariate) + 1]] <- list(
  variable = "expense is the worst about smoking",       ### Name of variable this result pertains to
  subsample = "Experimenters",                   ### Name of relevant subsample, or NA
  percentage = 2.4,                  ### Percentage that endorsed 1, or NA
  comment = NA                      ### Comment or NA
);

res$univariate[[length(res$univariate) + 1]] <- list(
  variable = "expense is the worst about smoking",       ### Name of variable this result pertains to
  subsample = "Smokers",                   ### Name of relevant subsample, or NA
  percentage = 25.0,                  ### Percentage that endorsed 1, or NA
  comment = NA                      ### Comment or NA
);

res$univariate[[length(res$univariate) + 1]] <- list(
  variable = "Disagree that smoking makes you feel good",       ### Name of variable this result pertains to
  subsample = "Non-smokers",                   ### Name of relevant subsample, or NA
  percentage = 7.2,                  ### Percentage that endorsed 1, or NA
  comment = NA                      ### Comment or NA
);

res$univariate[[length(res$univariate) + 1]] <- list(
  variable = "Disagree that smoking makes you feel good",       ### Name of variable this result pertains to
  subsample = "Experimenters",                   ### Name of relevant subsample, or NA
  percentage = 31.0,                  ### Percentage that endorsed 1, or NA
  comment = NA                      ### Comment or NA
);

res$univariate[[length(res$univariate) + 1]] <- list(
  variable = "Disagree that smoking makes you feel good",       ### Name of variable this result pertains to
  subsample = "Smokers",                   ### Name of relevant subsample, or NA
  percentage = 12.8,                  ### Percentage that endorsed 1, or NA
  comment = NA                      ### Comment or NA
);


res$univariate[[length(res$univariate) + 1]] <- list(
  variable = "Never bought tobacco for personal use",       ### Name of variable this result pertains to
  subsample = "Non-smokers",                   ### Name of relevant subsample, or NA
  percentage = 97.5,                  ### Percentage that endorsed 1, or NA
  comment = NA                      ### Comment or NA
);

res$univariate[[length(res$univariate) + 1]] <- list(
  variable = "Never bought tobacco for personal use",       ### Name of variable this result pertains to
  subsample = "Experimenters",                   ### Name of relevant subsample, or NA
  percentage = 69.1,                  ### Percentage that endorsed 1, or NA
  comment = NA                      ### Comment or NA
);


res$univariate[[length(res$univariate) + 1]] <- list(
  variable = "Never bought tobacco for personal use",       ### Name of variable this result pertains to
  subsample = "Smokers",                   ### Name of relevant subsample, or NA
  percentage = 12.1,                  ### Percentage that endorsed 1, or NA
  comment = "Self efficacy measure"                      ### Comment or NA
);


res$univariate[[length(res$univariate) + 1]] <- list(
  variable = "Wouldn't take a cigarette from a friend",       ### Name of variable this result pertains to
  subsample = "Non-smokers",                   ### Name of relevant subsample, or NA
  percentage = 95.6,                  ### Percentage that endorsed 1, or NA
  comment = NA                      ### Comment or NA
);

res$univariate[[length(res$univariate) + 1]] <- list(
  variable = "Wouldn't take a cigarette from a friend",       ### Name of variable this result pertains to
  subsample = "Experimenters",                   ### Name of relevant subsample, or NA
  percentage = 67.8,                  ### Percentage that endorsed 1, or NA
  comment = NA                      ### Comment or NA
);


res$univariate[[length(res$univariate) + 1]] <- list(
  variable = "Wouldn't take a cigarette from a friend",       ### Name of variable this result pertains to
  subsample = "Smokers",                   ### Name of relevant subsample, or NA
  percentage = 12.8,                  ### Percentage that endorsed 1, or NA
  comment = NA                      ### Comment or NA
);


res$univariate[[length(res$univariate) + 1]] <- list(
  variable = "Believe I won't smoke as an adult",       ### Name of variable this result pertains to
  subsample = "Non-smokers",                   ### Name of relevant subsample, or NA
  percentage = 91.1,                  ### Percentage that endorsed 1, or NA
  comment = NA                      ### Comment or NA
);

res$univariate[[length(res$univariate) + 1]] <- list(
  variable = "Believe I won't smoke as an adult",       ### Name of variable this result pertains to
  subsample = "Experimenters",                   ### Name of relevant subsample, or NA
  percentage = 67.9,                  ### Percentage that endorsed 1, or NA
  comment = NA                      ### Comment or NA
);

res$univariate[[length(res$univariate) + 1]] <- list(
  variable = "Believe I won't smoke as an adult",       ### Name of variable this result pertains to
  subsample = "Smokers",                   ### Name of relevant subsample, or NA
  percentage = 22.4,                  ### Percentage that endorsed 1, or NA
  comment = NA                      ### Comment or NA
);

##########################################################################


##########################################################################
### MEASUREMENTS AND MANIPULATIONS: THE VARIABLES IN THE STUDY
##########################################################################

res$variable[[length(res$variable) + 1]] <- list(
  variable = "Damage to own and others health is the worst about smoking",             ### Replace 'example' with variable name
  moment = 1,                       ### moment this variable was measured/manipulated
  type = "question",                ### "question", "aggregate", or "manipulation"
  datatype = "numeric",             ### "numeric", "logical", "nominal", "ordinal", or "text"
  values = NA,                      ### Possible values; NA or a vector, e.g. c(1, 2, 3)
  labels = NA,                      ### Labels for the values; NA or e.g. c("no", "maybe", "sometimes")
  psytype = "behavior",             ### "demographic", "belief", "determinant", "proxy", "behavior"
  dependent = "initiation",         ### "initiation", "cessation"
  parent = NA,                      ### Name of parent variable into which this one is aggregated
  description = NA,                 ### Description, as text; or NA
  comment = NA                      ### Comment, as text; or NA
);


res$variable[[length(res$variable) + 1]] <- list(
  variable = "Bad breath is the worst about smoking",             ### Replace 'example' with variable name
  moment = 1,                       ### moment this variable was measured/manipulated
  type = "question",                ### "question", "aggregate", or "manipulation"
  datatype = "numeric",             ### "numeric", "logical", "nominal", "ordinal", or "text"
  values = NA,                      ### Possible values; NA or a vector, e.g. c(1, 2, 3)
  labels = NA,                      ### Labels for the values; NA or e.g. c("no", "maybe", "sometimes")
  psytype = "behavior",             ### "demographic", "belief", "determinant", "proxy", "behavior"
  dependent = "initiation",         ### "initiation", "cessation"
  parent = NA,                      ### Name of parent variable into which this one is aggregated
  description = NA,                 ### Description, as text; or NA
  comment = NA                      ### Comment, as text; or NA
);




res$variable[[length(res$variable) + 1]] <- list(
  variable = "expense is the worst about smoking",             ### Replace 'example' with variable name
  moment = 1,                       ### moment this variable was measured/manipulated
  type = "question",                ### "question", "aggregate", or "manipulation"
  datatype = "numeric",             ### "numeric", "logical", "nominal", "ordinal", or "text"
  values = NA,                      ### Possible values; NA or a vector, e.g. c(1, 2, 3)
  labels = NA,                      ### Labels for the values; NA or e.g. c("no", "maybe", "sometimes")
  psytype = "behavior",             ### "demographic", "belief", "determinant", "proxy", "behavior"
  dependent = "initiation",         ### "initiation", "cessation"
  parent = NA,                      ### Name of parent variable into which this one is aggregated
  description = NA,                 ### Description, as text; or NA
  comment = NA                      ### Comment, as text; or NA
);


res$variable[[length(res$variable) + 1]] <- list(
  variable = "Disagree that smoking makes you feel good",             ### Replace 'example' with variable name
  moment = 1,                       ### moment this variable was measured/manipulated
  type = "question",                ### "question", "aggregate", or "manipulation"
  datatype = "numeric",             ### "numeric", "logical", "nominal", "ordinal", or "text"
  values = NA,                      ### Possible values; NA or a vector, e.g. c(1, 2, 3)
  labels = NA,                      ### Labels for the values; NA or e.g. c("no", "maybe", "sometimes")
  psytype = "behavior",             ### "demographic", "belief", "determinant", "proxy", "behavior"
  dependent = "initiation",         ### "initiation", "cessation"
  parent = NA,                      ### Name of parent variable into which this one is aggregated
  description = NA,                 ### Description, as text; or NA
  comment = NA                      ### Comment, as text; or NA
);


res$variable[[length(res$variable) + 1]] <- list(
  variable = "Never bought tobacco for personal use",             ### Replace 'example' with variable name
  moment = 1,                       ### moment this variable was measured/manipulated
  type = "question",                ### "question", "aggregate", or "manipulation"
  datatype = "numeric",             ### "numeric", "logical", "nominal", "ordinal", or "text"
  values = NA,                      ### Possible values; NA or a vector, e.g. c(1, 2, 3)
  labels = NA,                      ### Labels for the values; NA or e.g. c("no", "maybe", "sometimes")
  psytype = "behavior",             ### "demographic", "belief", "determinant", "proxy", "behavior"
  dependent = "initiation",         ### "initiation", "cessation"
  direction = NA,
  parent = NA,                      ### Name of parent variable into which this one is aggregated
  description = NA,                 ### Description, as text; or NA
  comment = NA                      ### Comment, as text; or NA
);


res$variable[[length(res$variable) + 1]] <- list(
  variable = "Wouldn't take a cigarette from a friend",             ### Replace 'example' with variable name
  moment = 1,                       ### moment this variable was measured/manipulated
  type = "question",                ### "question", "aggregate", or "manipulation"
  datatype = "numeric",             ### "numeric", "logical", "nominal", "ordinal", or "text"
  values = NA,                      ### Possible values; NA or a vector, e.g. c(1, 2, 3)
  labels = NA,                      ### Labels for the values; NA or e.g. c("no", "maybe", "sometimes")
  psytype = "behavior",             ### "demographic", "belief", "determinant", "proxy", "behavior"
  dependent = "initiation",         ### "initiation", "cessation"
  direction = NA,
  parent = NA,                      ### Name of parent variable into which this one is aggregated
  description = NA,                 ### Description, as text; or NA
  comment = NA                      ### Comment, as text; or NA
);

res$variable[[length(res$variable) + 1]] <- list(
  variable = "Believe I won't smoke as an adult",             ### Replace 'example' with variable name
  moment = 1,                       ### moment this variable was measured/manipulated
  type = "question",                ### "question", "aggregate", or "manipulation"
  datatype = "numeric",             ### "numeric", "logical", "nominal", "ordinal", or "text"
  values = NA,                      ### Possible values; NA or a vector, e.g. c(1, 2, 3)
  labels = NA,                      ### Labels for the values; NA or e.g. c("no", "maybe", "sometimes")
  psytype = "behavior",             ### "demographic", "belief", "determinant", "proxy", "behavior"
  dependent = "initiation",         ### "initiation", "cessation"
  direction = NA,
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
