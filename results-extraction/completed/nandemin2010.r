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
res$bibTexKey <- "nandemin2010";

##########################################################################
##########################################################################
###
###  GENERAL INFORMATION / COMMENTS ON THIS STUDY:
###
res$generalComments <- "

All women had smoked in the past month, though smoking frequency was not reported. 

";### Make sure this line starts with a double quote and a semicolon (";)
##########################################################################
##########################################################################


##########################################################################
### SAMPLE DESCRIPTION
##########################################################################

### Description of sample, in text (e.g. "Single mothers" or "West-Coast participants", etc)
res$sample$description <- "College-aged female smokers"; #M = 19.2

### Description of geography of sample, in text
res$sample$geography <- "";

### Sample size, as a number
res$sample$size <- 43;

### SUBSAMPLES - REMOVE THIS SECTION IF THERE ARE NO SUBSAMPLES

### Indicate which information you want to override. Specify the subsample
### you're providing new data for in the single quotes between the double
### brackets; make sure the spelling is exactly identical to the list above.
### Use NA to specify data that should not be overridden.

res$subsample[[length(res$subsample) + 1]] <- list( ### Create object for this subsample
  name = "Insert name of subsample here",           ### E.g. "Single mothers", "West-Coast
  description = NA,                                 ### participants", or "Caucasian teenagers"
  geography = NA,
  size = NA
);

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
  variable = "Pairing of alcohol and cigarettes",       ### Name of variable this result pertains to
  qualitative = "most common beliefs",                 ### Description (qualitative research)
  comment = "Retrieved from bottom page 656"                      ### Comment or NA
);


res$univariate[[length(res$univariate) + 1]] <- list(
  variable = "Peer influence",       ### Name of variable this result pertains to
  qualitative = "most common beliefs",                 ### Description (qualitative research)
  comment = "Retrieved from bottom page 656"                      ### Comment or NA
);


res$univariate[[length(res$univariate) + 1]] <- list(
  variable = "Stress management and relaxation",       ### Name of variable this result pertains to
  qualitative = "most common beliefs",                 ### Description (qualitative research)
  comment = "Retrieved from bottom page 657"                      ### Comment or NA
);


res$univariate[[length(res$univariate) + 1]] <- list(
  variable = "Projected social image",       ### Name of variable this result pertains to
  qualitative = "most common beliefs",                 ### Description (qualitative research)
  comment = "Retrieved from bottom page 657"                      ### Comment or NA
);
 
res$univariate[[length(res$univariate) + 1]] <- list(
  variable = "Appetite suppression and weight",       ### Name of variable this result pertains to
  qualitative = "most common beliefs",                 ### Description (qualitative research)
  comment = "Retrieved from bottom page 657"                      ### Comment or NA
);


res$univariate[[length(res$univariate) + 1]] <- list(
  variable = "Time management e.g. boredom",       ### Name of variable this result pertains to
  qualitative = "most common beliefs",                 ### Description (qualitative research)
  comment = "Retrieved from bottom page 657"                      ### Comment or NA
);

res$univariate[[length(res$univariate) + 1]] <- list(
  variable = "Addiction - physical and psychological",       ### Name of variable this result pertains to
  qualitative = "most common beliefs",                 ### Description (qualitative research)
  comment = "Retrieved from bottom page 657"                      ### Comment or NA
);

res$univariate[[length(res$univariate) + 1]] <- list(
  variable = "Attention to alcohol and smoking",       ### Name of variable this result pertains to
  qualitative = "nothing reported",                 ### Description (qualitative research)
  comment = "Retrieved from bottom page 659, suggestions for interventions"                      ### Comment or NA
);

res$univariate[[length(res$univariate) + 1]] <- list(
  variable = "Exercise",       ### Name of variable this result pertains to
  qualitative = "nothing reported",                 ### Description (qualitative research)
  comment = "Retrieved from bottom page 659, suggestions for interventions"                      ### Comment or NA
);

res$univariate[[length(res$univariate) + 1]] <- list(
  variable = "Buddy-systems",       ### Name of variable this result pertains to
  qualitative = "nothing reported",                 ### Description (qualitative research)
  comment = "Retrieved from bottom page 659, suggestions for interventions"                      ### Comment or NA
);

res$univariate[[length(res$univariate) + 1]] <- list(
  variable = "Group based meetings",       ### Name of variable this result pertains to
  qualitative = "nothing reported",                 ### Description (qualitative research)
  comment = "Retrieved from bottom page 659, suggestions for interventions"                      ### Comment or NA
);


res$univariate[[length(res$univariate) + 1]] <- list(
  variable = "Support",       ### Name of variable this result pertains to
  qualitative = "nothing reported",                 ### Description (qualitative research)
  comment = "Retrieved from bottom page 659, suggestions for interventions"                      ### Comment or NA
);

res$univariate[[length(res$univariate) + 1]] <- list(
  variable = "Inspirational motivation",       ### Name of variable this result pertains to
  qualitative = "nothing reported",                 ### Description (qualitative research)
  comment = "Retrieved from bottom page 659, suggestions for interventions"                      ### Comment or NA
);

