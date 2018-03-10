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
res$bibTexKey <- "elshatarat2013";

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

### Description of sample, in text
res$sample$description <- "Men hospitalized with cardiovascular disease (CVD)";

### Description of geography of sample, in text
res$sample$geography <- "Jordan";

### Sample size, as a number
res$sample$size <- 112;

### SUBSAMPLES - REMOVE THIS SECTION IF THERE ARE NO SUBSAMPLES

### Indicate which information you want to override. Specify the subsample
### you're providing new data for in the single quotes between the double
### brackets; make sure the spelling is exactly identical to the list above.
### Use NA to specify data that should not be overridden.

res$subsample[[length(res$subsample) + 1]] <- list( ### Create object for this subsample
  name = "smokers",           ### E.g. "Single mothers", "West-Coast
  description = "includes waterpipe and cigarette smokers",                                 ### participants", or "Caucasian teenagers"
  geography = NA,
  size = 102
);

res$subsample[[length(res$subsample) + 1]] <- list( ### Create object for this subsample
  name = "Cigarette smokers",           ### E.g. "Single mothers", "West-Coast
  description = "cigarette smokers only",             ### participants", or "Caucasian teenagers"
  geography = NA,
  size = 103
);

res$subsample[[length(res$subsample) + 1]] <- list( ### Create object for this subsample
  name = "Cigarette smokers intending to quit",           ### E.g. "Single mothers", "West-Coast
  description = "cigarette smokers who intend to quit only",                                 ### participants", or "Caucasian teenagers"
  geography = NA,
  size = 84
);

##########################################################################
### METHODOLOGICAL INFORMATION
##########################################################################

### Specify how the data was collected ("qualitative" or "quantitative")
res$datacollectionmethod <- "qualitative"; ### "Face to face interviews using a structured questionnaire";

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

### The paper reports no useful associations (i.e between a
### modifiable determinant or belief related to smoking, and smoking
### initiation or cessation.

##########################################################################


##########################################################################
### UNIVARIATE RESULTS: PERCENTAGES, MEANS, ETC
##########################################################################

res$univariate[[length(res$univariate) + 1]] <- list(
  variable = "Better for health in general",
  subsample = "Cigarette smokers intending to quit",
  percentage = 100*80/84,
  comment = "Extracted from Table 4, p. 129"
);

res$univariate[[length(res$univariate) + 1]] <- list(
  variable = "Less risk of getting smoking related illness",
  subsample = "Cigarette smokers intending to quit",
  percentage = 100*68/84,
  comment = "Extracted from Table 4, p. 129"
);

res$univariate[[length(res$univariate) + 1]] <- list(
  variable = "Present health problems",
  subsample = "Cigarette smokers intending to quit",
  percentage = 100*82/84,
  comment = "Extracted from Table 4, p. 129"
);

res$univariate[[length(res$univariate) + 1]] <- list(
  variable = "Financial reasons",
  subsample = "Cigarette smokers intending to quit",
  percentage = 100*19/84,
  comment = "Extracted from Table 4, p. 129"
);

res$univariate[[length(res$univariate) + 1]] <- list(
  variable = "Family pressure",
  subsample = "Cigarette smokers intending to quit",
  percentage = 100*55/84,
  comment = "Extracted from Table 4, p. 129"
);

res$univariate[[length(res$univariate) + 1]] <- list(
  variable = "Harms children and others",
  subsample = "Cigarette smokers intending to quit",
  percentage = 100*39/84,
  comment = "Extracted from Table 4, p. 129"
);

res$univariate[[length(res$univariate) + 1]] <- list(
  variable = "Ban on smoking in public places",
  subsample = "Cigarette smokers intending to quit",
  percentage = 100*24/84,
  comment = "Extracted from Table 4, p. 129"
);

res$univariate[[length(res$univariate) + 1]] <- list(
  variable = "Doctor's advice",
  subsample = "Cigarette smokers intending to quit",
  percentage = 100*79/84,
  comment = "Extracted from Table 4, p. 129"
);

