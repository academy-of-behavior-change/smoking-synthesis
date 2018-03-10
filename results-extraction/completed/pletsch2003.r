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
res$bibTexKey <- "Pletsch2003";

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
res$sample$description <- "low-income African American women";

### Description of geography of sample, in text
res$sample$geography <- "US";

### Sample size, as a number
res$sample$size <- 15;

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
  variable = "Stressful family situation",       ### Name of variable this result pertains to
  qualitative = "nothing reported",                 ### Description (qualitative research)
  comment = "retrieved from p. 323 "                     ### Comment or NA
);


res$univariate[[length(res$univariate) + 1]] <- list(
  variable = "Stress from violent environment/neighbourhood",       ### Name of variable this result pertains to
  qualitative = "nothing reported",                 ### Description (qualitative research)
  comment = "retrieved from p. 323"                      ### Comment or NA
);

res$univariate[[length(res$univariate) + 1]] <- list(
  variable = "Worry about health problems",       ### Name of variable this result pertains to
  qualitative = "nothing reported",                 ### Description (qualitative research)
  comment = "retrieved from p. 323"                      ### Comment or NA
);

res$univariate[[length(res$univariate) + 1]] <- list(
  variable = "Smoking relieves stress",       ### Name of variable this result pertains to
  qualitative = "nothing reported",                 ### Description (qualitative research)
  comment = "retrieved from p. 323"                      ### Comment or NA
);

res$univariate[[length(res$univariate) + 1]] <- list(
  variable = "Stress increases need to smoke",       ### Name of variable this result pertains to
  qualitative = "nothing reported",                 ### Description (qualitative research)
  comment = "retrieved from p. 323"                      ### Comment or NA
);

res$univariate[[length(res$univariate) + 1]] <- list(
  variable = "Willpower is required to quit",       ### Name of variable this result pertains to
  qualitative = "nothing reported",                 ### Description (qualitative research)
  comment = "retrieved from p. 323"                      ### Comment or NA
);

res$univariate[[length(res$univariate) + 1]] <- list(
  variable = "Personal desire is required to quit",       ### Name of variable this result pertains to
  qualitative = "nothing reported",                 ### Description (qualitative research)
  comment = "retrieved from p. 323"                      ### Comment or NA
);

res$univariate[[length(res$univariate) + 1]] <- list(
  variable = "You can do it if you want to",       ### Name of variable this result pertains to
  qualitative = "nothing reported",                 ### Description (qualitative research)
  comment = "retrieved from p. 323"                      ### Comment or NA
);


res$univariate[[length(res$univariate) + 1]] <- list(
  variable = "You have to be ready to quit",       ### Name of variable this result pertains to
  qualitative = "nothing reported",                 ### Description (qualitative research)
  comment = "retrieved from p. 323"                      ### Comment or NA
);



##########################################################################

generateOperationalisationTemplates(object=res,
                                   defaultOverrides =
 list(dependent='"cessation"',
       moment = 1, type = '"question"', datatype = '"text"', psytype = '"belief"', direction = '"consistent"'));

###########################################################################
### MEASUREMENTS AND MANIPULATIONS: THE VARIABLES IN THE STUDY
###########################################################################

res$variable[[length(res$variable) + 1]] <- list(
  variable = "Stressful family situation",
  moment = 1,                ### moment this variable was measured/manipulated
  type = "question",         ### "question", "aggregate", or "manipulation"
  datatype = "text",         ### "numeric", "logical", "nominal", "ordinal", or "text"
  values = NA,               ### Possible values; NA or a vector, e.g. c(1, 2, 3)
  labels = NA,               ### Labels for the values; NA or e.g. c("no", "maybe", "sometimes")
  psytype = "belief",        ### "demographic", "belief", "determinant", "proxy", "behavior"
  dependent = "cessation",   ### "initiation", "cessation"
  direction = "inconsistent",  ### "consistent" (same direction as dependent), "inconsistent"
  parent = NA,               ### Name of parent variable into which this one is aggregated
  description = NA,          ### Description, as text; or NA
  comment = NA               ### Comment, as text; or NA
);

res$variable[[length(res$variable) + 1]] <- list(
  variable = "Stress from violent environment/neighbourhood",
  moment = 1,                ### moment this variable was measured/manipulated
  type = "question",         ### "question", "aggregate", or "manipulation"
  datatype = "text",         ### "numeric", "logical", "nominal", "ordinal", or "text"
  values = NA,               ### Possible values; NA or a vector, e.g. c(1, 2, 3)
  labels = NA,               ### Labels for the values; NA or e.g. c("no", "maybe", "sometimes")
  psytype = "belief",        ### "demographic", "belief", "determinant", "proxy", "behavior"
  dependent = "cessation",   ### "initiation", "cessation"
  direction = "inconsistent",  ### "consistent" (same direction as dependent), "inconsistent"
  parent = NA,               ### Name of parent variable into which this one is aggregated
  description = NA,          ### Description, as text; or NA
  comment = NA               ### Comment, as text; or NA
);

res$variable[[length(res$variable) + 1]] <- list(
  variable = "Worry about health problems",
  moment = 1,                ### moment this variable was measured/manipulated
  type = "question",         ### "question", "aggregate", or "manipulation"
  datatype = "text",         ### "numeric", "logical", "nominal", "ordinal", or "text"
  values = NA,               ### Possible values; NA or a vector, e.g. c(1, 2, 3)
  labels = NA,               ### Labels for the values; NA or e.g. c("no", "maybe", "sometimes")
  psytype = "belief",        ### "demographic", "belief", "determinant", "proxy", "behavior"
  dependent = "cessation",   ### "initiation", "cessation"
  direction = "consistent",  ### "consistent" (same direction as dependent), "inconsistent"
  parent = NA,               ### Name of parent variable into which this one is aggregated
  description = NA,          ### Description, as text; or NA
  comment = NA               ### Comment, as text; or NA
);