res$univariate[[length(res$univariate) + 1]] <- list(
  variable = "Intervention should be fun",       ### Name of variable this result pertains to
  qualitative = "nothing reported",                 ### Description (qualitative research)
  comment = "Retrieved from bottom page 659, suggestions for interventions"                      ### Comment or NA
);

res$univariate[[length(res$univariate) + 1]] <- list(
  variable = "Overal healthy behavior should be promoted alongside intervention",       ### Name of variable this result pertains to
  qualitative = "nothing reported",                 ### Description (qualitative research)
  comment = "Retrieved from bottom page 659, suggestions for interventions"                      ### Comment or NA
);

res$univariate[[length(res$univariate) + 1]] <- list(
  variable = "Lecturing should be avoided",       ### Name of variable this result pertains to
  qualitative = "nothing reported",                 ### Description (qualitative research)
  comment = "Retrieved from bottom page 659, suggestions for interventions"                      ### Comment or NA
);


##########################################################################


##########################################################################
### MEASUREMENTS AND MANIPULATIONS: THE VARIABLES IN THE STUDY
##########################################################################

res$variable[[length(res$variable) + 1]] <- list(
  variable = "Pairing of alcohol and cigarettes",             ### Replace 'example' with variable name
  type = "question",                ### "question", "aggregate", or "manipulation"
  datatype = "text",             ### "numeric", "logical", "nominal", "ordinal", or "text"
  psytype = "belief",             ### "demographic", "belief", "determinant", "proxy", "behavior"
  dependent = "cessation",         ### "initiation", "cessation"
  description = NA,                 ### Description, as text; or NA
  comment = NA                      ### Comment, as text; or NA
);


res$variable[[length(res$variable) + 1]] <- list(
  variable = "Peer influence",             ### Replace 'example' with variable name
  type = "question",                ### "question", "aggregate", or "manipulation"
  datatype = "text",             ### "numeric", "logical", "nominal", "ordinal", or "text"
  psytype = "belief",             ### "demographic", "belief", "determinant", "proxy", "behavior"
  dependent = "cessation",         ### "initiation", "cessation"
  description = NA,                 ### Description, as text; or NA
  comment = NA                      ### Comment, as text; or NA
);

res$variable[[length(res$variable) + 1]] <- list(
  variable = "Stress management and relaxation",             ### Replace 'example' with variable name
  type = "question",                ### "question", "aggregate", or "manipulation"
  datatype = "text",             ### "numeric", "logical", "nominal", "ordinal", or "text"
  psytype = "belief",             ### "demographic", "belief", "determinant", "proxy", "behavior"
  dependent = "cessation",         ### "initiation", "cessation"
  description = NA,                 ### Description, as text; or NA
  comment = NA                      ### Comment, as text; or NA
);

res$variable[[length(res$variable) + 1]] <- list(
  variable = "Projected social image",             ### Replace 'example' with variable name
  type = "question",                ### "question", "aggregate", or "manipulation"
  datatype = "text",             ### "numeric", "logical", "nominal", "ordinal", or "text"
  psytype = "belief",             ### "demographic", "belief", "determinant", "proxy", "behavior"
  dependent = "cessation",         ### "initiation", "cessation"
  description = NA,                 ### Description, as text; or NA
  comment = NA                      ### Comment, as text; or NA
);

res$variable[[length(res$variable) + 1]] <- list(
  variable = "Appetite suppression and weight",             ### Replace 'example' with variable name
  type = "question",                ### "question", "aggregate", or "manipulation"
  datatype = "text",             ### "numeric", "logical", "nominal", "ordinal", or "text"
  psytype = "belief",             ### "demographic", "belief", "determinant", "proxy", "behavior"
  dependent = "cessation",         ### "initiation", "cessation"
  description = NA,                 ### Description, as text; or NA
  comment = NA                      ### Comment, as text; or NA
);
res$variable[[length(res$variable) + 1]] <- list(
  variable = "Time management e.g. boredom",             ### Replace 'example' with variable name
  type = "question",                ### "question", "aggregate", or "manipulation"
  datatype = "text",             ### "numeric", "logical", "nominal", "ordinal", or "text"
  psytype = "belief",             ### "demographic", "belief", "determinant", "proxy", "behavior"
  dependent = "cessation",         ### "initiation", "cessation"
  description = NA,                 ### Description, as text; or NA
  comment = NA                      ### Comment, as text; or NA
);
res$variable[[length(res$variable) + 1]] <- list(
  variable = "Addiction - physical and psychological",             ### Replace 'example' with variable name
  type = "question",                ### "question", "aggregate", or "manipulation"
  datatype = "text",             ### "numeric", "logical", "nominal", "ordinal", or "text"
  psytype = "belief",             ### "demographic", "belief", "determinant", "proxy", "behavior"
  dependent = "cessation",         ### "initiation", "cessation"
  description = NA,                 ### Description, as text; or NA
  comment = NA                      ### Comment, as text; or NA
);
res$variable[[length(res$variable) + 1]] <- list(
  variable = "Attention to alcohol and smoking",             ### Replace 'example' with variable name
  type = "question",                ### "question", "aggregate", or "manipulation"
  datatype = "text",             ### "numeric", "logical", "nominal", "ordinal", or "text"
  psytype = "belief",             ### "demographic", "belief", "determinant", "proxy", "behavior"
  dependent = "cessation",         ### "initiation", "cessation"
  description = NA,                 ### Description, as text; or NA
  comment = NA                      ### Comment, as text; or NA
);
res$variable[[length(res$variable) + 1]] <- list(
  variable = "Exercise",             ### Replace 'example' with variable name
  type = "question",                ### "question", "aggregate", or "manipulation"
  datatype = "text",             ### "numeric", "logical", "nominal", "ordinal", or "text"
  psytype = "belief",             ### "demographic", "belief", "determinant", "proxy", "behavior"
  dependent = "cessation",         ### "initiation", "cessation"
  description = NA,                 ### Description, as text; or NA
  comment = NA                      ### Comment, as text; or NA
);
res$variable[[length(res$variable) + 1]] <- list(
  variable = "Buddy-systems",             ### Replace 'example' with variable name
  type = "question",                ### "question", "aggregate", or "manipulation"
  datatype = "text",             ### "numeric", "logical", "nominal", "ordinal", or "text"
  psytype = "belief",             ### "demographic", "belief", "determinant", "proxy", "behavior"
  dependent = "cessation",         ### "initiation", "cessation"
  description = NA,                 ### Description, as text; or NA
  comment = NA                      ### Comment, as text; or NA
);

