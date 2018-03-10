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
res$bibTexKey <- "peters2011";

##########################################################################
##########################################################################
###
###  GENERAL INFORMATION / COMMENTS ON THIS STUDY:
###
res$generalComments <- "

info from boys/girls pooled into one group for processing

";### Make sure this line starts with a double quote and a semicolon (";)
##########################################################################
##########################################################################


##########################################################################
### SAMPLE DESCRIPTION
##########################################################################

### Description of sample, in text (e.g. "Single mothers" or "West-Coast participants", etc)
res$sample$description <- "African American adolescents 15-19";

### Description of geography of sample, in text
res$sample$geography <- "South-western United States";

### Sample size, as a number
res$sample$size <- 53;

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

##########################################################################


##########################################################################
### UNIVARIATE RESULTS: PERCENTAGES, MEANS, ETC
##########################################################################

res$univariate[[length(res$univariate) + 1]] <- list(
  variable = "Personal fitness",       ### Name of variable this result pertains to
  percentage = (10+3)/53,                  ### Percentage that endorsed 1, or NA
  qualitative = NA,                 ### Description (qualitative research)
  comment = "Retrieved from table 2 p. 251, response to the question: If you never thought about quitting, what caused you to think about
quitting cigarette smoking?"                      ### Comment or NA
);


res$univariate[[length(res$univariate) + 1]] <- list(
  variable = "Peer pressure",       ### Name of variable this result pertains to
  percentage = (8)/53,                  ### Percentage that endorsed 1, or NA
  qualitative = NA,                 ### Description (qualitative research)
  comment = "Retrieved from table 2 p. 251, response to the question: If you never thought about quitting, what caused you to think about
quitting cigarette smoking?"                        ### Comment or NA
);


res$univariate[[length(res$univariate) + 1]] <- list(
  variable = "Aesthetics",       ### Name of variable this result pertains to
  percentage = (5+1)/53,                  ### Percentage that endorsed 1, or NA
  qualitative = NA,                 ### Description (qualitative research)
  comment = "Retrieved from table 2 p. 251, response to the question: If you never thought about quitting, what caused you to think about
quitting cigarette smoking?"                        ### Comment or NA
);


res$univariate[[length(res$univariate) + 1]] <- list(
  variable = "Family sickness",       ### Name of variable this result pertains to
  percentage = (5+4)/53,                  ### Percentage that endorsed 1, or NA
  qualitative = NA,                 ### Description (qualitative research)
  comment = "Retrieved from table 2 p. 251, response to the question: If you never thought about quitting, what caused you to think about
quitting cigarette smoking?"                        ### Comment or NA
);


res$univariate[[length(res$univariate) + 1]] <- list(
  variable = "Self-control",       ### Name of variable this result pertains to
  percentage = 3/53,                  ### Percentage that endorsed 1, or NA
  qualitative = NA,                 ### Description (qualitative research)
  comment = "Retrieved from table 2 p. 251, response to the question: If you never thought about quitting, what caused you to think about
quitting cigarette smoking?"                        ### Comment or NA
);

res$univariate[[length(res$univariate) + 1]] <- list(
  variable = "Never thought about it",       ### Name of variable this result pertains to
  percentage = (2)/53,                  ### Percentage that endorsed 1, or NA
  qualitative = NA,                 ### Description (qualitative research)
  comment = "Retrieved from table 2 p. 251, response to the question: If you never thought about quitting, what caused you to think about
quitting cigarette smoking?"                        ### Comment or NA
);

res$univariate[[length(res$univariate) + 1]] <- list(
  variable = "Don't know",       ### Name of variable this result pertains to
  percentage = (2)/53,                  ### Percentage that endorsed 1, or NA
  qualitative = NA,                 ### Description (qualitative research)
  comment = "Retrieved from table 2 p. 251, response to the question: If you never thought about quitting, what caused you to think about
quitting cigarette smoking?"                        ### Comment or NA
);

##What would personally motivate you to stop smoking?

res$univariate[[length(res$univariate) + 1]] <- list(
  variable = "parental encouragement",      
  percentage = (16)/53,                  
  qualitative = "response to What would personally motivate you to stop smoking?",                 
  comment = "Retrieved from table 2 p. 251, response to the question: What would personally motivate you to stop smoking?"
);

res$univariate[[length(res$univariate) + 1]] <- list(
  variable = "partner encouragement",      
  percentage = (9)/53,                  
  qualitative = "response to What would personally motivate you to stop smoking?",                 
  comment = "Retrieved from table 2 p. 251, response to the question: What would personally motivate you to stop smoking?"
);

res$univariate[[length(res$univariate) + 1]] <- list(
  variable = "personal health",      
  percentage = (7+4)/53,                  
  qualitative = "response to What would personally motivate you to stop smoking?",                 
  comment = "Retrieved from table 2 p. 251, response to the question: What would personally motivate you to stop smoking?"
);

res$univariate[[length(res$univariate) + 1]] <- list(
  variable = "parental cessation",      
  percentage = (4+1)/53,                  
  qualitative = "response to What would personally motivate you to stop smoking?",                 
  comment = "Retrieved from table 2 p. 251, response to the question: What would personally motivate you to stop smoking?"
);

res$univariate[[length(res$univariate) + 1]] <- list(
  variable = "younger family smokes",      
  percentage = (6)/53,                  
  qualitative = "response to What would personally motivate you to stop smoking?",                 
  comment = "Retrieved from table 2 p. 251, response to the question: What would personally motivate you to stop smoking?"
);

res$univariate[[length(res$univariate) + 1]] <- list(
  variable = "environmental change",      
  percentage = (5)/53,                  
  qualitative = "response to What would personally motivate you to stop smoking?",                 
  comment = "Retrieved from table 2 p. 251, response to the question: What would personally motivate you to stop smoking?"
);

##If there were an ideal program that would help students your 
##age stop smoking, what would the program consist of?




res$univariate[[length(res$univariate) + 1]] <- list(
  variable = "affected source/direct communication",      
  percentage = (14+5)/53,                  
  qualitative = "response to If there were an ideal program that would help students your age stop smoking, what would the program consist of?",                 
  comment = "Retrieved from table 2 p. 251, "
);

res$univariate[[length(res$univariate) + 1]] <- list(
  variable = "attractive source/direct communication",      
  percentage = (12)/53,                  
  qualitative = "response to If there were an ideal program that would help students your age stop smoking, what would the program consist of?",                 
  comment = "Retrieved from table 2 p. 251, "
);

res$univariate[[length(res$univariate) + 1]] <- list(
  variable = "food/fun activities",      
  percentage = (6+8+2)/53,                  
  qualitative = "response to If there were an ideal program that would help students your age stop smoking, what would the program consist of?",                 
  comment = "Retrieved from table 2 p. 251, 
  food/fun activities are somehow pooled for boys 
  separated for girls, they are now all combined"
);

res$univariate[[length(res$univariate) + 1]] <- list(
  variable = "activities/rap contest",      
  percentage = (4)/53,                  
  qualitative = "response to If there were an ideal program that would help students your age stop smoking, what would the program consist of?",                 
  comment = "Retrieved from table 2 p. 251, "
);

res$univariate[[length(res$univariate) + 1]] <- list(
  variable = "music",      
  percentage = (2)/53,                  
  qualitative = "response to If there were an ideal program that would help students your age stop smoking, what would the program consist of?",                 
  comment = "Retrieved from table 2 p. 251, "
);

