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
res$bibTexKey <- "Bidstrup2011";

##########################################################################
##########################################################################
###
###  GENERAL INFORMATION / COMMENTS ON THIS STUDY:
###
res$generalComments <- "

There's two measurement moments, however the results discussed in the paper were only
obtained in the second interview. 
The current study is connected to a quantitative intervention study. 
The 12 students reported in the current qualitative results are also 
part of the sample of the connected quantitative study. 
The sample is very multi-ethnic. 
";### Make sure this line starts with a double quote and a semicolon (";)
##########################################################################
##########################################################################


##########################################################################
### SAMPLE DESCRIPTION
##########################################################################

### Description of sample, in text (e.g. "Single mothers" or "West-Coast participants", etc)
res$sample$description <- "grade 7 and 8 adolescents";

### Description of geography of sample, in text
res$sample$geography <- "Danish";

### Sample size, as a number
res$sample$size <- 12;

### SUBSAMPLES - REMOVE THIS SECTION IF THERE ARE NO SUBSAMPLES

### Indicate which information you want to override. Specify the subsample
### you're providing new data for in the single quotes between the double
### brackets; make sure the spelling is exactly identical to the list above.
### Use NA to specify data that should not be overridden.


##########################################################################
### METHODOLOGICAL INFORMATION
##########################################################################

### Specify how the data was collected ("qualitative" or "quantitative")
res$datacollectionmethod <- "qualitative";

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
  variable = "negative health effects",       ### Name of variable this result pertains to
  qualitative = "nothing reported",                 ### Description (qualitative research)
  comment = "retrieved from bottom-left paragraph of page 92"                      ### Comment or NA
);

res$univariate[[length(res$univariate) + 1]] <- list(
  variable = "negative effects on looks",       ### Name of variable this result pertains to
  qualitative = "nothing reported",                 ### Description (qualitative research)
  comment = "retrieved from bottom-left paragraph of page 92"                      ### Comment or NA
);

res$univariate[[length(res$univariate) + 1]] <- list(
  variable = "negative effects on smell",       ### Name of variable this result pertains to
  qualitative = "nothing reported",                 ### Description (qualitative research)
  comment = "retrieved from bottom-left paragraph of page 92"                      ### Comment or NA
);

res$univariate[[length(res$univariate) + 1]] <- list(
  variable = "risks of addiction",       ### Name of variable this result pertains to
  qualitative = "nothing reported",                 ### Description (qualitative research)
  comment = "retrieved from bottom-left paragraph of page 92"                     ### Comment or NA
);

res$univariate[[length(res$univariate) + 1]] <- list(
  variable = "negative effects on physical shape",       ### Name of variable this result pertains to
  qualitative = "nothing reported",                 ### Description (qualitative research)
  comment = "retrieved from bottom-left paragraph of page 92"                      ### Comment or NA
);

res$univariate[[length(res$univariate) + 1]] <- list(
  variable = "Smoking is stupid",       ### Name of variable this result pertains to
  qualitative = "nothing reported",                 ### Description (qualitative research)
  comment = "retrieved from bottom-left paragraph of page 92"                      ### Comment or NA
  
);res$univariate[[length(res$univariate) + 1]] <- list(
  variable = "Smoking is disgusting",       ### Name of variable this result pertains to
  qualitative = "nothing reported",                 ### Description (qualitative research)
  comment = "retrieved from bottom-left paragraph of page 92"                      ### Comment or NA
);

res$univariate[[length(res$univariate) + 1]] <- list(
  variable = "Smoking-opportunity is often facilitated by friends",       ### Name of variable this result pertains to
  qualitative = "nothing reported",                 ### Description (qualitative research)
  comment = "retrieved from page 93, right text-column, in current findings-paragraph"                ### Comment or NA
);


res$univariate[[length(res$univariate) + 1]] <- list(
  variable = "Self-efficacy to resist smoking on situational social opportunities",       ### Name of variable this result pertains to
  qualitative = "nothing reported",                 ### Description (qualitative research)
  comment = "retrieved from page 95 top left text column"                      ### Comment or NA
);

