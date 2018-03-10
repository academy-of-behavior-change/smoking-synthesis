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
res$bibTexKey <- "echer2008";

##########################################################################
##########################################################################
###
###  GENERAL INFORMATION / COMMENTS ON THIS STUDY:
###
res$generalComments <- "

Categorized report of interviews with quitters who'd quit beyond the six-month point.
Responses to the question ''What factors contribute to a successful smoking cessation?'

";### Make sure this line starts with a double quote and a semicolon (";)
##########################################################################
##########################################################################


##########################################################################
### SAMPLE DESCRIPTION
##########################################################################

### Description of sample, in text (e.g. "Single mothers" or "West-Coast participants", etc)
res$sample$description <- "Quitters over 6 months";

### Description of geography of sample, in text
res$sample$geography <- "Porto Allegro, Brazil";

### Sample size, as a number
res$sample$size <- 16;

### SUBSAMPLES - REMOVE THIS SECTION IF THERE ARE NO SUBSAMPLES

### Indicate which information you want to override. Specify the subsample
### you're providing new data for in the single quotes between the double
### brackets; make sure the spelling is exactly identical to the list above.
### Use NA to specify data that should not be overridden.


##########################################################################
### METHODOLOGICAL INFORMATION
##########################################################################

### Specify how the data was collected ("qualitative" or "quantitative")
res$datacollectionmethod <- "qualitative"; ##stemi-structured interview

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


##########################################################################


##########################################################################
### UNIVARIATE RESULTS: PERCENTAGES, MEANS, ETC
##########################################################################

res$univariate[[length(res$univariate) + 1]] <- list(
  variable = "Willpower/determination to change",       ### Name of variable this result pertains to
  qualitative = "Similar reports by most participants",                 ### Description (qualitative research)
  comment = "Extracted from p. 447, bottom left page below -Determination to cease smoking-, and top right paragraph."                      ### Comment or NA
);

res$univariate[[length(res$univariate) + 1]] <- list(
  variable = "Supportive community",       ### Name of variable this result pertains to
  qualitative = "Similar reports by several participants",                 ### Description (qualitative research)
  comment = "Extracted from p. 447, bottom right page. This includes family, friends and health professionals"                      ### Comment or NA
);

res$univariate[[length(res$univariate) + 1]] <- list(
  variable = "Fear of withdrawal symptoms",       ### Name of variable this result pertains to
  qualitative = "Similar reports by several participants",                 ### Description (qualitative research)
  comment = "Extracted from p. 448, mid to lower left page"                      ### Comment or NA
);

res$univariate[[length(res$univariate) + 1]] <- list(
  variable = "Minimized abstinence syndrome",       ### Name 
  qualitative = "Similar reports by several participants",                 ### Description (qualitative research)
  comment = "Extracted from p. 448, bottom left page "                      ### Comment or NA
);

res$univariate[[length(res$univariate) + 1]] <- list(
  variable = "Professional intervention",       ### Name of variable this result pertains to
  qualitative = "Similar reports by several participants",                 ### Description (qualitative research)
  comment = "Extracted from p. 448, bottom left page "                      ### Comment or NA
);

res$univariate[[length(res$univariate) + 1]] <- list(
  variable = "Drugs",       ### Name of variable this result pertains to
  qualitative = "Similar reports by several participants",                 ### Description (qualitative research)
  comment = "Extracted from p. 448 bottom left page "                      ### Comment or NA
);

res$univariate[[length(res$univariate) + 1]] <- list(
  variable = "Supportive family",       ### Name of variable this result pertains to
  qualitative = "Similar reports by several participants",                 ### Description (qualitative research)
  comment = "Extracted from p. 448, bottom right, below -Received support- "                      ### Comment or NA
);

res$univariate[[length(res$univariate) + 1]] <- list(
  variable = "received spiritual support",       ### Name of variable this result pertains to
  qualitative = "Similar reports by several participants",                 ### Description (qualitative research)
  comment = "Extracted from p. 448, bottom right, from -Received support- "                      ### Comment or NA
);
res$univariate[[length(res$univariate) + 1]] <- list(
  variable = "Spiritual beliefs",       ### Name of variable this result pertains to
  qualitative = "Similar reports by several participants",                 ### Description (qualitative research)
  comment = "Extracted from p. 448, bottom right, from -Received support- "                      ### Comment or NA
);