##What do you think about ''quit smoking'' programs?

res$univariate[[length(res$univariate) + 1]] <- list(
  variable = "not effective",      
  percentage = (25+12)/53,                  
  qualitative = "response to What do you think about ''quit smoking'' programs?",                 
  comment = "Retrieved from table 2 p. 251, "
);

res$univariate[[length(res$univariate) + 1]] <- list(
  variable = "causes smoking",      
  percentage = (5+3)/53,                  
  qualitative = "response to What do you think about ''quit smoking'' programs?",                 
  comment = "Retrieved from table 2 p. 251, "
);

res$univariate[[length(res$univariate) + 1]] <- list(
  variable = "lack activities",      
  percentage = (5+2)/53,                  
  qualitative = "response to What do you think about ''quit smoking'' programs?",                 
  comment = "Retrieved from table 2 p. 251, "
);

res$univariate[[length(res$univariate) + 1]] <- list(
  variable = "affected source of communication",      
  percentage = (18+9)/53,                  
  qualitative = "response to What could health professionals do as a motivator or incentive to help youth participate in ''quit smoking'' programs?",                 
  comment = "Retrieved from table 2 p. 251, "
);

res$univariate[[length(res$univariate) + 1]] <- list(
  variable = "attractive source of communication",      
  percentage = (8)/53,                  
  qualitative = "response to What could health professionals do as a motivator or incentive to help youth participate in ''quit smoking'' programs?",                 
  comment = "Retrieved from table 2 p. 251, "
);

res$univariate[[length(res$univariate) + 1]] <- list(
  variable = "direct communication",      
  percentage = (4+7)/53,                  
  qualitative = "response to What could health professionals do as a motivator or incentive to help youth participate in ''quit smoking'' programs?",                 
  comment = "Retrieved from table 2 p. 251, "
);

res$univariate[[length(res$univariate) + 1]] <- list(
  variable = "professional sources of communication",      
  percentage = (3)/53,                  
  qualitative = "response to What could health professionals do as a motivator or incentive to help youth participate in ''quit smoking'' programs?",                 
  comment = "Retrieved from table 2 p. 251, "
  
);
res$univariate[[length(res$univariate) + 1]] <- list(
  variable = "real information",      
  percentage = (3+1)/53,                  
  qualitative = "response to What could health professionals do as a motivator or incentive to help youth participate in ''quit smoking'' programs?",                 
  comment = "Retrieved from table 2 p. 251, "
);

###What would your peers think about you if you tried to stop smoking?

res$univariate[[length(res$univariate) + 1]] <- list(
  variable = "encouragement",      
  percentage = (33+14)/53,                  
  qualitative = "response to What would your peers think about you if you tried to stop smoking?",                 
  comment = "Retrieved from table 2 p. 251, "
);

res$univariate[[length(res$univariate) + 1]] <- list(
  variable = "non-supportive",      
  percentage = (2+2)/53,                  
  qualitative = "response to What would your peers think about you if you tried to stop smoking?",                 
  comment = "Retrieved from table 2 p. 251, "
);

res$univariate[[length(res$univariate) + 1]] <- list(
  variable = "unknown",      
  percentage = (1+1)/53,                  
  qualitative = "response to What would your peers think about you if you tried to stop smoking?",                 
  comment = "Retrieved from table 2 p. 251, "
);

#########################################
#########################################
#########################################

res$univariate[[length(res$univariate) + 1]] <- list(
  variable = "Organize youth activities  - rap battle- about non-smoking and positive activities",       ### Name of variable this result pertains to
  qualitative = "nothing reported",                 ### Description (qualitative research)
  comment = "Retrieved from table 1. p. 250, Examples of Salient Beliefs Related to Smoking Cessation"                        ### Comment or NA
);


res$univariate[[length(res$univariate) + 1]] <- list(
  variable = "Direct communication about hazards from affected source",       ### Name of variable this result pertains to
  qualitative = "nothing reported",                 ### Description (qualitative research)
  comment = "Retrieved from table 1. p. 250, Examples of Salient Beliefs Related to Smoking Cessation"                        ### Comment or NA
);


res$univariate[[length(res$univariate) + 1]] <- list(
  variable = "Communication by affected sources could aid recruitment for cessation programmes",       ### Name of variable this result pertains t
  qualitative = "nothing reported",                 ### Description (qualitative research)
  comment = "Retrieved from table 1. p. 250, Examples of Salient Beliefs Related to Smoking Cessation"                        ### Comment or NA
);


res$univariate[[length(res$univariate) + 1]] <- list(
  variable = "Direct communication by attractive source",       ### Name of variable this result pertains to
  qualitative = "nothing reported",                 ### Description (qualitative research)
  comment = "Retrieved from table 1. p. 250, Examples of Salient Beliefs Related to Smoking Cessation"                        ### Comment or NA
);


res$univariate[[length(res$univariate) + 1]] <- list(
  variable = "Recruitment for cessation programme by attractive source",       ### Name of variable this result pertains to
  qualitative = "nothing reported",                 ### Description (qualitative research)
  comment = "Retrieved from table 1. p. 250, Examples of Salient Beliefs Related to Smoking Cessation"                        ### Comment or NA
);


res$univariate[[length(res$univariate) + 1]] <- list(
  variable = "Current cessation programmes only talk about cigarettes, not life experiences",       ### Name of variable this result pertains to
  qualitative = "nothing reported",                 ### Description (qualitative research)
  comment = "Retrieved from table 1. p. 250, Examples of Salient Beliefs Related to Smoking Cessation"                        ### Comment or NA
);


res$univariate[[length(res$univariate) + 1]] <- list(
  variable = "Recruitment should happen face to face so questions can be answered",       ### Name of variable this result pertains to
  qualitative = "nothing reported",                 ### Description (qualitative research)
  comment = "Retrieved from table 1. p. 250, Examples of Salient Beliefs Related to Smoking Cessation"                        ### Comment or NA
);


res$univariate[[length(res$univariate) + 1]] <- list(
  variable = "Encouragement without pressure aids cessation",       ### Name of variable this result pertains to
  qualitative = "nothing reported",                 ### Description (qualitative research)
  comment = "Retrieved from table 1. p. 250, Examples of Salient Beliefs Related to Smoking Cessation"                        ### Comment or NA
);


res$univariate[[length(res$univariate) + 1]] <- list(
  variable = "Not liking the way you smell aids cessation",       ### Name of variable this result pertains to
  qualitative = "nothing reported",                 ### Description (qualitative research)
  comment = "Retrieved from table 1. p. 250, Examples of Salient Beliefs Related to Smoking Cessation"                        ### Comment or NA
);



res$univariate[[length(res$univariate) + 1]] <- list(
  variable = "Seeing ill relatives aids cessation",       ### Name of variable this result pertains to
  qualitative = "nothing reported",                 ### Description (qualitative research)
  comment = "Retrieved from table 1. p. 250, Examples of Salient Beliefs Related to Smoking Cessation"                        ### Comment or NA
);


res$univariate[[length(res$univariate) + 1]] <- list(
  variable = "Cessation programmes are more enjoyable if they involve fun activities",       ### Name of variable this result pertains to
  qualitative = "nothing reported",                 ### Description (qualitative research)
  comment = "Retrieved from table 1. p. 250, Examples of Salient Beliefs Related to Smoking Cessation"                        ### Comment or NA
);