res$univariate[[length(res$univariate) + 1]] <- list(
  variable = "Pressure to smoke from friends",       ### Name of variable this result pertains to
  qualitative = "nothing reported",                 ### Description (qualitative research)
  comment = "retrieved from page 94, bottom-left page"                      ### Comment or NA
);



##########################################################################


##########################################################################
### MEASUREMENTS AND MANIPULATIONS: THE VARIABLES IN THE STUDY
##########################################################################

res$variable[[length(res$variable) + 1]] <- list(
  variable = "negative health effects",             ### Replace 'example' with variable name
  moment = 1,                       ### moment this variable was measured/manipulated
  type = "question",                ### "question", "aggregate", or "manipulation"
  datatype = "text",             ### "numeric", "logical", "nominal", "ordinal", or "text"
  psytype = "belief",             ### "demographic", "belief", "determinant", "proxy", "behavior"
  dependent = "initiation",         ### "initiation", "cessation"
  direction = "inconsistent",                   ### "consistent" (same direction as dependent), "inconsistent
  description = "All the participants in the qualitative  analyses  could  describe
  the disadvantages  of smoking, including  health  effects",                
  comment = NA                      ### Comment, as text; or NA
);

res$variable[[length(res$variable) + 1]] <- list(
  variable = "negative effects on looks",             ### Replace 'example' with variable name
  moment = 1,                       ### moment this variable was measured/manipulated
  type = "question",                ### "question", "aggregate", or "manipulation"
  datatype = "text",             ### "numeric", "logical", "nominal", "ordinal", or "text"
  psytype = "belief",             ### "demographic", "belief", "determinant", "proxy", "behavior"
  dependent = "initiation", 
  direction = "inconsistent",  ### "initiation", "cessation"
  description = "All the participants in the qualitative analyses could  
  describe the disadvantages of smoking, including ... effects on looks... ",              ### Description, as text; or NA
  comment = NA                      ### Comment, as text; or NA
);

res$variable[[length(res$variable) + 1]] <- list(
  variable = "negative effects on smell",             ### Replace 'example' with variable name
  moment = 1,                       ### moment this variable was measured/manipulated
  type = "question",                ### "question", "aggregate", or "manipulation"
  datatype = "text",             ### "numeric", "logical", "nominal", "ordinal", or "text"
  psytype = "belief",             ### "demographic", "belief", "determinant", "proxy", "behavior"
  dependent = "initiation",
  direction = "inconsistent", ### "initiation", "cessation"
  description = "All the participants in the qualitative  analyses 
  could  describe  the  disadvantages  of smoking,  including ... and smell...",                 ### Description, as text; or NA
  comment = NA                      ### Comment, as text; or NA
);

res$variable[[length(res$variable) + 1]] <- list(
  variable = "risks of addiction",             ### Replace 'example' with variable name
  moment = 1,                       ### moment this variable was measured/manipulated
  type = "question",                ### "question", "aggregate", or "manipulation"
  datatype = "text",             ### "numeric", "logical", "nominal", "ordinal", or "text"
  psytype = "belief",       ### "demographic", "belief", "determinant", "proxy", "behavior"
  dependent = "initiation", 
  direction = "inconsistent",  ### "initiation", "cessation"
  description = "All the participants in the qualitative  analyses  could  describe  
  the  disadvantages  of smoking,  including,... risk for addiction...",                 ### Description, as text; or NA
  comment = NA                      ### Comment, as text; or NA
);

res$variable[[length(res$variable) + 1]] <- list(
  variable = "negative effects on physical shape",             ### Replace 'example' with variable name
  moment = 1,                       ### moment this variable was measured/manipulated
  type = "question",                ### "question", "aggregate", or "manipulation"
  datatype = "text",             ### "numeric", "logical", "nominal", "ordinal", or "text"
  psytype = "belief",             ### "demographic", "belief", "determinant", "proxy", "behavior"
  dependent = "initiation",
  direction = "inconsistent",  ### "initiation", "cessation"
  description = "All the participants in the qualitative  analyses  could  describe  
  the  disadvantages  of smoking,  including ... effect on physical shape... ",                 ### Description, as text; or NA
  comment = NA                      ### Comment, as text; or NA
);