res$univariate[[length(res$univariate) + 1]] <- list(
  variable = "Social support",       ### Name of variable this result pertains to
  qualitative = "Similar reports by several participants",                 ### Description (qualitative research)
  comment = "Extracted from p. 448, bottom right, from -Received support-"                      ### Comment or NA
);

res$univariate[[length(res$univariate) + 1]] <- list(
  variable = "Professional support -nurse, physician, dentist-",       ### Name of variable this result pertains to
  qualitative = "Similar reports by several participants",                 ### Description (qualitative research)
  comment = "Extracted from p. 448, bottom right, from -Received support-"                      ### Comment or NA
);

res$univariate[[length(res$univariate) + 1]] <- list(
  variable = "Support groups",       ### Name of variable this result pertains to
  qualitative = "Similar reports by several participants",                 ### Description (qualitative research)
  comment = "Extracted from p. 449, bottom right, from -Specific course and support groups-."                      ### Comment or NA
);

res$univariate[[length(res$univariate) + 1]] <- list(
  variable = "Sharing experiences with quitters",       ### Name of variable this result pertains to
  qualitative = "Similar reports by several participants",                 ### Description (qualitative research)
  comment = "Extracted from p. 449, bottom right"                      ### Comment or NA
);

res$univariate[[length(res$univariate) + 1]] <- list(
  variable = "support groups provide quitting strategies",       ### Name of variable this result pertains to
  qualitative = "Similar reports by several participants",                 ### Description (qualitative research)
  comment = "Extracted from p.449, bottom right"                      ### Comment or NA
);

res$univariate[[length(res$univariate) + 1]] <- list(
  variable = "smokers who refrain around quitters",       ### Name of variable this result pertains to
  qualitative = "Similar reports by several participants",                 ### Description (qualitative research)
  comment = "Extracted from p. 450, bottom left."                      ### Comment or NA
);

res$univariate[[length(res$univariate) + 1]] <- list(
  variable = "will to change/determination",       ### Name of variable this result pertains to
  dominanceCoefficient = 80,
  qualitative = "retrieved from table 1",                 ### Description (qualitative research)
  comment = "retrieved from table 1. p 447"                      ### Comment or NA
);

res$univariate[[length(res$univariate) + 1]] <- list(
  variable = "cigarette intrference in social life and laws that restrict smoking",       ### Name of variable this result pertains to
  dominanceCoefficient = 35,
  qualitative = "retrieved from table 1",                 ### Description (qualitative research)
  comment = "retrieved from table 1. p 447"                      ### Comment or NA
);

res$univariate[[length(res$univariate) + 1]] <- list(
  variable = "influence of close people",       ### Name of variable this result pertains to
  dominanceCoefficient = 35, 
  qualitative = "retrieved from table 1",                 ### Description (qualitative research)
  comment = "retrieved from table 1. p 447"                      ### Comment or NA
);

res$univariate[[length(res$univariate) + 1]] <- list(
  variable = "esthetical and smelling sense",       ### Name of variable this result pertains to
  dominanceCoefficient = 30, 
  qualitative = "retrieved from table 1",                 ### Description (qualitative research)
  comment = "retrieved from table 1. p 447"                      ### Comment or NA
);


res$univariate[[length(res$univariate) + 1]] <- list(
  variable = "health harm",       ### Name of variable this result pertains to
  dominanceCoefficient = 26, 
  qualitative = "retrieved from table 1",                 ### Description (qualitative research)
  comment = "retrieved from table 1. p 447"                      ### Comment or NA
);


res$univariate[[length(res$univariate) + 1]] <- list(
  variable = "health concerns",       ### Name of variable this result pertains to
  dominanceCoefficient = 23, 
  qualitative = "retrieved from table 1",                 ### Description (qualitative research)
  comment = "retrieved from table 1. p 447"                      ### Comment or NA
);