res$univariate[[length(res$univariate) + 1]] <- list(
  variable = "Cessation programmes without fun activities are boring and aren't inviting to learn",       ### Name of variable this result pertains to
  qualitative = "nothing reported",                 ### Description (qualitative research)
  comment = "Retrieved from table 1. p. 250, Examples of Salient Beliefs Related to Smoking Cessation"                        ### Comment or NA
);



res$univariate[[length(res$univariate) + 1]] <- list(
  variable = "Non-supportive comments from the environment are discouraging",       ### Name of variable this result pertains to
  qualitative = "nothing reported",                 ### Description (qualitative research)
  comment = "Retrieved from table 1. p. 250, Examples of Salient Beliefs Related to Smoking Cessation"                        ### Comment or NA
);

res$univariate[[length(res$univariate) + 1]] <- list(
  variable = "Tobacco awareness programmes don't do anything, are boring and cause desire to smoke",       ### Name of variable this result pertains to
  qualitative = "nothing reported",                 ### Description (qualitative research)
  comment = "Retrieved from table 1. p. 250, Examples of Salient Beliefs Related to Smoking Cessation"                        ### Comment or NA
);

res$univariate[[length(res$univariate) + 1]] <- list(
  variable = "Parental encouragement aides cessation",       ### Name of variable this result pertains to
  qualitative = "nothing reported",                 ### Description (qualitative research)
  comment = "Retrieved from table 1. p. 250, Examples of Salient Beliefs Related to Smoking Cessation"                        ### Comment or NA
);

res$univariate[[length(res$univariate) + 1]] <- list(
  variable = "Parental cessation could be encouraging",       ### Name of variable this result pertains to
  qualitative = "nothing reported",                 ### Description (qualitative research)
  comment = "Retrieved from table 1. p. 250, Examples of Salient Beliefs Related to Smoking Cessation"                        ### Comment or NA
);


res$univariate[[length(res$univariate) + 1]] <- list(
  variable = "Partner encouragement motivates to quit",       ### Name of variable this result pertains to
  qualitative = "nothing reported",                 ### Description (qualitative research)
  comment = "Retrieved from table 1. p. 250, Examples of Salient Beliefs Related to Smoking Cessation"                        ### Comment or NA
);

res$univariate[[length(res$univariate) + 1]] <- list(
  variable = "Peer pressure from friends encourages to quit",       ### Name of variable this result pertains to
  qualitative = "nothing reported",                 ### Description (qualitative research)
  comment = "Retrieved from table 1. p. 250, Examples of Salient Beliefs Related to Smoking Cessation"                        ### Comment or NA
);

res$univariate[[length(res$univariate) + 1]] <- list(
  variable = "Awareness of declining personal fitness aids cessation",       ### Name of variable this result pertains to
  qualitative = "nothing reported",                 ### Description (qualitative research)
  comment = "Retrieved from table 1. p. 250, Examples of Salient Beliefs Related to Smoking Cessation"                        ### Comment or NA
);


res$univariate[[length(res$univariate) + 1]] <- list(
  variable = "Damage to personal health",       ### Name of variable this result pertains to
  qualitative = "nothing reported",                 ### Description (qualitative research)
  comment = "Retrieved from table 1. p. 250, Examples of Salient Beliefs Related to Smoking Cessation"                        ### Comment or NA
);

res$univariate[[length(res$univariate) + 1]] <- list(
  variable = "Talks and recruitment by physicians",       ### Name of variable this result pertains to
  qualitative = "nothing reported",                 ### Description (qualitative research)
  comment = "Retrieved from table 1. p. 250, Examples of Salient Beliefs Related to Smoking Cessation"                        ### Comment or NA
);


res$univariate[[length(res$univariate) + 1]] <- list(
  variable = "Give people real, truthful information about the importance of cessation",       ### Name of variable this result pertains to
  qualitative = "nothing reported",                 ### Description (qualitative research)
  comment = "Retrieved from table 1. p. 250, Examples of Salient Beliefs Related to Smoking Cessation"                        ### Comment or NA
);


res$univariate[[length(res$univariate) + 1]] <- list(
  variable = "Wanting more control in life",       ### Name of variable this result pertains to
  qualitative = "nothing reported",                 ### Description (qualitative research)
  comment = "Retrieved from table 1. p. 250, Examples of Salient Beliefs Related to Smoking Cessation"                        ### Comment or NA
);

res$univariate[[length(res$univariate) + 1]] <- list(
  variable = "If I knew my younger sister smoked -that would aid my cessation-",       ### Name of variable this result pertains to
  qualitative = "nothing reported",                 ### Description (qualitative research)
  comment = "Retrieved from table 1. p. 250, Examples of Salient Beliefs Related to Smoking Cessation"                        ### Comment or NA
);



##########################################################################
# generateOperationalisationTemplates(object=res,
#                                  defaultOverrides =
#   list(dependent='"cessation"',
#        moment = 1, type = '"aggregate"', datatype = '"text"', psytype = '"belief"', direction = '"consistent"'));



###########################################################################
### MEASUREMENTS AND MANIPULATIONS: THE VARIABLES IN THE STUDY
###########################################################################

res$variable[[length(res$variable) + 1]] <- list(
  variable = "Personal fitness",
  moment = 1,                ### moment this variable was measured/manipulated
  type = "question",        ### "question", "aggregate", or "manipulation"
  datatype = "text",         ### "numeric", "logical", "nominal", "ordinal", or "text"
  psytype = "belief",        ### "demographic", "belief", "determinant", "proxy", "behavior"
  dependent = "cessation",   ### "initiation", "cessation"
  direction = "consistent",  ### "consistent" (same direction as dependent), "inconsistent"
  parent = NA,               ### Name of parent variable into which this one is aggregated
  description = "response to: What do you think about ''quit smoking'' programs?",          ### Description, as text; or NA
  comment = NA               ### Comment, as text; or NA
);

res$variable[[length(res$variable) + 1]] <- list(
  variable = "Peer pressure",
  moment = 1,                ### moment this variable was measured/manipulated
  type = "question",        ### "question", "aggregate", or "manipulation"
  datatype = "text",         ### "numeric", "logical", "nominal", "ordinal", or "text"
  psytype = "belief",        ### "demographic", "belief", "determinant", "proxy", "behavior"
  dependent = "cessation",   ### "initiation", "cessation"
  direction = "consistent",  ### "consistent" (same direction as dependent), "inconsistent"
  parent = NA,               ### Name of parent variable into which this one is aggregated
description = "response to: What do you think about ''quit smoking'' programs?",          ### Description, as text; or NA
  comment = NA               ### Comment, as text; or NA
);

res$variable[[length(res$variable) + 1]] <- list(
  variable = "Aesthetics",
  moment = 1,                ### moment this variable was measured/manipulated
  type = "question",        ### "question", "aggregate", or "manipulation"
  datatype = "text",         ### "numeric", "logical", "nominal", "ordinal", or "text"
  psytype = "belief",        ### "demographic", "belief", "determinant", "proxy", "behavior"
  dependent = "cessation",   ### "initiation", "cessation"
  direction = "consistent",  ### "consistent" (same direction as dependent), "inconsistent"
  parent = NA,               ### Name of parent variable into which this one is aggregated
description = "response to: What do you think about ''quit smoking'' programs?",          ### Description, as text; or NA
  comment = NA               ### Comment, as text; or NA
);