res$variable[[length(res$variable) + 1]] <- list(
  variable = "Smoking relieves stress",
  moment = 1,                ### moment this variable was measured/manipulated
  type = "question",         ### "question", "aggregate", or "manipulation"
  datatype = "text",         ### "numeric", "logical", "nominal", "ordinal", or "text"
  values = NA,               ### Possible values; NA or a vector, e.g. c(1, 2, 3)
  labels = NA,               ### Labels for the values; NA or e.g. c("no", "maybe", "sometimes")
  psytype = "belief",        ### "demographic", "belief", "determinant", "proxy", "behavior"
  dependent = "cessation",   ### "initiation", "cessation"
  direction = "inconsistent",  ### "consistent" (same direction as dependent), "inconsistent"
  parent = NA,               ### Name of parent variable into which this one is aggregated
  description = NA,          ### Description, as text; or NA
  comment = NA               ### Comment, as text; or NA
);

res$variable[[length(res$variable) + 1]] <- list(
  variable = "Stress increases need to smoke",
  moment = 1,                ### moment this variable was measured/manipulated
  type = "question",         ### "question", "aggregate", or "manipulation"
  datatype = "text",         ### "numeric", "logical", "nominal", "ordinal", or "text"
  values = NA,               ### Possible values; NA or a vector, e.g. c(1, 2, 3)
  labels = NA,               ### Labels for the values; NA or e.g. c("no", "maybe", "sometimes")
  psytype = "belief",        ### "demographic", "belief", "determinant", "proxy", "behavior"
  dependent = "cessation",   ### "initiation", "cessation"
  direction = "inconsistent",  ### "consistent" (same direction as dependent), "inconsistent"
  parent = NA,               ### Name of parent variable into which this one is aggregated
  description = NA,          ### Description, as text; or NA
  comment = NA               ### Comment, as text; or NA
);

res$variable[[length(res$variable) + 1]] <- list(
  variable = "Willpower is required to quit",
  moment = 1,                ### moment this variable was measured/manipulated
  type = "question",         ### "question", "aggregate", or "manipulation"
  datatype = "text",         ### "numeric", "logical", "nominal", "ordinal", or "text"
  values = NA,               ### Possible values; NA or a vector, e.g. c(1, 2, 3)
  labels = NA,               ### Labels for the values; NA or e.g. c("no", "maybe", "sometimes")
  psytype = "belief",        ### "demographic", "belief", "determinant", "proxy", "behavior"
  dependent = "cessation",   ### "initiation", "cessation"
  direction = "consistent",  ### "consistent" (same direction as dependent), "inconsistent"
  parent = NA,               ### Name of parent variable into which this one is aggregated
  description = NA,          ### Description, as text; or NA
  comment = NA               ### Comment, as text; or NA
);

res$variable[[length(res$variable) + 1]] <- list(
  variable = "Personal desire is required to quit",
  moment = 1,                ### moment this variable was measured/manipulated
  type = "question",         ### "question", "aggregate", or "manipulation"
  datatype = "text",         ### "numeric", "logical", "nominal", "ordinal", or "text"
  values = NA,               ### Possible values; NA or a vector, e.g. c(1, 2, 3)
  labels = NA,               ### Labels for the values; NA or e.g. c("no", "maybe", "sometimes")
  psytype = "belief",        ### "demographic", "belief", "determinant", "proxy", "behavior"
  dependent = "cessation",   ### "initiation", "cessation"
  direction = "consistent",  ### "consistent" (same direction as dependent), "inconsistent"
  parent = NA,               ### Name of parent variable into which this one is aggregated
  description = NA,          ### Description, as text; or NA
  comment = NA               ### Comment, as text; or NA
);

res$variable[[length(res$variable) + 1]] <- list(
  variable = "You can do it if you want to",
  moment = 1,                ### moment this variable was measured/manipulated
  type = "question",         ### "question", "aggregate", or "manipulation"
  datatype = "text",         ### "numeric", "logical", "nominal", "ordinal", or "text"
  values = NA,               ### Possible values; NA or a vector, e.g. c(1, 2, 3)
  labels = NA,               ### Labels for the values; NA or e.g. c("no", "maybe", "sometimes")
  psytype = "belief",        ### "demographic", "belief", "determinant", "proxy", "behavior"
  dependent = "cessation",   ### "initiation", "cessation"
  direction = "consistent",  ### "consistent" (same direction as dependent), "inconsistent"
  parent = NA,               ### Name of parent variable into which this one is aggregated
  description = NA,          ### Description, as text; or NA
  comment = NA               ### Comment, as text; or NA
);

res$variable[[length(res$variable) + 1]] <- list(
  variable = "You have to be ready to quit",
  moment = 1,                ### moment this variable was measured/manipulated
  type = "question",         ### "question", "aggregate", or "manipulation"
  datatype = "text",         ### "numeric", "logical", "nominal", "ordinal", or "text"
  values = NA,               ### Possible values; NA or a vector, e.g. c(1, 2, 3)
  labels = NA,               ### Labels for the values; NA or e.g. c("no", "maybe", "sometimes")
  psytype = "belief",        ### "demographic", "belief", "determinant", "proxy", "behavior"
  dependent = "cessation",   ### "initiation", "cessation"
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