res$univariate[[length(res$univariate) + 1]] <- list(
  variable = "life appreciation",       ### Name of variable this result pertains to
  dominanceCoefficient = 13, 
  qualitative = "retrieved from table 1",                 ### Description (qualitative research)
  comment = "retrieved from table 1. p 447"                      ### Comment or NA
);


res$univariate[[length(res$univariate) + 1]] <- list(
  variable = "health problem observation",       ### Name of variable this result pertains to
  dominanceCoefficient = 10, 
  qualitative = "retrieved from table 1",                 ### Description (qualitative research)
  comment = "retrieved from table 1. p 447"                      ### Comment or NA
);


res$univariate[[length(res$univariate) + 1]] <- list(
  variable = "knowing health harms",       ### Name of variable this result pertains to
  dominanceCoefficient = 9, 
  qualitative = "retrieved from table 1",                 ### Description (qualitative research)
  comment = "retrieved from table 1. p 447"                      ### Comment or NA
);


res$univariate[[length(res$univariate) + 1]] <- list(
  variable = "getting annoyed about cigarette",       ### Name of variable this result pertains to
  dominanceCoefficient = 7, 
  qualitative = "retrieved from table 1",                 ### Description (qualitative research)
  comment = "retrieved from table 1. p 447"                      ### Comment or NA
);


res$univariate[[length(res$univariate) + 1]] <- list(
  variable = "shame/frustration of being a smoker",       ### Name of variable this result pertains to
  dominanceCoefficient = 7, 
  qualitative = "retrieved from table 1",                 ### Description (qualitative research)
  comment = "retrieved from table 1. p 447"                      ### Comment or NA
);
res$univariate[[length(res$univariate) + 1]] <- list(
  variable = "money",       ### Name of variable this result pertains to
  dominanceCoefficient = 6, 
  qualitative = "retrieved from table 1",                 ### Description (qualitative research)
  comment = "retrieved from table 1. p 447"                      ### Comment or NA
);

res$univariate[[length(res$univariate) + 1]] <- list(
  variable = "health professional",       ### Name of variable this result pertains to
  dominanceCoefficient = 4, 
  qualitative = "retrieved from table 1",                 ### Description (qualitative research)
  comment = "retrieved from table 1. p 447"                      ### Comment or NA
);

res$univariate[[length(res$univariate) + 1]] <- list(
  variable = "media campaigns",       ### Name of variable this result pertains to
  dominanceCoefficient = 4, 
  qualitative = "retrieved from table 1",                 ### Description (qualitative research)
  comment = "retrieved from table 1. p 447"                      ### Comment or NA
);


res$univariate[[length(res$univariate) + 1]] <- list(
  variable = "spiritual support",       ### Name of variable this result pertains to
  dominanceCoefficient = 2, 
  qualitative = "retrieved from table 1",                 ### Description (qualitative research)
  comment = "retrieved from table 1. p 447"                      ### Comment or NA
);

res$univariate[[length(res$univariate) + 1]] <- list(
  variable = "acting as a smoker on stage",       ### Name of variable this result pertains to
  dominanceCoefficient = 1, 
  qualitative = "retrieved from table 1",                 ### Description (qualitative research)
  comment = "retrieved from table 1. p 447"                      ### Comment or NA
);


res$univariate[[length(res$univariate) + 1]] <- list(
  variable = "participation in anti-smoking commission",       ### Name of variable this result pertains to
  dominanceCoefficient = 1, 
  qualitative = "retrieved from table 1",                 ### Description (qualitative research)
  comment = "retrieved from table 1. p 447"                      ### Comment or NA
);

res$univariate[[length(res$univariate) + 1]] <- list(
  variable = "age",       ### Name of variable this result pertains to
  dominanceCoefficient = 1, 
  qualitative = "retrieved from table 1",                 ### Description (qualitative research)
  comment = "retrieved from table 1. p 447"                      ### Comment or NA
);





##########################################################################