res$variable[[length(res$variable) + 1]] <- list(
  variable = "Family sickness",
  moment = 1,                ### moment this variable was measured/manipulated
  type = "question",        ### "question", "aggregate", or "manipulation"
  datatype = "text",         ### "numeric", "logical", "nominal", "ordinal", or "text"
  psytype = "belief",        ### "demographic", "belief", "determinant", "proxy", "behavior"
  dependent = "cessation",   ### "initiation", "cessation"
  direction = "consistent",  ### "consistent" (same direction as dependent), "inconsistent"
  parent = NA,               ### Name of parent variable into which this one is aggregated
description = "response to: What do you think about ''quit smoking'' programs?",          ### Description, as text; or NA
  comment = NA               ### Comment, as text; or NA
);

res$variable[[length(res$variable) + 1]] <- list(
  variable = "Self-control",
  moment = 1,                ### moment this variable was measured/manipulated
  type = "question",        ### "question", "aggregate", or "manipulation"
  datatype = "text",         ### "numeric", "logical", "nominal", "ordinal", or "text"
   psytype = "belief",        ### "demographic", "belief", "determinant", "proxy", "behavior"
  dependent = "cessation",   ### "initiation", "cessation"
  direction = "consistent",  ### "consistent" (same direction as dependent), "inconsistent"
  parent = NA,               ### Name of parent variable into which this one is aggregated
description = "response to: What do you think about ''quit smoking'' programs?",          ### Description, as text; or NA
  comment = NA               ### Comment, as text; or NA
);

res$variable[[length(res$variable) + 1]] <- list(
  variable = "Never thought about it",
  moment = 1,                ### moment this variable was measured/manipulated
  type = "question",        ### "question", "aggregate", or "manipulation"
  datatype = "text",         ### "numeric", "logical", "nominal", "ordinal", or "text"
  psytype = "belief",        ### "demographic", "belief", "determinant", "proxy", "behavior"
  dependent = "cessation",   ### "initiation", "cessation"
  direction = "consistent",  ### "consistent" (same direction as dependent), "inconsistent"
  parent = NA,               ### Name of parent variable into which this one is aggregated
description = "response to: What do you think about ''quit smoking'' programs?",          ### Description, as text; or NA
  comment = NA               ### Comment, as text; or NA
);

res$variable[[length(res$variable) + 1]] <- list(
  variable = "Don't know",
  moment = 1,                ### moment this variable was measured/manipulated
  type = "question",        ### "question", "aggregate", or "manipulation"
  datatype = "text",         ### "numeric", "logical", "nominal", "ordinal", or "text"
  psytype = "belief",        ### "demographic", "belief", "determinant", "proxy", "behavior"
  dependent = "cessation",   ### "initiation", "cessation"
  direction = "consistent",  ### "consistent" (same direction as dependent), "inconsistent"
  parent = NA,               ### Name of parent variable into which this one is aggregated
description = "response to: What do you think about ''quit smoking'' programs?",          ### Description, as text; or NA
  comment = NA               ### Comment, as text; or NA
);

res$variable[[length(res$variable) + 1]] <- list(
  variable = "parental encouragement",
  moment = 1,                ### moment this variable was measured/manipulated
  type = "question",        ### "question", "aggregate", or "manipulation"
  datatype = "text",         ### "numeric", "logical", "nominal", "ordinal", or "text"
  psytype = "belief",        ## "demographic", "belief", "determinant", "proxy", "behavior"
  dependent = "cessation",   ### "initiation", "cessation"
  direction = "consistent",  ### "consistent" (same direction as dependent), "inconsistent"
  parent = NA,               ### Name of parent variable into which this one is aggregated
description = "What would personally motivate you to stop smoking?",          ### Description, as text; or NA
  comment = NA               ### Comment, as text; or NA
);

res$variable[[length(res$variable) + 1]] <- list(
  variable = "partner encouragement",
  moment = 1,                ### moment this variable was measured/manipulated
  type = "question",        ### "question", "aggregate", or "manipulation"
  datatype = "text",         ### "numeric", "logical", "nominal", "ordinal", or "text"
  psytype = "belief",        ### "demographic", "belief", "determinant", "proxy", "behavior"
  dependent = "cessation",   ### "initiation", "cessation"
  direction = "consistent",  ### "consistent" (same direction as dependent), "inconsistent"
  parent = NA,               ### Name of parent variable into which this one is aggregated
description = "What would personally motivate you to stop smoking?",          ### Description, as text; or NA
  comment = NA               ### Comment, as text; or NA
);

res$variable[[length(res$variable) + 1]] <- list(
  variable = "personal health",
  moment = 1,                ### moment this variable was measured/manipulated
  type = "question",        ### "question", "aggregate", or "manipulation"
  datatype = "text",         ### "numeric", "logical", "nominal", "ordinal", or "text"
  psytype = "belief",        ### "demographic", "belief", "determinant", "proxy", "behavior"
  dependent = "cessation",   ### "initiation", "cessation"
  direction = "consistent",  ### "consistent" (same direction as dependent), "inconsistent"
  parent = NA,               ### Name of parent variable into which this one is aggregated
description = "What would personally motivate you to stop smoking?",          ### Description, as text; or NA
  comment = NA               ### Comment, as text; or NA
);

res$variable[[length(res$variable) + 1]] <- list(
  variable = "parental cessation",
  moment = 1,                ### moment this variable was measured/manipulated
  type = "question",        ### "question", "aggregate", or "manipulation"
  datatype = "text",         ### "numeric", "logical", "nominal", "ordinal", or "text"
  psytype = "belief",        ### "demographic", "belief", "determinant", "proxy", "behavior"
  dependent = "cessation",   ### "initiation", "cessation"
  direction = "consistent",  ### "consistent" (same direction as dependent), "inconsistent"
  parent = NA,               ### Name of parent variable into which this one is aggregated
description = "What would personally motivate you to stop smoking?",          ### Description, as text; or NA
  comment = NA               ### Comment, as text; or NA
);

res$variable[[length(res$variable) + 1]] <- list(
  variable = "younger family smokes",
  moment = 1,                ### moment this variable was measured/manipulated
  type = "question",        ### "question", "aggregate", or "manipulation"
  datatype = "text",         ### "numeric", "logical", "nominal", "ordinal", or "text"
  psytype = "belief",        ### "demographic", "belief", "determinant", "proxy", "behavior"
  dependent = "cessation",   ### "initiation", "cessation"
  direction = "consistent",  ### "consistent" (same direction as dependent), "inconsistent"
  parent = NA,               ### Name of parent variable into which this one is aggregated
description = "What would personally motivate you to stop smoking?",          ### Description, as text; or NA
  comment = NA               ### Comment, as text; or NA
);

res$variable[[length(res$variable) + 1]] <- list(
  variable = "environmental change",
  moment = 1,                ### moment this variable was measured/manipulated
  type = "question",        ### "question", "aggregate", or "manipulation"
  datatype = "text",         ### "numeric", "logical", "nominal", "ordinal", or "text"
  psytype = "belief",        ### "demographic", "belief", "determinant", "proxy", "behavior"
  dependent = "cessation",   ### "initiation", "cessation"
  direction = "consistent",  ### "consistent" (same direction as dependent), "inconsistent"
  parent = NA,               ### Name of parent variable into which this one is aggregated
description = "What would personally motivate you to stop smoking?",          ### Description, as text; or NA
  comment = NA               ### Comment, as text; or NA
);