res$variable[[length(res$variable) + 1]] <- list(
  variable = "Smoking is stupid",             ### Replace 'example' with variable name
  moment = 1,                       ### moment this variable was measured/manipulated
  type = "question",                ### "question", "aggregate", or "manipulation"
  datatype = "text",             ### "numeric", "logical", "nominal", "ordinal", or "text"
  psytype = "belief",             ### "demographic", "belief", "determinant", "proxy", "behavior"
  dependent = "initiation",
  direction = "inconsistent",  ### "initiation", "cessation"
  description = "All the participants in the qualitative  analyses  could  describe  
  the  disadvantages  of smoking  including... stupid... ",                 ### Description, as text; or NA
  comment = NA                      ### Comment, as text; or NA
);

res$variable[[length(res$variable) + 1]] <- list(
  variable = "Smoking is disgusting",             ### Replace 'example' with variable name
  moment = 1,                       ### moment this variable was measured/manipulated
  type = "question",                ### "question", "aggregate", or "manipulation"
  datatype = "text",             ### "numeric", "logical", "nominal", "ordinal", or "text"
  psytype = "belief",             ### "demographic", "belief", "determinant", "proxy", "behavior"
  dependent = "initiation",
  direction = "inconsistent",  ### "initiation", "cessation"
  description = "All the participants in the qualitative  analyses  could  describe  
  the  disadvantages  of smoking,  including... disgusting",       ### Description, as text; or NA
  comment = NA                      ### Comment, as text; or NA
);

res$variable[[length(res$variable) + 1]] <- list(
  variable = "Smoking-opportunity is often facilitated by friends",             ### Replace 'example' with variable name
  moment = 1,                       ### moment this variable was measured/manipulated
  type = "question",                ### "question", "aggregate", or "manipulation"
  datatype = "text",             ### "numeric", "logical", "nominal", "ordinal", or "text"
  psytype = "belief",             ### "demographic", "belief", "determinant", "proxy", "behavior"
  dependent = "initiation",
  direction = "consistent",  ### "initiation", "cessation"
  description = "all adolescents who had tried smoking had friends who smoked, all had 
  someone they know present when they first tried smoking (how many is not mentioned, but >12)",                 ### Description, as text; or NA
  comment = NA                      ### Comment, as text; or NA
);

res$variable[[length(res$variable) + 1]] <- list(
  variable = "Self-efficacy to resist smoking on situational social opportunities",             ### Replace 'example' with variable name
  moment = 1,                       ### moment this variable was measured/manipulated
  type = "question",                ### "question", "aggregate", or "manipulation"
  datatype = "text",             ### "numeric", "logical", "nominal", "ordinal", or "text"
  psytype = "belief",             ### "demographic", "belief", "determinant", "proxy", "behavior"
  dependent = "initiation", 
  direction = "consistent",  ### "initiation", "cessation"
  description = "I am not sure because it depends a lot on who you are with and who you are 
  and those kinds of things. And I am not able to say beforehand who I will be with at a certain time.",                 ### Description, as text; or NA
  comment = NA                      ### Comment, as text; or NA
);
res$variable[[length(res$variable) + 1]] <- list(
  variable = "Pressure to smoke from friends",             ### Replace 'example' with variable name
  moment = 1,                       ### moment this variable was measured/manipulated
  type = "question",                ### "question", "aggregate", or "manipulation"
  datatype = "text",             ### "numeric", "logical", "nominal", "ordinal", or "text"
  psytype = "belief",      ### "demographic", "belief", "determinant", "proxy", "behavior"
  dependent = "initiation", 
  direction = "consistent",  ### "initiation", "cessation"
  description = "All three participants who said that they had felt pressured were boys",                 ### Description, as text; or NA
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