##########################################################################
### MEASUREMENTS AND MANIPULATIONS: THE VARIABLES IN THE STUDY
###
# generateOperationalisationTemplates(object=res,
#                                    defaultOverrides =
#   list(dependent='"cessation"',
#        moment = 1, type = '"question"', datatype = '"text"', psytype = '"belief"', direction = '"consistent"'));
###
##########################################################################




###########################################################################
### MEASUREMENTS AND MANIPULATIONS: THE VARIABLES IN THE STUDY
###########################################################################


res$variable[[length(res$variable) + 1]] <- list(
  variable = "will to change/determination",
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
  variable = "cigarette intrference in social life and laws that restrict smoking",
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
  variable = "influence of close people",
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
  variable = "esthetical and smelling sense",
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
  variable = "health harm",
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
  variable = "health concerns",
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
  variable = "life appreciation",
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
  variable = "health problem observation",
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
  variable = "knowing health harms",
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
  variable = "getting annoyed about cigarette",
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
  variable = "shame/frustration of being a smoker",
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
  variable = "money",
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
  variable = "health professional",
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
  variable = "media campaigns",
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
  variable = "spiritual support",
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
  variable = "acting as a smoker on stage",
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
  variable = "participation in anti-smoking commission",
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
  variable = "age",
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
  variable = "Willpower/determination to change",             ### Replace 'example' with variable name
  moment = 1,                       ### moment this variable was measured/manipulated
  type = "question",                ### "question", "aggregate", or "manipulation"
  datatype = "text",             ### "numeric", "logical", "nominal", "ordinal", or "text"
  psytype = "belief",             ### "demographic", "belief", "determinant", "proxy", "behavior"
  dependent = "cessation",         ### "initiation", "cessation"
  description = "response to the main question 'What factors contribute to a successful smoking cessation?'",                 ### Description, as text; or NA
  comment = "Bottom-right page 447, below table 1."                      ### Comment, as text; or NA
);
res$variable[[length(res$variable) + 1]] <- list(
  variable = "Supportive community",             ### Replace 'example' with variable name
  moment = 1,                       ### moment this variable was measured/manipulated
  type = "question",                ### "question", "aggregate", or "manipulation"
  datatype = "text",             ### "numeric", "logical", "nominal", "ordinal", or "text"
  psytype = "belief",             ### "demographic", "belief", "determinant", "proxy", "behavior"
  dependent = "cessation",         ### "initiation", "cessation"
  description = "response to the main question 'What factors contribute to a successful smoking cessation?'",                 ### Description, as text; or NA
  comment = "Bottom-right page 447, below table 1."                      ### Comment, as text; or NA
);


res$variable[[length(res$variable) + 1]] <- list(
  variable = "Fear of withdrawal symptoms",             ### Replace 'example' with variable name
  moment = 1,                       ### moment this variable was measured/manipulated
  type = "question",                ### "question", "aggregate", or "manipulation"
  datatype = "text",             ### "numeric", "logical", "nominal", "ordinal", or "text"
  psytype = "belief",             ### "demographic", "belief", "determinant", "proxy", "behavior"
  dependent = "cessation",         ### "initiation", "cessation"
  description = "response to the main question 'What factors contribute to a successful smoking cessation?', 
  reported as a motivation not to start again.",                 ### Description, as text; or NA
  comment = "Page 448, mid-left column, below 'Difficulty to cease smoking'"                      ### Comment, as text; or NA
);

res$variable[[length(res$variable) + 1]] <- list(
  variable = "Minimized abstinence syndrome",             ### Replace 'example' with variable name
  moment = 1,                       ### moment this variable was measured/manipulated
  type = "question",                ### "question", "aggregate", or "manipulation"
  datatype = "text",             ### "numeric", "logical", "nominal", "ordinal", or "text"
  psytype = "belief",             ### "demographic", "belief", "determinant", "proxy", "behavior"
  dependent = "cessation",         ### "initiation", "cessation"
  description = "response to the main question 'What factors contribute to a successful smoking cessation?'",                 ### Description, as text; or NA
  comment = "Page 448, final sentence of left column"                      ### Comment, as text; or NA
);