res$variable[[length(res$variable) + 1]] <- list(
  variable = "affected source/direct communication",
  moment = 1,                ### moment this variable was measured/manipulated
  type = "question",        ### "question", "aggregate", or "manipulation"
  datatype = "text",         ### "numeric", "logical", "nominal", "ordinal", or "text"
  psytype = "belief",        ### "demographic", "belief", "determinant", "proxy", "behavior"
  dependent = "cessation",   ### "initiation", "cessation"
  direction = "consistent",  ### "consistent" (same direction as dependent), "inconsistent"
  parent = NA,               ### Name of parent variable into which this one is aggregated
description = "If there were an ideal program that would help students",          ### Description, as text; or NA
  comment = NA               ### Comment, as text; or NA
);
res$variable[[length(res$variable) + 1]] <- list(
  variable = "attractive source/direct communication",
  moment = 1,                ### moment this variable was measured/manipulated
  type = "question",        ### "question", "aggregate", or "manipulation"
  datatype = "text",         ### "numeric", "logical", "nominal", "ordinal", or "text"
  psytype = "belief",        ### "demographic", "belief", "determinant", "proxy", "behavior"
  dependent = "cessation",   ### "initiation", "cessation"
  direction = "consistent",  ### "consistent" (same direction as dependent), "inconsistent"
  parent = NA,               ### Name of parent variable into which this one is aggregated
description = "If there were an ideal program that would help students",          ### Description, as text; or NA
  comment = NA               ### Comment, as text; or NA
);

res$variable[[length(res$variable) + 1]] <- list(
  variable = "food/fun activities",
  moment = 1,                ### moment this variable was measured/manipulated
  type = "question",        ### "question", "aggregate", or "manipulation"
  datatype = "text",         ### "numeric", "logical", "nominal", "ordinal", or "text"
  psytype = "belief",        ### "demographic", "belief", "determinant", "proxy", "behavior"
  dependent = "cessation",   ### "initiation", "cessation"
  direction = "consistent",  ### "consistent" (same direction as dependent), "inconsistent"
  parent = NA,               ### Name of parent variable into which this one is aggregated
description = "If there were an ideal program that would help students",          ### Description, as text; or NA
  comment = NA               ### Comment, as text; or NA
);

res$variable[[length(res$variable) + 1]] <- list(
  variable = "activities/rap contest",
  moment = 1,                ### moment this variable was measured/manipulated
  type = "question",        ### "question", "aggregate", or "manipulation"
  datatype = "text",         ### "numeric", "logical", "nominal", "ordinal", or "text"
  psytype = "belief",        ### "demographic", "belief", "determinant", "proxy", "behavior"
  dependent = "cessation",   ### "initiation", "cessation"
  direction = "consistent",  ### "consistent" (same direction as dependent), "inconsistent"
  parent = NA,               ### Name of parent variable into which this one is aggregated
description = "If there were an ideal program that would help students",          ### Description, as text; or NA
  comment = NA               ### Comment, as text; or NA
);

res$variable[[length(res$variable) + 1]] <- list(
  variable = "music",
  moment = 1,                ### moment this variable was measured/manipulated
  type = "question",        ### "question", "aggregate", or "manipulation"
  datatype = "text",         ### "numeric", "logical", "nominal", "ordinal", or "text"
  psytype = "belief",        ### "demographic", "belief", "determinant", "proxy", "behavior"
  dependent = "cessation",   ### "initiation", "cessation"
  direction = "consistent",  ### "consistent" (same direction as dependent), "inconsistent"
  parent = NA,               ### Name of parent variable into which this one is aggregated
description = "If there were an ideal program that would help students",          ### Description, as text; or NA
  comment = NA               ### Comment, as text; or NA
);

res$variable[[length(res$variable) + 1]] <- list(
  variable = "not effective",
  moment = 1,                ### moment this variable was measured/manipulated
  type = "question",        ### "question", "aggregate", or "manipulation"
  datatype = "text",         ### "numeric", "logical", "nominal", "ordinal", or "text"
  psytype = "belief",        ### "demographic", "belief", "determinant", "proxy", "behavior"
  dependent = "cessation",   ### "initiation", "cessation"
  direction = "consistent",  ### "consistent" (same direction as dependent), "inconsistent"
  parent = NA,               ### Name of parent variable into which this one is aggregated
description = "What do you think about ''quit smoking'' programs?",          ### Description, as text; or NA
  comment = NA               ### Comment, as text; or NA
);

res$variable[[length(res$variable) + 1]] <- list(
  variable = "causes smoking",
  moment = 1,                ### moment this variable was measured/manipulated
  type = "question",        ### "question", "aggregate", or "manipulation"
  datatype = "text",         ### "numeric", "logical", "nominal", "ordinal", or "text"
  psytype = "belief",        ### "demographic", "belief", "determinant", "proxy", "behavior"
  dependent = "cessation",   ### "initiation", "cessation"
  direction = "consistent",  ### "consistent" (same direction as dependent), "inconsistent"
  parent = NA,               ### Name of parent variable into which this one is aggregated
description = "What do you think about ''quit smoking'' programs?",          ### Description, as text; or NA
  comment = NA               ### Comment, as text; or NA
);

res$variable[[length(res$variable) + 1]] <- list(
  variable = "lack activities",
  moment = 1,                ### moment this variable was measured/manipulated
  type = "question",        ### "question", "aggregate", or "manipulation"
  datatype = "text",         ### "numeric", "logical", "nominal", "ordinal", or "text"
  psytype = "belief",        ### "demographic", "belief", "determinant", "proxy", "behavior"
  dependent = "cessation",   ### "initiation", "cessation"
  direction = "consistent",  ### "consistent" (same direction as dependent), "inconsistent"
  parent = NA,               ### Name of parent variable into which this one is aggregated
description = "What do you think about ''quit smoking'' programs?",          ### Description, as text; or NA
  comment = NA               ### Comment, as text; or NA
);

res$variable[[length(res$variable) + 1]] <- list(
  variable = "affected source of communication",
  moment = 1,                ### moment this variable was measured/manipulated
  type = "question",        ### "question", "aggregate", or "manipulation"
  datatype = "text",         ### "numeric", "logical", "nominal", "ordinal", or "text"
  psytype = "belief",        ### "demographic", "belief", "determinant", "proxy", "behavior"
  dependent = "cessation",   ### "initiation", "cessation"
  direction = "consistent",  ### "consistent" (same direction as dependent), "inconsistent"
  parent = NA,               ### Name of parent variable into which this one is aggregated
description = "What could health professionals do as a motivator or incentive",          ### Description, as text; or NA
  comment = NA               ### Comment, as text; or NA
);

res$variable[[length(res$variable) + 1]] <- list(
  variable = "attractive source of communication",
  moment = 1,                ### moment this variable was measured/manipulated
  type = "question",        ### "question", "aggregate", or "manipulation"
  datatype = "text",         ### "numeric", "logical", "nominal", "ordinal", or "text"
  psytype = "belief",        ### "demographic", "belief", "determinant", "proxy", "behavior"
  dependent = "cessation",   ### "initiation", "cessation"
  direction = "consistent",  ### "consistent" (same direction as dependent), "inconsistent"
  parent = NA,               ### Name of parent variable into which this one is aggregated
description = "What could health professionals do as a motivator or incentive",          ### Description, as text; or NA
  comment = NA               ### Comment, as text; or NA
);