res$univariate[[length(res$univariate) + 1]] <- list(
  variable = "quitting decreases health problems",
  subsample = "Cigarette smokers",
  percentage = 100*91/103,
  comment = "Extracted from Table 2, p. 128"
);

res$univariate[[length(res$univariate) + 1]] <- list(
  variable = "smoking harms my health",
  subsample = "Cigarette smokers",
  percentage = 100*98/103,
  comment = "Extracted from Table 2, p. 128"
);

res$univariate[[length(res$univariate) + 1]] <- list(
  variable = "little benefit to quitting",
  subsample = "Cigarette smokers",
  percentage = 100*34/103,
  comment = "Extracted from Table 2, p. 128"
);

res$univariate[[length(res$univariate) + 1]] <- list(
  variable = "quitting decreases risk respiratory disease",
  subsample = "Cigarette smokers",
  percentage = 100*95/103,
  comment = "Extracted from Table 2, p. 128"
);

res$univariate[[length(res$univariate) + 1]] <- list(
  variable = "quitting decreases risk heart disease",
  subsample = "Cigarette smokers",
  percentage = 100*94/103,
  comment = "Extracted from Table 2, p. 128"
);

res$univariate[[length(res$univariate) + 1]] <- list(
  variable = "quitting decreases risk lung cancer",
  subsample = "Cigarette smokers",
  percentage = 100*72/103,
  comment = "Extracted from Table 2, p. 128"
);

res$univariate[[length(res$univariate) + 1]] <- list(
  variable = "smoking causes stroke",
  subsample = "Cigarette smokers",
  percentage = 100*50/103,
  comment = "Extracted from Table 2, p. 128"
);

res$univariate[[length(res$univariate) + 1]] <- list(
  variable = "smoking causes cardiovascular effects",
  subsample = "Cigarette smokers",
  percentage = 100*98/103,
  comment = "Extracted from Table 2, p. 128"
);

res$univariate[[length(res$univariate) + 1]] <- list(
  variable = "smoking causes respiratory system diseases",
  subsample = "Cigarette smokers",
  percentage = 100*103/103,
  comment = "Extracted from Table 2, p. 128"
);

res$univariate[[length(res$univariate) + 1]] <- list(
  variable = "smoking causes lung cancer",
  subsample = "Cigarette smokers",
  percentage = 100*87/103,
  comment = "Extracted from Table 2, p. 128"
);

res$univariate[[length(res$univariate) + 1]] <- list(
  variable = "smoking causes other bodily effects",
  subsample = "Cigarette smokers",
  percentage = 100*40/103,
  comment = "Extracted from Table 2, p. 128"
);

##########################################################################


##########################################################################
### MEASUREMENTS AND MANIPULATIONS: THE VARIABLES IN THE STUDY
##########################################################################