res$variable[[length(res$variable) + 1]] <- list(
  variable = "Professional intervention",             ### Replace 'example' with variable name
  moment = 1,                       ### moment this variable was measured/manipulated
  type = "question",                ### "question", "aggregate", or "manipulation"
  datatype = "text",             ### "numeric", "logical", "nominal", "ordinal", or "text"
  psytype = "belief",             ### "demographic", "belief", "determinant", "proxy", "behavior"
  dependent = "cessation",         ### "initiation", "cessation"
  description = "response to the main question 'What factors contribute to a successful smoking cessation?'",                 ### Description, as text; or NA
  comment = "Bottom-right column of page 448, below 'Intervention of qualified professionals and drug utilization"                      ### Comment, as text; or NA
);

res$variable[[length(res$variable) + 1]] <- list(
  variable = "Drugs",             ### Replace 'example' with variable name
  moment = 1,                       ### moment this variable was measured/manipulated
  type = "question",                ### "question", "aggregate", or "manipulation"
  datatype = "text",             ### "numeric", "logical", "nominal", "ordinal", or "text"
  psytype = "belief",             ### "demographic", "belief", "determinant", "proxy", "behavior"
  dependent = "cessation",         ### "initiation", "cessation"
  description = "response to the main question 'What factors contribute to a successful smoking cessation?'",                 ### Description, as text; or NA
  comment = "Top-left column of page 449, second paragraph."                      ### Comment, as text; or NA
);

res$variable[[length(res$variable) + 1]] <- list(
  variable = "Supportive family",             ### Replace 'example' with variable name
  moment = 1,                       ### moment this variable was measured/manipulated
  type = "question",                ### "question", "aggregate", or "manipulation"
  datatype = "text",             ### "numeric", "logical", "nominal", "ordinal", or "text"
  psytype = "belief",             ### "demographic", "belief", "determinant", "proxy", "behavior"
  dependent = "cessation",         ### "initiation", "cessation"
  description = "response to the main question 'What factors contribute to a successful smoking cessation?'",                 ### Description, as text; or NA
  comment = "Extracted from p. 448, bottom right, below -Received support-"                      ### Comment, as text; or NA
);

res$variable[[length(res$variable) + 1]] <- list(
  variable = "received spiritual support",             ### Replace 'example' with variable name
  moment = 1,                       ### moment this variable was measured/manipulated
  type = "question",                ### "question", "aggregate", or "manipulation"
  datatype = "text",             ### "numeric", "logical", "nominal", "ordinal", or "text"
  psytype = "belief",             ### "demographic", "belief", "determinant", "proxy", "behavior"
  dependent = "cessation",         ### "initiation", "cessation"
  description = "response to the main question 'What factors contribute to a successful smoking cessation?'",                 ### Description, as text; or NA
  comment = "Extracted from p. 448, bottom right, below -Received support-"                      ### Comment, as text; or NA
);

res$variable[[length(res$variable) + 1]] <- list(
  variable = "Spiritual beliefs",             ### Replace 'example' with variable name
  moment = 1,                       ### moment this variable was measured/manipulated
  type = "question",                ### "question", "aggregate", or "manipulation"
  datatype = "text",             ### "numeric", "logical", "nominal", "ordinal", or "text"
  psytype = "belief",             ### "demographic", "belief", "determinant", "proxy", "behavior"
  dependent = "cessation",         ### "initiation", "cessation"
  description = "response to the main question 'What factors contribute to a successful smoking cessation?'",                 ### Description, as text; or NA
  comment = "Extracted from p. 450, bottom-left column, second-to-last paragraph above 'Final considerations'."                      ### Comment, as text; or NA
);