res$variable[[length(res$variable) + 1]] <- list(
  variable = "direct communication",
  moment = 1,                ### moment this variable was measured/manipulated
  type = "question",        ### "question", "aggregate", or "manipulation"
  datatype = "text",         ### "numeric", "logical", "nominal", "ordinal", or "text"
  psytype = "belief",        ### "demographic", "belief", "determinant", "proxy", "behavior"
  dependent = "cessation",   ### "initiation", "cessation"
  direction = "consistent",  ### "consistent" (same direction as dependent), "inconsistent"
  parent = NA,               ### Name of parent variable into which this one is aggregated
description = "What could health professionals do as a motivator or incentive",          ### Description, as text; or NA
  comment = NA               ### Comment, as text; or NA
);

res$variable[[length(res$variable) + 1]] <- list(
  variable = "professional sources of communication",
  moment = 1,                ### moment this variable was measured/manipulated
  type = "question",        ### "question", "aggregate", or "manipulation"
  datatype = "text",         ### "numeric", "logical", "nominal", "ordinal", or "text"
  psytype = "belief",        ### "demographic", "belief", "determinant", "proxy", "behavior"
  dependent = "cessation",   ### "initiation", "cessation"
  direction = "consistent",  ### "consistent" (same direction as dependent), "inconsistent"
  parent = NA,               ### Name of parent variable into which this one is aggregated
description = "What could health professionals do as a motivator or incentive",          ### Description, as text; or NA
  comment = NA               ### Comment, as text; or NA
);

res$variable[[length(res$variable) + 1]] <- list(
  variable = "real information",
  moment = 1,                ### moment this variable was measured/manipulated
  type = "question",        ### "question", "aggregate", or "manipulation"
  datatype = "text",         ### "numeric", "logical", "nominal", "ordinal", or "text"
  psytype = "belief",        ### "demographic", "belief", "determinant", "proxy", "behavior"
  dependent = "cessation",   ### "initiation", "cessation"
  direction = "consistent",  ### "consistent" (same direction as dependent), "inconsistent"
  parent = NA,               ### Name of parent variable into which this one is aggregated
description = "What could health professionals do as a motivator or incentive",          ### Description, as text; or NA
  comment = NA               ### Comment, as text; or NA
);

res$variable[[length(res$variable) + 1]] <- list(
  variable = "encouragement",
  moment = 1,                ### moment this variable was measured/manipulated
  type = "question",        ### "question", "aggregate", or "manipulation"
  datatype = "text",         ### "numeric", "logical", "nominal", "ordinal", or "text"
  psytype = "belief",        ### "demographic", "belief", "determinant", "proxy", "behavior"
  dependent = "cessation",   ### "initiation", "cessation"
  direction = "consistent",  ### "consistent" (same direction as dependent), "inconsistent"
  parent = NA,               ### Name of parent variable into which this one is aggregated
description = "What would your peers think about you if you tried to stop smoking?",          ### Description, as text; or NA
  comment = NA               ### Comment, as text; or NA
);

res$variable[[length(res$variable) + 1]] <- list(
  variable = "non-supportive",
  moment = 1,                ### moment this variable was measured/manipulated
  type = "question",        ### "question", "aggregate", or "manipulation"
  datatype = "text",         ### "numeric", "logical", "nominal", "ordinal", or "text"
  psytype = "belief",        ### "demographic", "belief", "determinant", "proxy", "behavior"
  dependent = "cessation",   ### "initiation", "cessation"
  direction = "consistent",  ### "consistent" (same direction as dependent), "inconsistent"
  parent = NA,               ### Name of parent variable into which this one is aggregated
description = "What would your peers think about you if you tried to stop smoking?",          ### Description, as text; or NA
  comment = NA               ### Comment, as text; or NA
);

res$variable[[length(res$variable) + 1]] <- list(
  variable = "unknown",
  moment = 1,                ### moment this variable was measured/manipulated
  type = "question",        ### "question", "aggregate", or "manipulation"
  datatype = "text",         ### "numeric", "logical", "nominal", "ordinal", or "text"
  psytype = "belief",        ### "demographic", "belief", "determinant", "proxy", "behavior"
  dependent = "cessation",   ### "initiation", "cessation"
  direction = "consistent",  ### "consistent" (same direction as dependent), "inconsistent"
  parent = NA,               ### Name of parent variable into which this one is aggregated
description = "What would your peers think about you if you tried to stop smoking?",          ### Description, as text; or NA
  comment = NA               ### Comment, as text; or NA
);

#####################
#####################

res$variable[[length(res$variable) + 1]] <- list(
  variable = "Organize youth activities  - rap battle- about non-smoking and positive activities",
  moment = 1,                ### moment this variable was measured/manipulated
  type = "question",        ### "question", "aggregate", or "manipulation"
  datatype = "text",         ### "numeric", "logical", "nominal", "ordinal", or "text"
  psytype = "belief",        ### "demographic", "belief", "determinant", "proxy", "behavior"
  dependent = "cessation",   ### "initiation", "cessation"
  direction = "consistent",  ### "consistent" (same direction as dependent), "inconsistent"
  parent = NA,               ### Name of parent variable into which this one is aggregated
description = "retrieved from table 1.",          ### Description, as text; or NA
  comment = NA               ### Comment, as text; or NA
);

res$variable[[length(res$variable) + 1]] <- list(
  variable = "Direct communication about hazards from affected source",
  moment = 1,                ### moment this variable was measured/manipulated
  type = "question",        ### "question", "aggregate", or "manipulation"
  datatype = "text",         ### "numeric", "logical", "nominal", "ordinal", or "text"
  psytype = "belief",        ### "demographic", "belief", "determinant", "proxy", "behavior"
  dependent = "cessation",   ### "initiation", "cessation"
  direction = "consistent",  ### "consistent" (same direction as dependent), "inconsistent"
  parent = NA,               ### Name of parent variable into which this one is aggregated
description = "retrieved from table 1.",          ### Description, as text; or NA
  comment = NA               ### Comment, as text; or NA
);

res$variable[[length(res$variable) + 1]] <- list(
  variable = "Communication by affected sources could aid recruitment for cessation programmes",
  moment = 1,                ### moment this variable was measured/manipulated
  type = "question",        ### "question", "aggregate", or "manipulation"
  datatype = "text",         ### "numeric", "logical", "nominal", "ordinal", or "text"
  psytype = "belief",        ### "demographic", "belief", "determinant", "proxy", "behavior"
  dependent = "cessation",   ### "initiation", "cessation"
  direction = "consistent",  ### "consistent" (same direction as dependent), "inconsistent"
  parent = NA,               ### Name of parent variable into which this one is aggregated
description = "retrieved from table 1.",          ### Description, as text; or NA
  comment = NA               ### Comment, as text; or NA
);

res$variable[[length(res$variable) + 1]] <- list(
  variable = "Direct communication by attractive source",
  moment = 1,                ### moment this variable was measured/manipulated
  type = "question",        ### "question", "aggregate", or "manipulation"
  datatype = "text",         ### "numeric", "logical", "nominal", "ordinal", or "text"
  psytype = "belief",        ### "demographic", "belief", "determinant", "proxy", "behavior"
  dependent = "cessation",   ### "initiation", "cessation"
  direction = "consistent",  ### "consistent" (same direction as dependent), "inconsistent"
  parent = NA,               ### Name of parent variable into which this one is aggregated
description = "retrieved from table 1.",          ### Description, as text; or NA
  comment = NA               ### Comment, as text; or NA
);