res$variable[[length(res$variable) + 1]] <- list(
  variable = "Group based meetings",             ### Replace 'example' with variable name
  type = "question",                ### "question", "aggregate", or "manipulation"
  datatype = "text",             ### "numeric", "logical", "nominal", "ordinal", or "text"
  psytype = "belief",             ### "demographic", "belief", "determinant", "proxy", "behavior"
  dependent = "cessation",         ### "initiation", "cessation"
  description = NA,                 ### Description, as text; or NA
  comment = NA                      ### Comment, as text; or NA
);
res$variable[[length(res$variable) + 1]] <- list(
  variable = "Support",             ### Replace 'example' with variable name
  type = "question",                ### "question", "aggregate", or "manipulation"
  datatype = "text",             ### "numeric", "logical", "nominal", "ordinal", or "text"
  psytype = "belief",             ### "demographic", "belief", "determinant", "proxy", "behavior"
  dependent = "cessation",         ### "initiation", "cessation"
  description = NA,                 ### Description, as text; or NA
  comment = NA                      ### Comment, as text; or NA
);
res$variable[[length(res$variable) + 1]] <- list(
  variable = "Inspirational motivation",             ### Replace 'example' with variable name
  type = "question",                ### "question", "aggregate", or "manipulation"
  datatype = "text",             ### "numeric", "logical", "nominal", "ordinal", or "text"
  psytype = "belief",             ### "demographic", "belief", "determinant", "proxy", "behavior"
  dependent = "cessation",         ### "initiation", "cessation"
  description = NA,                 ### Description, as text; or NA
  comment = NA                      ### Comment, as text; or NA
);

res$variable[[length(res$variable) + 1]] <- list(
  variable = "Intervention should be fun",             ### Replace 'example' with variable name
  type = "question",                ### "question", "aggregate", or "manipulation"
  datatype = "text",             ### "numeric", "logical", "nominal", "ordinal", or "text"
  psytype = "belief",             ### "demographic", "belief", "determinant", "proxy", "behavior"
  dependent = "cessation",         ### "initiation", "cessation"
  description = NA,                 ### Description, as text; or NA
  comment = NA                      ### Comment, as text; or NA
);

res$variable[[length(res$variable) + 1]] <- list(
  variable = "Overal healthy behavior should be promoted alongside intervention",             ### Replace 'example' with variable name
  type = "question",                ### "question", "aggregate", or "manipulation"
  datatype = "text",             ### "numeric", "logical", "nominal", "ordinal", or "text"
  psytype = "belief",             ### "demographic", "belief", "determinant", "proxy", "behavior"
  dependent = "cessation",         ### "initiation", "cessation"
  description = NA,                 ### Description, as text; or NA
  comment = NA                      ### Comment, as text; or NA
);
res$variable[[length(res$variable) + 1]] <- list(
  variable = "Lecturing should be avoided",             ### Replace 'example' with variable name
  type = "question",                ### "question", "aggregate", or "manipulation"
  datatype = "text",             ### "numeric", "logical", "nominal", "ordinal", or "text"
  psytype = "belief",             ### "demographic", "belief", "determinant", "proxy", "behavior"
  dependent = "cessation",         ### "initiation", "cessation"
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
#extractionVerification(res);

### For showing the entire dataframes
#print.data.frame(extractionVerification(res)$dat$extractedVariables)
#print.data.frame(extractionVerification(res)$dat$extractedUnivariate)
#print.data.frame(extractionVerification(res)$dat$extractedAssociations)