res$variable[[length(res$variable) + 1]] <- list(
  variable = "Social support",             ### Replace 'example' with variable name
  moment = 1,                       ### moment this variable was measured/manipulated
  type = "question",                ### "question", "aggregate", or "manipulation"
  datatype = "text",             ### "numeric", "logical", "nominal", "ordinal", or "text"
  psytype = "belief",             ### "demographic", "belief", "determinant", "proxy", "behavior"
  dependent = "cessation",         ### "initiation", "cessation"
  description = "response to the main question 'What factors contribute to a successful smoking cessation?'",                 ### Description, as text; or NA
  comment = "Extracted from page 450, top left column, below 'Family, social and spiritual support'"                      ### Comment, as text; or NA
);

res$variable[[length(res$variable) + 1]] <- list(
  variable = "Professional support -nurse, physician, dentist-",             ### Replace 'example' with variable name
  moment = 1,                       ### moment this variable was measured/manipulated
  type = "question",                ### "question", "aggregate", or "manipulation"
  datatype = "text",             ### "numeric", "logical", "nominal", "ordinal", or "text"
  psytype = "belief",             ### "demographic", "belief", "determinant", "proxy", "behavior"
  dependent = "cessation",         ### "initiation", "cessation"
  description = "response to the main question 'What factors contribute to a successful smoking cessation?'",                 ### Description, as text; or NA
  comment = "Extracted from page 449, mid-left column, bottom cursif statement"                      ### Comment, as text; or NA
);

res$variable[[length(res$variable) + 1]] <- list(
  variable = "Support groups",             ### Replace 'example' with variable name
  moment = 1,                       ### moment this variable was measured/manipulated
  type = "question",                ### "question", "aggregate", or "manipulation"
  datatype = "text",             ### "numeric", "logical", "nominal", "ordinal", or "text"
  psytype = "belief",             ### "demographic", "belief", "determinant", "proxy", "behavior"
  dependent = "cessation",         ### "initiation", "cessation"
  description = "response to the main question 'What factors contribute to a successful smoking cessation?'",                 ### Description, as text; or NA
  comment = "mid to lower-right column on page 449, below 'specific course and support groups"                      ### Comment, as text; or NA
);

res$variable[[length(res$variable) + 1]] <- list(
  variable = "Sharing experiences with quitters",             ### Replace 'example' with variable name
  moment = 1,                       ### moment this variable was measured/manipulated
  type = "question",                ### "question", "aggregate", or "manipulation"
  datatype = "text",             ### "numeric", "logical", "nominal", "ordinal", or "text"
  psytype = "belief",             ### "demographic", "belief", "determinant", "proxy", "behavior"
  dependent = "cessation",         ### "initiation", "cessation"
  description = "response to the main question 'What factors contribute to a successful smoking cessation?'",                 ### Description, as text; or NA
  comment = "mid to lower-right column on page 449, below 'specific course and support groups"                      ### Comment, as text; or NA
);

res$variable[[length(res$variable) + 1]] <- list(
  variable = "support groups provide quitting strategies",             ### Replace 'example' with variable name
  moment = 1,                       ### moment this variable was measured/manipulated
  type = "question",                ### "question", "aggregate", or "manipulation"
  datatype = "text",             ### "numeric", "logical", "nominal", "ordinal", or "text"
  psytype = "belief",             ### "demographic", "belief", "determinant", "proxy", "behavior"
  dependent = "cessation",         ### "initiation", "cessation"
  description = "response to the main question 'What factors contribute to a successful smoking cessation?'",                 ### Description, as text; or NA
  comment = "mid to lower-right column on page 449, below 'specific course and support groups'"                    ### Comment, as text; or NA
);

res$variable[[length(res$variable) + 1]] <- list(
  variable = "smokers who refrain around quitters",             ### Replace 'example' with variable name
  moment = 1,                       ### moment this variable was measured/manipulated
  type = "question",                ### "question", "aggregate", or "manipulation"
  datatype = "text",             ### "numeric", "logical", "nominal", "ordinal", or "text"
  psytype = "belief",             ### "demographic", "belief", "determinant", "proxy", "behavior"
  dependent = "cessation",         ### "initiation", "cessation"
  description = "response to the main question 'What factors contribute to a successful smoking cessation?'",                 ### Description, as text; or NA
  comment = "Bottom left column page 450, above 'final considerations'"                      ### Comment, as text; or NA
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