res$variable[[length(res$variable) + 1]] <- list(
  variable = "Recruitment for cessation programme by attractive source",
  moment = 1,                ### moment this variable was measured/manipulated
  type = "question",        ### "question", "aggregate", or "manipulation"
  datatype = "text",         ### "numeric", "logical", "nominal", "ordinal", or "text"
  psytype = "belief",        ### "demographic", "belief", "determinant", "proxy", "behavior"
  dependent = "cessation",   ### "initiation", "cessation"
  direction = "consistent",  ### "consistent" (same direction as dependent), "inconsistent"
  parent = NA,               ### Name of parent variable into which this one is aggregated
description = "retrieved from table 1.",          ### Description, as text; or NA
  comment = NA               ### Comment, as text; or NA
);

res$variable[[length(res$variable) + 1]] <- list(
  variable = "Current cessation programmes only talk about cigarettes, not life experiences",
  moment = 1,                ### moment this variable was measured/manipulated
  type = "question",        ### "question", "aggregate", or "manipulation"
  datatype = "text",         ### "numeric", "logical", "nominal", "ordinal", or "text"
  psytype = "belief",        ### "demographic", "belief", "determinant", "proxy", "behavior"
  dependent = "cessation",   ### "initiation", "cessation"
  direction = "consistent",  ### "consistent" (same direction as dependent), "inconsistent"
  parent = NA,               ### Name of parent variable into which this one is aggregated
description = "retrieved from table 1.",          ### Description, as text; or NA
  comment = NA               ### Comment, as text; or NA
);

res$variable[[length(res$variable) + 1]] <- list(
  variable = "Recruitment should happen face to face so questions can be answered",
  moment = 1,                ### moment this variable was measured/manipulated
  type = "question",        ### "question", "aggregate", or "manipulation"
  datatype = "text",         ### "numeric", "logical", "nominal", "ordinal", or "text"
  psytype = "belief",        ### "demographic", "belief", "determinant", "proxy", "behavior"
  dependent = "cessation",   ### "initiation", "cessation"
  direction = "consistent",  ### "consistent" (same direction as dependent), "inconsistent"
  parent = NA,               ### Name of parent variable into which this one is aggregated
description = "retrieved from table 1.",          ### Description, as text; or NA
  comment = NA               ### Comment, as text; or NA
);

res$variable[[length(res$variable) + 1]] <- list(
  variable = "Encouragement without pressure aids cessation",
  moment = 1,                ### moment this variable was measured/manipulated
  type = "question",        ### "question", "aggregate", or "manipulation"
  datatype = "text",         ### "numeric", "logical", "nominal", "ordinal", or "text"
  psytype = "belief",        ### "demographic", "belief", "determinant", "proxy", "behavior"
  dependent = "cessation",   ### "initiation", "cessation"
  direction = "consistent",  ### "consistent" (same direction as dependent), "inconsistent"
  parent = NA,               ### Name of parent variable into which this one is aggregated
description = "retrieved from table 1.",          ### Description, as text; or NA
  comment = NA               ### Comment, as text; or NA
);

res$variable[[length(res$variable) + 1]] <- list(
  variable = "Not liking the way you smell aids cessation",
  moment = 1,                ### moment this variable was measured/manipulated
  type = "question",        ### "question", "aggregate", or "manipulation"
  datatype = "text",         ### "numeric", "logical", "nominal", "ordinal", or "text"
  psytype = "belief",        ### "demographic", "belief", "determinant", "proxy", "behavior"
  dependent = "cessation",   ### "initiation", "cessation"
  direction = "consistent",  ### "consistent" (same direction as dependent), "inconsistent"
  parent = NA,               ### Name of parent variable into which this one is aggregated
description = "retrieved from table 1.",          ### Description, as text; or NA
  comment = NA               ### Comment, as text; or NA
);

res$variable[[length(res$variable) + 1]] <- list(
  variable = "Seeing ill relatives aids cessation",
  moment = 1,                ### moment this variable was measured/manipulated
  type = "question",        ### "question", "aggregate", or "manipulation"
  datatype = "text",         ### "numeric", "logical", "nominal", "ordinal", or "text"
  psytype = "belief",        ### "demographic", "belief", "determinant", "proxy", "behavior"
  dependent = "cessation",   ### "initiation", "cessation"
  direction = "consistent",  ### "consistent" (same direction as dependent), "inconsistent"
  parent = NA,               ### Name of parent variable into which this one is aggregated
description = "retrieved from table 1.",          ### Description, as text; or NA
  comment = NA               ### Comment, as text; or NA
);

res$variable[[length(res$variable) + 1]] <- list(
  variable = "Cessation programmes are more enjoyable if they involve fun activities",
  moment = 1,                ### moment this variable was measured/manipulated
  type = "question",        ### "question", "aggregate", or "manipulation"
  datatype = "text",         ### "numeric", "logical", "nominal", "ordinal", or "text"
  psytype = "belief",        ### "demographic", "belief", "determinant", "proxy", "behavior"
  dependent = "cessation",   ### "initiation", "cessation"
  direction = "consistent",  ### "consistent" (same direction as dependent), "inconsistent"
  parent = NA,               ### Name of parent variable into which this one is aggregated
description = "retrieved from table 1.",          ### Description, as text; or NA
  comment = NA               ### Comment, as text; or NA
);

res$variable[[length(res$variable) + 1]] <- list(
  variable = "Cessation programmes without fun activities are boring and aren't inviting to learn",
  moment = 1,                ### moment this variable was measured/manipulated
  type = "question",        ### "question", "aggregate", or "manipulation"
  datatype = "text",         ### "numeric", "logical", "nominal", "ordinal", or "text" 
  psytype = "belief",        ### "demographic", "belief", "determinant", "proxy", "behavior"
  dependent = "cessation",   ### "initiation", "cessation"
  direction = "consistent",  ### "consistent" (same direction as dependent), "inconsistent"
  parent = NA,               ### Name of parent variable into which this one is aggregated
description = "retrieved from table 1.",          ### Description, as text; or NA
  comment = NA               ### Comment, as text; or NA
);

res$variable[[length(res$variable) + 1]] <- list(
  variable = "Non-supportive comments from the environment are discouraging",
  moment = 1,                ### moment this variable was measured/manipulated
  type = "question",        ### "question", "aggregate", or "manipulation"
  datatype = "text",         ### "numeric", "logical", "nominal", "ordinal", or "text"
  psytype = "belief",        ### "demographic", "belief", "determinant", "proxy", "behavior"
  dependent = "cessation",   ### "initiation", "cessation"
  direction = "consistent",  ### "consistent" (same direction as dependent), "inconsistent"
  parent = NA,               ### Name of parent variable into which this one is aggregated
description = "retrieved from table 1.",          ### Description, as text; or NA
  comment = NA               ### Comment, as text; or NA
);

res$variable[[length(res$variable) + 1]] <- list(
  variable = "Tobacco awareness programmes don't do anything, are boring and cause desire to smoke",
  moment = 1,                ### moment this variable was measured/manipulated
  type = "question",        ### "question", "aggregate", or "manipulation"
  datatype = "text",         ### "numeric", "logical", "nominal", "ordinal", or "text"
  psytype = "belief",        ### "demographic", "belief", "determinant", "proxy", "behavior"
  dependent = "cessation",   ### "initiation", "cessation"
  direction = "consistent",  ### "consistent" (same direction as dependent), "inconsistent"
  parent = NA,               ### Name of parent variable into which this one is aggregated
description = "retrieved from table 1.",          ### Description, as text; or NA
  comment = NA               ### Comment, as text; or NA
);