res$variable[[length(res$variable) + 1]] <- list(
  variable = "Better for health in general",             ### Replace 'example' with variable name
  moment = 1,                       ### moment this variable was measured/manipulated
  type = "question",                ### "question", "aggregate", or "manipulation"
  datatype = "logical",             ### "numeric", "logical", "nominal", "ordinal", or "text"
  psytype = "belief",             ### "demographic", "belief", "determinant", "proxy", "behavior"
  dependent = "cessation",         ### "initiation", "cessation"
  description = NA,                 ### Description, as text; or NA
  comment = "Retrieved from Table 4 p. 129, 1st item
  PAY close attention when processing these results, the results of table 4 are very likely dichotomous,
but this is NOT explicitly stated in the paper, but can be assumed based on the presentation (especially compared 
  to table 2, where 'very likely/likely' are specifically mentioned as a way of dichotomisation in presentation
  only."
);

res$variable[[length(res$variable) + 1]] <- list(
  variable = "Less risk of getting smoking related illness",             ### Replace 'example' with variable name
  moment = 1,                       ### moment this variable was measured/manipulated
  type = "question",                ### "question", "aggregate", or "manipulation"
  datatype = "logical",             ### "numeric", "logical", "nominal", "ordinal", or "text"
  psytype = "belief",             ### "demographic", "belief", "determinant", "proxy", "behavior"
  dependent = "cessation",         ### "initiation", "cessation"
  description = NA,                 ### Description, as text; or NA
  comment = "Retrieved from Table 4 p. 129, 2nd item
  PAY close attention when processing these results, the results of table 4 are very likely dichotomous,
but this is NOT explicitly stated in the paper, but can be assumed based on the presentation (especially compared 
  to table 2, where 'very likely/likely' are specifically mentioned as a way of dichotomisation in presentation
  only."                     ### Comment, as text; or NA
);


res$variable[[length(res$variable) + 1]] <- list(
  variable = "Present health problems",             ### Replace 'example' with variable name
  moment = 1,                       ### moment this variable was measured/manipulated
  type = "question",                ### "question", "aggregate", or "manipulation"
  datatype = "logical",             ### "numeric", "logical", "nominal", "ordinal", or "text"
  psytype = "belief",             ### "demographic", "belief", "determinant", "proxy", "behavior"
  dependent = "cessation",         ### "initiation", "cessation"
  description = NA,                 ### Description, as text; or NA
  comment = "Retrieved from Table 4 p. 129, 3rd item
  PAY close attention when processing these results, the results of table 4 are very likely dichotomous,
but this is NOT explicitly stated in the paper, but can be assumed based on the presentation (especially compared 
  to table 2, where 'very likely/likely' are specifically mentioned as a way of dichotomisation in presentation
  only."                      ### Comment, as text; or NA

  );


res$variable[[length(res$variable) + 1]] <- list(
  variable = "Financial reasons",             ### Replace 'example' with variable name
  moment = 1,                       ### moment this variable was measured/manipulated
  type = "question",                ### "question", "aggregate", or "manipulation"
  datatype = "logical",             ### "numeric", "logical", "nominal", "ordinal", or "text"
  psytype = "belief",             ### "demographic", "belief", "determinant", "proxy", "behavior"
  dependent = "cessation",         ### "initiation", "cessation"
  description = NA,                 ### Description, as text; or NA
  comment = "Retrieved from Table 4 p. 129, 4th item
  PAY close attention when processing these results, the results of table 4 are very likely dichotomous,
but this is NOT explicitly stated in the paper, but can be assumed based on the presentation (especially compared 
  to table 2, where 'very likely/likely' are specifically mentioned as a way of dichotomisation in presentation
  only."                      ### Comment, as text; or NA
);


res$variable[[length(res$variable) + 1]] <- list(
  variable = "Family pressure",             ### Replace 'example' with variable name
  moment = 1,                       ### moment this variable was measured/manipulated
  type = "question",                ### "question", "aggregate", or "manipulation"
  datatype = "logical",             ### "numeric", "logical", "nominal", "ordinal", or "text"
  psytype = "belief",             ### "demographic", "belief", "determinant", "proxy", "behavior"
  dependent = "cessation",         ### "initiation", "cessation"
  description = NA,                 ### Description, as text; or NA
  comment = "Retrieved from Table 4 p. 129, 5th item
  PAY close attention when processing these results, the results of table 4 are very likely dichotomous,
but this is NOT explicitly stated in the paper, but can be assumed based on the presentation (especially compared 
  to table 2, where 'very likely/likely' are specifically mentioned as a way of dichotomisation in presentation
  only."                     ### Comment, as text; or NA
);

res$variable[[length(res$variable) + 1]] <- list(
  variable = "Harms children and others",             ### Replace 'example' with variable name
  moment = 1,                       ### moment this variable was measured/manipulated
  type = "question",                ### "question", "aggregate", or "manipulation"
  datatype = "logical",             ### "numeric", "logical", "nominal", "ordinal", or "text"
  psytype = "belief",             ### "demographic", "belief", "determinant", "proxy", "behavior"
  dependent = "cessation",         ### "initiation", "cessation"
  description = NA,                 ### Description, as text; or NA
  comment = "Retrieved from Table 4 p. 129, 6th item
  PAY close attention when processing these results, the results of table 4 are very likely dichotomous,
but this is NOT explicitly stated in the paper, but can be assumed based on the presentation (especially compared 
  to table 2, where 'very likely/likely' are specifically mentioned as a way of dichotomisation in presentation
  only."                      ### Comment, as text; or NA
);

res$variable[[length(res$variable) + 1]] <- list(
  variable = "Ban on smoking in public places",             ### Replace 'example' with variable name
  moment = 1,                       ### moment this variable was measured/manipulated
  type = "question",                ### "question", "aggregate", or "manipulation"
  datatype = "logical",             ### "numeric", "logical", "nominal", "ordinal", or "text"
  psytype = "belief",             ### "demographic", "belief", "determinant", "proxy", "behavior"
  dependent = "cessation",         ### "initiation", "cessation"
  description = NA,                 ### Description, as text; or NA
  comment = "Retrieved from Table 4 p. 129, 7th item
  PAY close attention when processing these results, the results of table 4 are very likely dichotomous,
but this is NOT explicitly stated in the paper, but can be assumed based on the presentation (especially compared 
  to table 2, where 'very likely/likely' are specifically mentioned as a way of dichotomisation in presentation
  only."                      ### Comment, as text; or NA
);

res$variable[[length(res$variable) + 1]] <- list(
  variable = "Doctor's advice",             ### Replace 'example' with variable name
  moment = 1,                       ### moment this variable was measured/manipulated
  type = "question",                ### "question", "aggregate", or "manipulation"
  datatype = "logical",             ### "numeric", "logical", "nominal", "ordinal", or "text"
  psytype = "belief",             ### "demographic", "belief", "determinant", "proxy", "behavior"
  dependent = "cessation",         ### "initiation", "cessation"
  description = NA,                 ### Description, as text; or NA
  comment = "Retrieved from Table 4 p. 129, 8th item
  PAY close attention when processing these results, the results of table 4 are very likely dichotomous,
but this is NOT explicitly stated in the paper, but can be assumed based on the presentation (especially compared 
  to table 2, where 'very likely/likely' are specifically mentioned as a way of dichotomisation in presentation
  only."                      ### Comment, as text; or NA
);

res$variable[[length(res$variable) + 1]] <- list(
  variable = "quitting decreases health problems",             ### Replace 'example' with variable name
  moment = 1,                       ### moment this variable was measured/manipulated
  type = "question",                ### "question", "aggregate", or "manipulation"
  datatype = "numeric",             ### "numeric", "logical", "nominal", "ordinal", or "text"
  psytype = "belief",             ### "demographic", "belief", "determinant", "proxy", "behavior"
  dependent = "cessation",         ### "initiation", "cessation"
  description = NA,                 ### Description, as text; or NA
  comment = "Retrieved from Table 2, p. 128. In Benefits of smoking cessation, 1st item
  Answers were presented on a scale of 1-10, but are reported in a dichotomized fashion
  likely/very likely"                      ### Comment, as text; or NA
);

res$variable[[length(res$variable) + 1]] <- list(
  variable = "smoking harms my health",             ### Replace 'example' with variable name
  moment = 1,                       ### moment this variable was measured/manipulated
  type = "question",                ### "question", "aggregate", or "manipulation"
  datatype = "numeric",             ### "numeric", "logical", "nominal", "ordinal", or "text"
  psytype = "belief",             ### "demographic", "belief", "determinant", "proxy", "behavior"
  dependent = "cessation",         ### "initiation", "cessation"
  description = NA,                 ### Description, as text; or NA
  comment = "Retrieved from Table 2, p. 128. In Benefits of smoking cessation, 2nd item
  Answers were presented on a scale of 1-10, but are reported in a dichotomized fashion
  likely/very likely"                        ### Comment, as text; or NA
);

res$variable[[length(res$variable) + 1]] <- list(
  variable = "little benefit to quitting",             ### Replace 'example' with variable name
  moment = 1,                       ### moment this variable was measured/manipulated
  type = "question",                ### "question", "aggregate", or "manipulation"
  datatype = "numeric",             ### "numeric", "logical", "nominal", "ordinal", or "text"
  psytype = "belief",             ### "demographic", "belief", "determinant", "proxy", "behavior"
  dependent = "cessation",         ### "initiation", "cessation"
  description = NA,                 ### Description, as text; or NA
  comment = "Retrieved from Table 2, p. 128. In Benefits of smoking cessation 3rd item
  Answers were presented on a scale of 1-10, but are reported in a dichotomized fashion
  likely/very likely"                      ### Comment, as text; or NA
);

res$variable[[length(res$variable) + 1]] <- list(
  variable = "quitting decreases risk respiratory disease",             ### Replace 'example' with variable name
  moment = 1,                       ### moment this variable was measured/manipulated
  type = "question",                ### "question", "aggregate", or "manipulation"
  datatype = "numeric",             ### "numeric", "logical", "nominal", "ordinal", or "text"
  psytype = "belief",             ### "demographic", "belief", "determinant", "proxy", "behavior"
  dependent = "cessation",         ### "initiation", "cessation"
  description = NA,                 ### Description, as text; or NA
  comment = "Retrieved from Table 2, p. 128. In Benefits of smoking cessation, 4th item
  Answers were presented on a scale of 1-10, but are reported in a dichotomized fashion
  likely/very likely"                        ### Comment, as text; or NA
);

res$variable[[length(res$variable) + 1]] <- list(
  variable = "quitting decreases risk heart disease",             ### Replace 'example' with variable name
  moment = 1,                       ### moment this variable was measured/manipulated
  type = "question",                ### "question", "aggregate", or "manipulation"
  datatype = "numeric",             ### "numeric", "logical", "nominal", "ordinal", or "text"
  psytype = "belief",             ### "demographic", "belief", "determinant", "proxy", "behavior"
  dependent = "cessation",         ### "initiation", "cessation"
  description = NA,                 ### Description, as text; or NA
  comment = "Retrieved from Table 2, p. 128. In Benefits of smoking cessation, 5th item
  Answers were presented on a scale of 1-10, but are reported in a dichotomized fashion
  likely/very likely"                        ### Comment, as text; or NA
);

res$variable[[length(res$variable) + 1]] <- list(
  variable = "quitting decreases risk lung cancer",             ### Replace 'example' with variable name
  moment = 1,                       ### moment this variable was measured/manipulated
  type = "question",                ### "question", "aggregate", or "manipulation"
  datatype = "numeric",             ### "numeric", "logical", "nominal", "ordinal", or "text"
  psytype = "belief",             ### "demographic", "belief", "determinant", "proxy", "behavior"
  dependent = "cessation",         ### "initiation", "cessation"
  description = NA,                 ### Description, as text; or NA
  comment = "Retrieved from Table 2, p. 128. In Benefits of smoking cessation, 6th item
  Answers were presented on a scale of 1-10, but are reported in a dichotomized fashion
  likely/very likely"                        ### Comment, as text; or NA
);

res$variable[[length(res$variable) + 1]] <- list(
  variable = "smoking causes stroke",             ### Replace 'example' with variable name
  moment = 1,                       ### moment this variable was measured/manipulated
  type = "question",                ### "question", "aggregate", or "manipulation"
  datatype = "numeric",             ### "numeric", "logical", "nominal", "ordinal", or "text"
  psytype = "belief",             ### "demographic", "belief", "determinant", "proxy", "behavior"
  dependent = "cessation",         ### "initiation", "cessation"
  description = NA,                 ### Description, as text; or NA
  comment = "Retrieved from Table 2, p. 128. In Health hazards of smoking, 1st item
  Answers were presented on a scale of 1-10, but are reported in a dichotomized fashion
  likely/very likely"                        ### Comment, as text; or NA
);

res$variable[[length(res$variable) + 1]] <- list(
  variable = "smoking causes cardiovascular effects",             ### Replace 'example' with variable name
  moment = 1,                       ### moment this variable was measured/manipulated
  type = "question",                ### "question", "aggregate", or "manipulation"
  datatype = "numeric",             ### "numeric", "logical", "nominal", "ordinal", or "text"
  psytype = "belief",             ### "demographic", "belief", "determinant", "proxy", "behavior"
  dependent = "cessation",         ### "initiation", "cessation"
  description = NA,                 ### Description, as text; or NA
  comment = "Retrieved from Table 2, p. 128. In Health hazards of smoking, 2nd item
  Answers were presented on a scale of 1-10, but are reported in a dichotomized fashion
  likely/very likely"                     ### Comment, as text; or NA
);


res$variable[[length(res$variable) + 1]] <- list(
  variable = "smoking causes respiratory system diseases",             ### Replace 'example' with variable name
  moment = 1,                       ### moment this variable was measured/manipulated
  type = "question",                ### "question", "aggregate", or "manipulation"
  datatype = "numeric",             ### "numeric", "logical", "nominal", "ordinal", or "text"
  psytype = "belief",             ### "demographic", "belief", "determinant", "proxy", "behavior"
  dependent = "cessation",         ### "initiation", "cessation"
  description = NA,                 ### Description, as text; or NA
  comment = "Retrieved from Table 2, p. 128. In Health hazards of smoking, 3rd item
  Answers were presented on a scale of 1-10, but are reported in a dichotomized fashion
  likely/very likely"                      ### Comment, as text; or NA
);


res$variable[[length(res$variable) + 1]] <- list(
  variable = "smoking causes lung cancer",             ### Replace 'example' with variable name
  moment = 1,                       ### moment this variable was measured/manipulated
  type = "question",                ### "question", "aggregate", or "manipulation"
  datatype = "numeric",             ### "numeric", "logical", "nominal", "ordinal", or "text"
  psytype = "belief",             ### "demographic", "belief", "determinant", "proxy", "behavior"
  dependent = "cessation",         ### "initiation", "cessation"
  description = NA,                 ### Description, as text; or NA
  comment = "Retrieved from Table 2, p. 128. In Health hazards of smoking, 4th item
  Answers were presented on a scale of 1-10, but are reported in a dichotomized fashion
  likely/very likely"                      ### Comment, as text; or NA
);


res$variable[[length(res$variable) + 1]] <- list(
  variable = "smoking causes other bodily effects",             ### Replace 'example' with variable name
  moment = 1,                       ### moment this variable was measured/manipulated
  type = "question",                ### "question", "aggregate", or "manipulation"
  datatype = "numeric",             ### "numeric", "logical", "nominal", "ordinal", or "text"
  psytype = "belief",             ### "demographic", "belief", "determinant", "proxy", "behavior"
  dependent = "cessation",         ### "initiation", "cessation"
  description = NA,                 ### Description, as text; or NA
  comment = "Retrieved from Table 2, p. 128. In Health hazards of smoking, 5th item
  Answers were presented on a scale of 1-10, but are reported in a dichotomized fashion
  likely/very likely"                       ### Comment, as text; or NA
);
##########################################################################



##########################################################################
### END
##########################################################################

### Some verification functions; note that these need the 'metabefor'
### package to be installed and loaded (with 'require').

### This function checks whether for all variables that are used, the
### operationalisation is also extracted, and vice versa:
extractionVerification(res);

### For showing the entire dataframes
#print.data.frame(extractionVerification(res)$dat$extractedVariables)
#print.data.frame(extractionVerification(res)$dat$extractedUnivariate)
#print.data.frame(extractionVerification(res)$dat$extractedAssociations)