res$variable[[length(res$variable) + 1]] <- list(
  variable = "Parental encouragement aides cessation",
  moment = 1,                ### moment this variable was measured/manipulated
  type = "question",        ### "question", "aggregate", or "manipulation"
  datatype = "text",         ### "numeric", "logical", "nominal", "ordinal", or "text"
  psytype = "belief",        ### "demographic", "belief", "determinant", "proxy", "behavior"
  dependent = "cessation",   ### "initiation", "cessation"
  direction = "consistent",  ### "consistent" (same direction as dependent), "inconsistent"
  parent = NA,               ### Name of parent variable into which this one is aggregated
description = "retrieved from table 1.",          ### Description, as text; or NA
  comment = NA               ### Comment, as text; or NA
);

res$variable[[length(res$variable) + 1]] <- list(
  variable = "Parental cessation could be encouraging",
  moment = 1,                ### moment this variable was measured/manipulated
  type = "question",        ### "question", "aggregate", or "manipulation"
  datatype = "text",         ### "numeric", "logical", "nominal", "ordinal", or "text"
  psytype = "belief",        ### "demographic", "belief", "determinant", "proxy", "behavior"
  dependent = "cessation",   ### "initiation", "cessation"
  direction = "consistent",  ### "consistent" (same direction as dependent), "inconsistent"
  parent = NA,               ### Name of parent variable into which this one is aggregated
description = "retrieved from table 1.",          ### Description, as text; or NA
  comment = NA               ### Comment, as text; or NA
);

res$variable[[length(res$variable) + 1]] <- list(
  variable = "Partner encouragement motivates to quit",
  moment = 1,                ### moment this variable was measured/manipulated
  type = "question",        ### "question", "aggregate", or "manipulation"
  datatype = "text",         ### "numeric", "logical", "nominal", "ordinal", or "text"
  psytype = "belief",        ### "demographic", "belief", "determinant", "proxy", "behavior"
  dependent = "cessation",   ### "initiation", "cessation"
  direction = "consistent",  ### "consistent" (same direction as dependent), "inconsistent"
  parent = NA,               ### Name of parent variable into which this one is aggregated
description = "retrieved from table 1.",          ### Description, as text; or NA
  comment = NA               ### Comment, as text; or NA
);

res$variable[[length(res$variable) + 1]] <- list(
  variable = "Peer pressure from friends encourages to quit",
  moment = 1,                ### moment this variable was measured/manipulated
  type = "question",        ### "question", "aggregate", or "manipulation"
  datatype = "text",         ### "numeric", "logical", "nominal", "ordinal", or "text"
  psytype = "belief",        ### "demographic", "belief", "determinant", "proxy", "behavior"
  dependent = "cessation",   ### "initiation", "cessation"
  direction = "consistent",  ### "consistent" (same direction as dependent), "inconsistent"
  parent = NA,               ### Name of parent variable into which this one is aggregated
description = "retrieved from table 1.",          ### Description, as text; or NA
  comment = NA               ### Comment, as text; or NA
);

res$variable[[length(res$variable) + 1]] <- list(
  variable = "Awareness of declining personal fitness aids cessation",
  moment = 1,                ### moment this variable was measured/manipulated
  type = "question",        ### "question", "aggregate", or "manipulation"
  datatype = "text",         ### "numeric", "logical", "nominal", "ordinal", or "text"
  psytype = "belief",        ### "demographic", "belief", "determinant", "proxy", "behavior"
  dependent = "cessation",   ### "initiation", "cessation"
  direction = "consistent",  ### "consistent" (same direction as dependent), "inconsistent"
  parent = NA,               ### Name of parent variable into which this one is aggregated
description = "retrieved from table 1.",          ### Description, as text; or NA
  comment = NA               ### Comment, as text; or NA
);

res$variable[[length(res$variable) + 1]] <- list(
  variable = "Damage to personal health",
  moment = 1,                ### moment this variable was measured/manipulated
  type = "question",        ### "question", "aggregate", or "manipulation"
  datatype = "text",         ### "numeric", "logical", "nominal", "ordinal", or "text"
  psytype = "belief",        ### "demographic", "belief", "determinant", "proxy", "behavior"
  dependent = "cessation",   ### "initiation", "cessation"
  direction = "consistent",  ### "consistent" (same direction as dependent), "inconsistent"
  parent = NA,               ### Name of parent variable into which this one is aggregated
description = "retrieved from table 1.",          ### Description, as text; or NA
  comment = NA               ### Comment, as text; or NA
);

res$variable[[length(res$variable) + 1]] <- list(
  variable = "Talks and recruitment by physicians",
  moment = 1,                ### moment this variable was measured/manipulated
  type = "question",        ### "question", "aggregate", or "manipulation"
  datatype = "text",         ### "numeric", "logical", "nominal", "ordinal", or "text"
   psytype = "belief",        ### "demographic", "belief", "determinant", "proxy", "behavior"
  dependent = "cessation",   ### "initiation", "cessation"
  direction = "consistent",  ### "consistent" (same direction as dependent), "inconsistent"
  parent = NA,               ### Name of parent variable into which this one is aggregated
description = "retrieved from table 1.",          ### Description, as text; or NA
  comment = NA               ### Comment, as text; or NA
);

res$variable[[length(res$variable) + 1]] <- list(
  variable = "Give people real, truthful information about the importance of cessation",
  moment = 1,                ### moment this variable was measured/manipulated
  type = "question",        ### "question", "aggregate", or "manipulation"
  datatype = "text",         ### "numeric", "logical", "nominal", "ordinal", or "text"
  psytype = "belief",        ### "demographic", "belief", "determinant", "proxy", "behavior"
  dependent = "cessation",   ### "initiation", "cessation"
  direction = "consistent",  ### "consistent" (same direction as dependent), "inconsistent"
  parent = NA,               ### Name of parent variable into which this one is aggregated
description = "retrieved from table 1.",          ### Description, as text; or NA
  comment = NA               ### Comment, as text; or NA
);

res$variable[[length(res$variable) + 1]] <- list(
  variable = "Wanting more control in life",
  moment = 1,                ### moment this variable was measured/manipulated
  type = "question",        ### "question", "aggregate", or "manipulation"
  datatype = "text",         ### "numeric", "logical", "nominal", "ordinal", or "text"
  psytype = "belief",        ### "demographic", "belief", "determinant", "proxy", "behavior"
  dependent = "cessation",   ### "initiation", "cessation"
  direction = "consistent",  ### "consistent" (same direction as dependent), "inconsistent"
  parent = NA,               ### Name of parent variable into which this one is aggregated
description = "retrieved from table 1.",          ### Description, as text; or NA
  comment = NA               ### Comment, as text; or NA
);

res$variable[[length(res$variable) + 1]] <- list(
  variable = "If I knew my younger sister smoked -that would aid my cessation-",
  moment = 1,                ### moment this variable was measured/manipulated
  type = "question",        ### "question", "aggregate", or "manipulation"
  datatype = "text",         ### "numeric", "logical", "nominal", "ordinal", or "text"
  psytype = "belief",        ### "demographic", "belief", "determinant", "proxy", "behavior"
  dependent = "cessation",   ### "initiation", "cessation"
  direction = "consistent",  ### "consistent" (same direction as dependent), "inconsistent"
  parent = NA,               ### Name of parent variable into which this one is aggregated
description = "retrieved from table 1.",          ### Description, as text; or NA
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
