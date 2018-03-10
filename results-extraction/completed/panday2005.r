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
res$bibTexKey <- "Panday2005";

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
res$sample$description <- "Adolescents between 14-16";

### Description of geography of sample, in text
res$sample$geography <- "West Cape province, South Africa";

### Sample size, as a number
res$sample$size <-1178 ;

### SUBSAMPLES - REMOVE THIS SECTION IF THERE ARE NO SUBSAMPLES

### Indicate which information you want to override. Specify the subsample
### you're providing new data for in the single quotes between the double
### brackets; make sure the spelling is exactly identical to the list above.
### Use NA to specify data that should not be overridden.

res$subsample[[length(res$subsample) + 1]] <- list( ### Create object for this subsample
  name = "Monthly smokers",           ### E.g. "Single mothers", "West-Coast
  description = "",                                 ### participants", or "Caucasian teenagers"
  geography = NA,
  size = 517 #this number changes
);

res$subsample[[length(res$subsample) + 1]] <- list( ### Create object for this subsample
  name = "Former smokers",           ### E.g. "Single mothers", "West-Coast
  description = "",                                 ### participants", or "Caucasian teenagers"
  geography = NA,
  size = 659 #this number changes
);

res$subsample[[length(res$subsample) + 1]] <- list( ### Create object for this subsample
  name = "black african students",           ### E.g. "Single mothers", "West-Coast
  description = NA,                                 ### participants", or "Caucasian teenagers"
  geography = NA,
  size = 299 
);

res$subsample[[length(res$subsample) + 1]] <- list( ### Create object for this subsample
  name = "colored students",           ### E.g. "Single mothers", "West-Coast
  description = "",                                 ### participants", or "Caucasian teenagers"
  geography = NA,
  size = 695 
);


res$subsample[[length(res$subsample) + 1]] <- list( ### Create object for this subsample
  name = "white students",           ### E.g. "Single mothers", "West-Coast
  description = "",                                 ### participants", or "Caucasian teenagers"
  geography = NA,
  size = 182
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

###intention not to smoke - black african students

res$association[[length(res$association) + 1]] <- list(
  variable1 = "brother non-smoking",     ### Name of first variable
  var1values = NA,                  ### Values of var 1 in this analysis (e.g. post-hoc)
  var1moment = 1,                   ### Measurement moment of var 1
  variable2 = "smoking status",     ### Name of second variable
  var2values = NA,                  ### Values of var 2 in this analysis (e.g. post-hoc)
  var2moment = 1,                   ### Measurement moment of var 2
  subsample = "black african students",                   ### Name of relevant subsample
  insignificanceOnly = FALSE,       ### Set to true if the paper only reports 'p > .05'
  n = NA,                           ### Number of participants in analysis
  counter = FALSE,                  ### If TRUE (vs FALSE/NA), outcome inconsistent with hypothesis
  r = .15,                          ### Pearson correlation
  comment = "retrieved from table V, Black african students
  Intention not to smoke."                      ### Comment (e.g. calculation, page, etc)
);

res$association[[length(res$association) + 1]] <- list(
  variable1 = "self-efficacy not to smoke",     ### Name of first variable
  var1values = NA,                  ### Values of var 1 in this analysis (e.g. post-hoc)
  var1moment = 1,                   ### Measurement moment of var 1
  variable2 = "smoking status",     ### Name of second variable
  var2values = NA,                  ### Values of var 2 in this analysis (e.g. post-hoc)
  var2moment = 1,                   ### Measurement moment of var 2
  subsample = "black african students",                   ### Name of relevant subsample
  insignificanceOnly = FALSE,       ### Set to true if the paper only reports 'p > .05'
  n = NA,                           ### Number of participants in analysis
  counter = FALSE,                  ### If TRUE (vs FALSE/NA), outcome inconsistent with hypothesis
  r = .51,                          ### Pearson correlation
  comment = "retrieved from table V, Black african students
  Intention not to smoke."                      ### Comment (e.g. calculation, page, etc)
);

###intention not to smoke - colored students


res$association[[length(res$association) + 1]] <- list(
  variable1 = "attitude cons",     ### Name of first variable
  var1values = NA,                  ### Values of var 1 in this analysis (e.g. post-hoc)
  var1moment = 1,                   ### Measurement moment of var 1
  variable2 = "smoking status",     ### Name of second variable
  var2values = NA,                  ### Values of var 2 in this analysis (e.g. post-hoc)
  var2moment = 1,                   ### Measurement moment of var 2
  subsample = "colored students",                   ### Name of relevant subsample
  insignificanceOnly = FALSE,       ### Set to true if the paper only reports 'p > .05'
  n = NA,                           ### Number of participants in analysis
  counter = FALSE,                  ### If TRUE (vs FALSE/NA), outcome inconsistent with hypothesis
  r = -.25,                          ### Pearson correlation
  comment = "retrieved from table V, colored students
  Intention not to smoke."                      ### Comment (e.g. calculation, page, etc)
);


res$association[[length(res$association) + 1]] <- list(
  variable1 = "social pressure not to smoke",     ### Name of first variable
  var1values = NA,                  ### Values of var 1 in this analysis (e.g. post-hoc)
  var1moment = 1,                   ### Measurement moment of var 1
  variable2 = "smoking status",     ### Name of second variable
  var2values = NA,                  ### Values of var 2 in this analysis (e.g. post-hoc)
  var2moment = 1,                   ### Measurement moment of var 2
  subsample = "colored students",                   ### Name of relevant subsample
  insignificanceOnly = FALSE,       ### Set to true if the paper only reports 'p > .05'
  n = NA,                           ### Number of participants in analysis
  counter = FALSE,                  ### If TRUE (vs FALSE/NA), outcome inconsistent with hypothesis
  r = .03,                          ### Pearson correlation
  comment = "retrieved from table V, colored students
  Intention not to smoke."                      ### Comment (e.g. calculation, page, etc)
);


res$association[[length(res$association) + 1]] <- list(
  variable1 = "best friend non-smoking",     ### Name of first variable
  var1values = NA,                  ### Values of var 1 in this analysis (e.g. post-hoc)
  var1moment = 1,                   ### Measurement moment of var 1
  variable2 = "smoking status",     ### Name of second variable
  var2values = NA,                  ### Values of var 2 in this analysis (e.g. post-hoc)
  var2moment = 1,                   ### Measurement moment of var 2
  subsample = "colored students",                   ### Name of relevant subsample
  insignificanceOnly = FALSE,       ### Set to true if the paper only reports 'p > .05'
  n = NA,                           ### Number of participants in analysis
  counter = FALSE,                  ### If TRUE (vs FALSE/NA), outcome inconsistent with hypothesis
  r = .29,                          ### Pearson correlation
  comment = "retrieved from table V, colored students
  Intention not to smoke."                      ### Comment (e.g. calculation, page, etc)
);

res$association[[length(res$association) + 1]] <- list(
  variable1 = "self-efficacy not to smoke",     ### Name of first variable
  var1values = NA,                  ### Values of var 1 in this analysis (e.g. post-hoc)
  var1moment = 1,                   ### Measurement moment of var 1
  variable2 = "smoking status",     ### Name of second variable
  var2values = NA,                  ### Values of var 2 in this analysis (e.g. post-hoc)
  var2moment = 1,                   ### Measurement moment of var 2
  subsample = "colored students",                   ### Name of relevant subsample
  insignificanceOnly = FALSE,       ### Set to true if the paper only reports 'p > .05'
  n = NA,                           ### Number of participants in analysis
  counter = FALSE,                  ### If TRUE (vs FALSE/NA), outcome inconsistent with hypothesis
  r = .68,                          ### Pearson correlation
  comment = "retrieved from table V, colored students
  Intention not to smoke."                      ### Comment (e.g. calculation, page, etc)
);

res$association[[length(res$association) + 1]] <- list(
  variable1 = "intention not to smoke",     ### Name of first variable
  var1values = NA,                  ### Values of var 1 in this analysis (e.g. post-hoc)
  var1moment = 1,                   ### Measurement moment of var 1
  variable2 = "smoking status",     ### Name of second variable
  var2values = NA,                  ### Values of var 2 in this analysis (e.g. post-hoc)
  var2moment = 1,                   ### Measurement moment of var 2
  subsample = "colored students",                   ### Name of relevant subsample
  insignificanceOnly = FALSE,       ### Set to true if the paper only reports 'p > .05'
  n = NA,                           ### Number of participants in analysis
  counter = FALSE,                  ### If TRUE (vs FALSE/NA), outcome inconsistent with hypothesis
  r = .53,                          ### Pearson correlation
  comment = "retrieved from table V, colored students
  Intention not to smoke."                      ### Comment (e.g. calculation, page, etc)
);


res$association[[length(res$association) + 1]] <- list(
  variable1 = "social pressure not to smoke",     ### Name of first variable
  var1values = NA,                  ### Values of var 1 in this analysis (e.g. post-hoc)
  var1moment = 1,                   ### Measurement moment of var 1
  variable2 = "smoking status",     ### Name of second variable
  var2values = NA,                  ### Values of var 2 in this analysis (e.g. post-hoc)
  var2moment = 1,                   ### Measurement moment of var 2
  subsample = "white students",                   ### Name of relevant subsample
  insignificanceOnly = FALSE,       ### Set to true if the paper only reports 'p > .05'
  n = NA,                           ### Number of participants in analysis
  counter = FALSE,                  ### If TRUE (vs FALSE/NA), outcome inconsistent with hypothesis
  r = -.02,                          ### Pearson correlation
  comment = "retrieved from table V, white students
  Intention not to smoke."                      ### Comment (e.g. calculation, page, etc)
);

res$association[[length(res$association) + 1]] <- list(
  variable1 = "self-efficacy not to smoke",     ### Name of first variable
  var1values = NA,                  ### Values of var 1 in this analysis (e.g. post-hoc)
  var1moment = 1,                   ### Measurement moment of var 1
  variable2 = "smoking status",     ### Name of second variable
  var2values = NA,                  ### Values of var 2 in this analysis (e.g. post-hoc)
  var2moment = 1,                   ### Measurement moment of var 2
  subsample = "white students",                   ### Name of relevant subsample
  insignificanceOnly = FALSE,       ### Set to true if the paper only reports 'p > .05'
  n = NA,                           ### Number of participants in analysis
  counter = FALSE,                  ### If TRUE (vs FALSE/NA), outcome inconsistent with hypothesis
  r = .68,                          ### Pearson correlation
  comment = "retrieved from table V, white students
  Intention not to smoke."                      ### Comment (e.g. calculation, page, etc)
);

res$association[[length(res$association) + 1]] <- list(
  variable1 = "intention not to smoke",     ### Name of first variable
  var1values = NA,                  ### Values of var 1 in this analysis (e.g. post-hoc)
  var1moment = 1,                   ### Measurement moment of var 1
  variable2 = "smoking status",     ### Name of second variable
  var2values = NA,                  ### Values of var 2 in this analysis (e.g. post-hoc)
  var2moment = 1,                   ### Measurement moment of var 2
  subsample = "white students",                   ### Name of relevant subsample
  insignificanceOnly = FALSE,       ### Set to true if the paper only reports 'p > .05'
  n = NA,                           ### Number of participants in analysis
  counter = FALSE,                  ### If TRUE (vs FALSE/NA), outcome inconsistent with hypothesis
  r = .61,                          ### Pearson correlation
  comment = "retrieved from table V, white students
  Intention not to smoke."                     ### Comment (e.g. calculation, page, etc)
);


##########################################################################
### UNIVARIATE RESULTS: PERCENTAGES, MEANS, ETC
##########################################################################


#'brother non-smoking', 'self-efficacy not to smoke', 'attitude cons', 
#'social pressure not to smoke', 'best friend not smoking'

res$univariate[[length(res$univariate) + 1]] <- list(
  variable = "Pros of smoking",       ### Name of variable this result pertains to
  subsample = "Smokers",                   ### Name of relevant subsample, or NA
  mean = 1.17,                        ### Mean or NA
  qualitative = NA,                 ### Description (qualitative research)
  comment = "Retrieved from Table III, p. 594 N= 517
  answer scale -2 to +2 (where social pressure is scaled 0 to 4) 
  bad for health = -2"                      ### Comment or NA
);

res$univariate[[length(res$univariate) + 1]] <- list(
  variable = "Pros of smoking",       ### Name of variable this result pertains to
  subsample = "Former smokers",                   ### Name of relevant subsample, or NA
  mean = 1.53,                        ### Mean or NA
  qualitative = NA,                 ### Description (qualitative research)
  comment = "Retrieved from Table III, p. 594, N= 659
  answer scale -2 to +2 (where social pressure is scaled 0 to 4)"                      ### Comment or NA
);

res$univariate[[length(res$univariate) + 1]] <- list(
  variable = "Cons of smoking",       ### Name of variable this result pertains to
  subsample = "Smokers",                   ### Name of relevant subsample, or NA   
  mean = -.69,                        ### Mean or NA
  qualitative = NA,                 ### Description (qualitative research)
  comment = "Retrieved from Table III, p. 594, N = 517
  answer scale -2 to +2 (where social pressure is scaled 0 to 4)"                      ### Comment or NA
);

res$univariate[[length(res$univariate) + 1]] <- list(
  variable = "Cons of smoking",       ### Name of variable this result pertains to
  subsample = "Former smokers",                   ### Name of relevant subsample, or NA
  mean = -1.01,                        ### Mean or NA
  qualitative = NA,                 ### Description (qualitative research)
  comment = "Retrieved from Table III, p. 594, N = 659
  answer scale -2 to +2 (where social pressure is scaled 0 to 4)"                      ### Comment or NA
);

res$univariate[[length(res$univariate) + 1]] <- list(
  variable = "Social norm family",       ### Name of variable this result pertains to
  subsample = "Smokers",                   ### Name of relevant subsample, or NA
  mean = .96,                        ### Mean or NA
  qualitative = NA,                 ### Description (qualitative research)
  comment = "Retrieved from Table III, p. 594, Perceived social norm not to smoke. N = 505
  answer scale -2 to +2 (where social pressure is scaled 0 to 4)
  -2 = def. should smoke"                      ### Comment or NA
);

res$univariate[[length(res$univariate) + 1]] <- list(
  variable = "Social norm family",       ### Name of variable this result pertains to
  subsample = "Former smokers",                   ### Name of relevant subsample, or NA
  mean = 1.22,                        ### Mean or NA
  qualitative = NA,                 ### Description (qualitative research)
  comment = "Retrieved from Table III, p. 594, Perceived social norm not to smoke. N = 648
  answer scale -2 to +2 (where social pressure is scaled 0 to 4)"                      ### Comment or NA
);

res$univariate[[length(res$univariate) + 1]] <- list(
  variable = "Social norm friends",       ### Name of variable this result pertains to
  subsample = "Smokers",                   ### Name of relevant subsample, or NA
  mean = .68,                        ### Mean or NA
  qualitative = NA,                 ### Description (qualitative research)
  comment = "Retrieved from Table III, p. 594, Perceived social norm not to smoke N = 505
  answer scale -2 to +2 (where social pressure is scaled 0 to 4)"                      ### Comment or NA
);

res$univariate[[length(res$univariate) + 1]] <- list(
  variable = "Social norm friends",       ### Name of variable this result pertains to
  subsample = "Former smokers",                   ### Name of relevant subsample, or NA
  mean = 1.15,                       ### Mean or NA
  qualitative = NA,                 ### Description (qualitative research)
  comment = "Retrieved from Table III, p. 594, Perceived social norm not to smoke, N = 648
  answer scale -2 to +2 (where social pressure is scaled 0 to 4)"                      ### Comment or NA
);

res$univariate[[length(res$univariate) + 1]] <- list(
  variable = "Social norm teachers",       ### Name of variable this result pertains to
  subsample = "Smokers",                   ### Name of relevant subsample, or NA
  mean = 1.19,                        ### Mean or NA
  qualitative = NA,                 ### Description (qualitative research)
  comment = "Retrieved from Table III, p. 594, Perceived social norm not to smoke, N = 505 
  answer scale -2 to +2 (where social pressure is scaled 0 to 4)"                      ### Comment or NA
);

res$univariate[[length(res$univariate) + 1]] <- list(
  variable = "Social norm teachers",       ### Name of variable this result pertains to
  subsample = "Former smokers",                   ### Name of relevant subsample, or NA
  mean = 1.42,                        ### Mean or NA
  qualitative = NA,                 ### Description (qualitative research)
  comment = "Retrieved from Table III, p. 594, Perceived social norm not to smoke N = 648
  answer scale -2 to +2 (where social pressure is scaled 0 to 4)"                      ### Comment or NA
);

res$univariate[[length(res$univariate) + 1]] <- list(
  variable = "Perceived behavior of important others",       ### Name of variable this result pertains to
  subsample = "Smokers",                   ### Name of relevant subsample, or NA
  mean = .44,                        ### Mean or NA
  qualitative = NA,                 ### Description (qualitative research)
  comment = "Retrieved from Table III, p. 594. N = 505
  answer scale 0 to +1 (where social pressure is scaled 0 to 4)
  from page 590:
   important others (combined into family,friends,and teacher, see
Table I) thought that they definitely should (-2) or should not (+2) smoke."                      ### Comment or NA  
);

res$univariate[[length(res$univariate) + 1]] <- list(
  variable = "Perceived behavior of important others",       ### Name of variable this result pertains to
  subsample = "Former smokers",                   ### Name of relevant subsample, or NA
  mean = .51,                        ### Mean or NA
  qualitative = NA,                 ### Description (qualitative research)
  comment = "Retrieved from Table III, p. 594, N = 648
  answer scale 0 to +1 (where social pressure is scaled 0 to 4)
  "                      ### Comment or NA
);

res$univariate[[length(res$univariate) + 1]] <- list(
  variable = "Social nonsmoking pressure family",       ### Name of variable this result pertains to
  subsample = "Smokers",                   ### Name of relevant subsample, or NA
  mean = 1.48,                        ### Mean or NA
  qualitative = NA,                 ### Description (qualitative research)
  comment = "Retrieved from Table III, p. 594, N = 505
  answer scale 0 to 4 (where pros of smoking is scaled -2 to +2
  )
  0= Never"                      ### Comment or NA
);


res$univariate[[length(res$univariate) + 1]] <- list(
  variable = "Social nonsmoking pressure family",       ### Name of variable this result pertains to
  subsample = "Former smokers",                   ### Name of relevant subsample, or NA
  mean = 1.51,                        ### Mean or NA
  qualitative = NA,                 ### Description (qualitative research)
  comment = "Retrieved from Table III, p. 594. N = 648
  answer scale 0 to 4 (where pros of smoking is scaled -2 to +2)"                      ### Comment or NA
);

res$univariate[[length(res$univariate) + 1]] <- list(
  variable = "Social nonsmoking pressure friends",       ### Name of variable this result pertains to
  subsample = "Smokers",                   ### Name of relevant subsample, or NA
  mean = 1.40,                        ### Mean or NA
  qualitative = NA,                 ### Description (qualitative research)
  comment = "Retrieved from Table III, p. 594, N = 505
  answer scale 0 to 4 (where pros of smoking is scaled -2 to +2)"                      ### Comment or NA
);

res$univariate[[length(res$univariate) + 1]] <- list(
  variable = "Social nonsmoking pressure friends",       ### Name of variable this result pertains to
  subsample = "Former smokers",                   ### Name of relevant subsample, or NA
  mean = 1.62,                        ### Mean or NA
  qualitative = NA,                 ### Description (qualitative research)
  comment = "Retrieved from Table III, p. 594. N = 648
  answer scale 0 to 4 (where pros of smoking is scaled -2 to +2)"                      ### Comment or NA
);

res$univariate[[length(res$univariate) + 1]] <- list(
  variable = "Social nonsmoking pressure teachers",       ### Name of variable this result pertains to
  subsample = "Smokers",                   ### Name of relevant subsample, or NA
  mean = 1.76,                        ### Mean or NA
  qualitative = NA,                 ### Description (qualitative research)
  comment = "Retrieved from Table III, p. 594, N = 505
  answer scale 0 to 4 (where pros of smoking is scaled -2 to +2)"                      ### Comment or NA
);

res$univariate[[length(res$univariate) + 1]] <- list(
  variable = "Social nonsmoking pressure teachers",       ### Name of variable this result pertains to
  subsample = "Former smokers",                   ### Name of relevant subsample, or NA
  mean = 2.03,                        ### Mean or NA
  qualitative = NA,                 ### Description (qualitative research)
  comment = "Retrieved from Table III, p. 594., N = 648
  answer scale 0 to 4 (where pros of smoking is scaled -2 to +2)"                      ### Comment or NA
);

res$univariate[[length(res$univariate) + 1]] <- list(
  variable = "Self efficacy - stress",       ### Name of variable this result pertains to
  subsample = "Smokers",                   ### Name of relevant subsample, or NA
  mean = .00,                        ### Mean or NA
  qualitative = NA,                 ### Description (qualitative research)
  comment = "Retrieved from Table III, p. 594 N = 519
  answer scale  -2 to +2 (where social pressure is scaled 0 to 4)
  -2 = sure I will smoke"                      ### Comment or NA
);

res$univariate[[length(res$univariate) + 1]] <- list(
  variable = "Self efficacy - stress",       ### Name of variable this result pertains to
  subsample = "Former smokers",                   ### Name of relevant subsample, or NA
  mean = 1.39,                        ### Mean or NA
  qualitative = NA,                 ### Description (qualitative research)
  comment = "Retrieved from Table III, p. 594. N = 659
  answer scale  -2 to +2 (where social pressure is scaled 0 to 4)"                      ### Comment or NA
);

res$univariate[[length(res$univariate) + 1]] <- list(
  variable = "Self efficacy - routine",       ### Name of variable this result pertains to
  subsample = "Smokers",                   ### Name of relevant subsample, or NA
  mean = .56,                        ### Mean or NA
  qualitative = NA,                 ### Description (qualitative research)
  comment = "Retrieved from Table III, p. 594, N = 519
  answer scale  -2 to +2 (where social pressure is scaled 0 to 4)"                      ### Comment or NA
);

res$univariate[[length(res$univariate) + 1]] <- list(
  variable = "Self efficacy - routine",       ### Name of variable this result pertains to
  subsample = "Former smokers",                   ### Name of relevant subsample, or NA
  mean = 1.57,                        ### Mean or NA
  qualitative = NA,                 ### Description (qualitative research)
  comment = "Retrieved from Table III, p. 594. N = 659
  answer scale -2 to +2 (where social pressure is scaled 0 to 4)"                      ### Comment or NA
);

res$univariate[[length(res$univariate) + 1]] <- list(
  variable = "Self efficacy - social",       ### Name of variable this result pertains to
  subsample = "Smokers",                   ### Name of relevant subsample, or NA
  mean = -.08,                        ### Mean or NA
  qualitative = NA,                 ### Description (qualitative research)
  comment = "Retrieved from Table III, p. 594, N = 519
  answer scale  -2 to +2 (where social pressure is scaled 0 to 4)"                      ### Comment or NA
);

res$univariate[[length(res$univariate) + 1]] <- list(
  variable = "Self efficacy - social",       ### Name of variable this result pertains to
  subsample = "Former smokers",                   ### Name of relevant subsample, or NA
  mean = 1.30 ,                        ### Mean or NA
  qualitative = NA,                 ### Description (qualitative research)
  comment = "Retrieved from Table III, p. 594. N = 659
  answer scale -2 to +2 (where social pressure is scaled 0 to 4)"                      ### Comment or NA
);

res$univariate[[length(res$univariate) + 1]] <- list(
  variable = "Intention not to smoke within next year",       ### Name of variable this result pertains to
  subsample = "Smokers",                   ### Name of relevant subsample, or NA
  mean = -.04,                        ### Mean or NA
  qualitative = NA,                 ### Description (qualitative research)
  comment = "Retrieved from Table III, p. 594, N = 519
  answer scale -2 to +2 (where social pressure is scaled 0 to 4)
  -2 def. will smoke"                      ### Comment or NA
);

res$univariate[[length(res$univariate) + 1]] <- list(
  variable = "Intention not to smoke within next year",       ### Name of variable this result pertains to
  subsample = "Former smokers",                   ### Name of relevant subsample, or NA
  mean = 1.25,                        ### Mean or NA
  qualitative = NA,                 ### Description (qualitative research)
  comment = "Retrieved from Table III, p. 594. N = 659
  answer scale -2 to +2 (where social pressure is scaled 0 to 4)"                      ### Comment or NA
);
##########################################################################

# generateOperationalisationTemplates(object=res,
#                                  defaultOverrides =
#   list(dependent='"cessation"',
#        moment = 1, type = '"question"', datatype = '"numeric"', psytype = '"belief"', direction = '"consistent"'));
#
##########################################################################
### MEASUREMENTS AND MANIPULATIONS: THE VARIABLES IN THE STUDY
##########################################################################


res$variable[[length(res$variable) + 1]] <- list(
  variable = "brother non-smoking",
  moment = 1,                ### moment this variable was measured/manipulated
  type = "question",         ### "question", "aggregate", or "manipulation"
  datatype = "numeric",      ### "numeric", "logical", "nominal", "ordinal", or "text"
  values = NA,               ### Possible values; NA or a vector, e.g. c(1, 2, 3)
  labels = NA,               ### Labels for the values; NA or e.g. c("no", "maybe", "sometimes")
  psytype = "belief",        ### "demographic", "belief", "determinant", "proxy", "behavior"
  dependent = "cessation",   ### "initiation", "cessation"
  direction = "consistent",  ### "consistent" (same direction as dependent), "inconsistent"
  parent = NA,               ### Name of parent variable into which this one is aggregated
  description = NA,          ### Description, as text; or NA
  comment = "retrieved from table V."               ### Comment, as text; or NA
);

res$variable[[length(res$variable) + 1]] <- list(
  variable = "smoking status",
  moment = 1,                ### moment this variable was measured/manipulated
  type = "question",         ### "question", "aggregate", or "manipulation"
  datatype = "logical",      ### "numeric", "logical", "nominal", "ordinal", or "text"
  values = NA,               ### Possible values; NA or a vector, e.g. c(1, 2, 3)
  labels = NA,               ### Labels for the values; NA or e.g. c("no", "maybe", "sometimes")
  psytype = "behavior",        ### "demographic", "belief", "determinant", "proxy", "behavior"
  dependent = "cessation",   ### "initiation", "cessation"
  direction = "consistent",  ### "consistent" (same direction as dependent), "inconsistent"
  parent = NA,               ### Name of parent variable into which this one is aggregated
  description = NA,          ### Description, as text; or NA
  comment = "retrieved from table V."               ### Comment, as text; or NA
);

res$variable[[length(res$variable) + 1]] <- list(
  variable = "self-efficacy not to smoke",
  moment = 1,                ### moment this variable was measured/manipulated
  type = "aggregate",        ### "question", "aggregate", or "manipulation"
  datatype = "numeric",      ### "numeric", "logical", "nominal", "ordinal", or "text"
  values = NA,               ### Possible values; NA or a vector, e.g. c(1, 2, 3)
  labels = NA,               ### Labels for the values; NA or e.g. c("no", "maybe", "sometimes")
  psytype = "determinant",   ### "demographic", "belief", "determinant", "proxy", "behavior"
  dependent = "cessation",   ### "initiation", "cessation"
  direction = "consistent",  ### "consistent" (same direction as dependent), "inconsistent"
  parent = NA,               ### Name of parent variable into which this one is aggregated
  description = NA,          ### Description, as text; or NA
  comment = "retrieved from table V."               ### Comment, as text; or NA
);

res$variable[[length(res$variable) + 1]] <- list(
  variable = "attitude cons",
  moment = 1,                ### moment this variable was measured/manipulated
  type = "aggregate",         ### "question", "aggregate", or "manipulation"
  datatype = "numeric",      ### "numeric", "logical", "nominal", "ordinal", or "text"
  values = NA,               ### Possible values; NA or a vector, e.g. c(1, 2, 3)
  labels = NA,               ### Labels for the values; NA or e.g. c("no", "maybe", "sometimes")
  psytype = "belief",        ### "demographic", "belief", "determinant", "proxy", "behavior"
  dependent = "cessation",   ### "initiation", "cessation"
  direction = "consistent",  ### "consistent" (same direction as dependent), "inconsistent"
  parent = NA,               ### Name of parent variable into which this one is aggregated
  description = NA,          ### Description, as text; or NA
  comment = "retrieved from table V."               ### Comment, as text; or NA
);

res$variable[[length(res$variable) + 1]] <- list(
  variable = "social pressure not to smoke",
  moment = 1,                ### moment this variable was measured/manipulated
  type = "aggregate",         ### "question", "aggregate", or "manipulation"
  datatype = "numeric",      ### "numeric", "logical", "nominal", "ordinal", or "text"
  values = NA,               ### Possible values; NA or a vector, e.g. c(1, 2, 3)
  labels = NA,               ### Labels for the values; NA or e.g. c("no", "maybe", "sometimes")
  psytype = "belief",        ### "demographic", "belief", "determinant", "proxy", "behavior"
  dependent = "cessation",   ### "initiation", "cessation"
  direction = "consistent",  ### "consistent" (same direction as dependent), "inconsistent"
  parent = NA,               ### Name of parent variable into which this one is aggregated
  description = NA,          ### Description, as text; or NA
  comment = "retrieved from table V."               ### Comment, as text; or NA
);

res$variable[[length(res$variable) + 1]] <- list(
  variable = "best friend non-smoking",
  moment = 1,                ### moment this variable was measured/manipulated
  type = "question",         ### "question", "aggregate", or "manipulation"
  datatype = "numeric",      ### "numeric", "logical", "nominal", "ordinal", or "text"
  values = NA,               ### Possible values; NA or a vector, e.g. c(1, 2, 3)
  labels = NA,               ### Labels for the values; NA or e.g. c("no", "maybe", "sometimes")
  psytype = "belief",        ### "demographic", "belief", "determinant", "proxy", "behavior"
  dependent = "cessation",   ### "initiation", "cessation"
  direction = "consistent",  ### "consistent" (same direction as dependent), "inconsistent"
  parent = NA,               ### Name of parent variable into which this one is aggregated
  description = NA,          ### Description, as text; or NA
  comment = "retrieved from table V."               ### Comment, as text; or NA
);

res$variable[[length(res$variable) + 1]] <- list(
  variable = "intention not to smoke",
  moment = 1,                ### moment this variable was measured/manipulated
  type = "question",         ### "question", "aggregate", or "manipulation"
  datatype = "numeric",      ### "numeric", "logical", "nominal", "ordinal", or "text"
  values = NA,               ### Possible values; NA or a vector, e.g. c(1, 2, 3)
  labels = NA,               ### Labels for the values; NA or e.g. c("no", "maybe", "sometimes")
  psytype = "belief",        ### "demographic", "belief", "determinant", "proxy", "behavior"
  dependent = "cessation",   ### "initiation", "cessation"
  direction = "consistent",  ### "consistent" (same direction as dependent), "inconsistent"
  parent = NA,               ### Name of parent variable into which this one is aggregated
  description = NA,          ### Description, as text; or NA
  comment = "retrieved from table V."               ### Comment, as text; or NA
);

###########################################################################

res$variable[[length(res$variable) + 1]] <- list(
  variable = "Pros of smoking",
  moment = 1,                ### moment this variable was measured/manipulated
  type = "aggregate",         ### "question", "aggregate", or "manipulation"
  datatype = "numeric",      ### "numeric", "logical", "nominal", "ordinal", or "text"
  values = NA,               ### Possible values; NA or a vector, e.g. c(1, 2, 3)
  labels = NA,               ### Labels for the values; NA or e.g. c("no", "maybe", "sometimes")
  psytype = "belief",        ### "demographic", "belief", "determinant", "proxy", "behavior"
  dependent = "cessation",   ### "initiation", "cessation"
  direction = "inconsistent",  ### "consistent" (same direction as dependent), "inconsistent"
  parent = NA,               ### Name of parent variable into which this one is aggregated
  description = NA,          ### Description, as text; or NA
  comment = "retrieved from table III."               ### Comment, as text; or NA
);

res$variable[[length(res$variable) + 1]] <- list(
  variable = "Cons of smoking",
  moment = 1,                ### moment this variable was measured/manipulated
  type = "aggregate",         ### "question", "aggregate", or "manipulation"
  datatype = "numeric",      ### "numeric", "logical", "nominal", "ordinal", or "text"
  values = NA,               ### Possible values; NA or a vector, e.g. c(1, 2, 3)
  labels = NA,               ### Labels for the values; NA or e.g. c("no", "maybe", "sometimes")
  psytype = "belief",        ### "demographic", "belief", "determinant", "proxy", "behavior"
  dependent = "cessation",   ### "initiation", "cessation"
  direction = "consistent",  ### "consistent" (same direction as dependent), "inconsistent"
  parent = NA,               ### Name of parent variable into which this one is aggregated
  description = NA,          ### Description, as text; or NA
  comment = "retrieved from table III."               ### Comment, as text; or NA
);

res$variable[[length(res$variable) + 1]] <- list(
  variable = "Social norm family",
  moment = 1,                ### moment this variable was measured/manipulated
  type = "aggregate",         ### "question", "aggregate", or "manipulation"
  datatype = "numeric",      ### "numeric", "logical", "nominal", "ordinal", or "text"
  values = NA,               ### Possible values; NA or a vector, e.g. c(1, 2, 3)
  labels = NA,               ### Labels for the values; NA or e.g. c("no", "maybe", "sometimes")
  psytype = "belief",        ### "demographic", "belief", "determinant", "proxy", "behavior"
  dependent = "cessation",   ### "initiation", "cessation"
  direction = "consistent",  ### "consistent" (same direction as dependent), "inconsistent"
  parent = NA,               ### Name of parent variable into which this one is aggregated
  description = NA,          ### Description, as text; or NA
  comment = "retrieved from table III."               ### Comment, as text; or NA
);

res$variable[[length(res$variable) + 1]] <- list(
  variable = "Social norm friends",
  moment = 1,                ### moment this variable was measured/manipulated
  type = "question",         ### "question", "aggregate", or "manipulation"
  datatype = "numeric",      ### "numeric", "logical", "nominal", "ordinal", or "text"
  values = NA,               ### Possible values; NA or a vector, e.g. c(1, 2, 3)
  labels = NA,               ### Labels for the values; NA or e.g. c("no", "maybe", "sometimes")
  psytype = "belief",        ### "demographic", "belief", "determinant", "proxy", "behavior"
  dependent = "cessation",   ### "initiation", "cessation"
  direction = "consistent",  ### "consistent" (same direction as dependent), "inconsistent"
  parent = NA,               ### Name of parent variable into which this one is aggregated
  description = NA,          ### Description, as text; or NA
  comment = "retrieved from table III. Question-type based on explanation on page 590"               ### Comment, as text; or NA
);

res$variable[[length(res$variable) + 1]] <- list(
  variable = "Social norm teachers",
  moment = 1,                ### moment this variable was measured/manipulated
  type = "question",         ### "question", "aggregate", or "manipulation"
  datatype = "numeric",      ### "numeric", "logical", "nominal", "ordinal", or "text"
  values = NA,               ### Possible values; NA or a vector, e.g. c(1, 2, 3)
  labels = NA,               ### Labels for the values; NA or e.g. c("no", "maybe", "sometimes")
  psytype = "belief",        ### "demographic", "belief", "determinant", "proxy", "behavior"
  dependent = "cessation",   ### "initiation", "cessation"
  direction = "consistent",  ### "consistent" (same direction as dependent), "inconsistent"
  parent = NA,               ### Name of parent variable into which this one is aggregated
  description = NA,          ### Description, as text; or NA
  comment = "retrieved from table III. Question-type based on explanation on page 590"               ### Comment, as text; or NA
);

res$variable[[length(res$variable) + 1]] <- list(
  variable = "Perceived behavior of important others",
  moment = 1,                ### moment this variable was measured/manipulated
  type = "aggregate",         ### "question", "aggregate", or "manipulation"
  datatype = "logical",      ### "numeric", "logical", "nominal", "ordinal", or "text"
  values = NA,               ### Possible values; NA or a vector, e.g. c(1, 2, 3)
  labels = NA,               ### Labels for the values; NA or e.g. c("no", "maybe", "sometimes")
  psytype = "belief",        ### "demographic", "belief", "determinant", "proxy", "behavior"
  dependent = "cessation",   ### "initiation", "cessation"
  direction = "consistent",  ### "consistent" (same direction as dependent), "inconsistent"
  parent = NA,               ### Name of parent variable into which this one is aggregated
  description = NA,          ### Description, as text; or NA
  comment = "retrieved from table III."               ### Comment, as text; or NA
);

res$variable[[length(res$variable) + 1]] <- list(
  variable = "Social nonsmoking pressure family",
  moment = 1,                ### moment this variable was measured/manipulated
  type = "aggregate",         ### "question", "aggregate", or "manipulation"
  datatype = "numeric",      ### "numeric", "logical", "nominal", "ordinal", or "text"
  values = NA,               ### Possible values; NA or a vector, e.g. c(1, 2, 3)
  labels = NA,               ### Labels for the values; NA or e.g. c("no", "maybe", "sometimes")
  psytype = "belief",        ### "demographic", "belief", "determinant", "proxy", "behavior"
  dependent = "cessation",   ### "initiation", "cessation"
  direction = "consistent",  ### "consistent" (same direction as dependent), "inconsistent"
  parent = NA,               ### Name of parent variable into which this one is aggregated
  description = NA,          ### Description, as text; or NA
  comment = "retrieved from table III."               ### Comment, as text; or NA
);

res$variable[[length(res$variable) + 1]] <- list(
  variable = "Social nonsmoking pressure friends",
  moment = 1,                ### moment this variable was measured/manipulated
  type = "question",         ### "question", "aggregate", or "manipulation"
  datatype = "numeric",      ### "numeric", "logical", "nominal", "ordinal", or "text"
  values = NA,               ### Possible values; NA or a vector, e.g. c(1, 2, 3)
  labels = NA,               ### Labels for the values; NA or e.g. c("no", "maybe", "sometimes")
  psytype = "belief",        ### "demographic", "belief", "determinant", "proxy", "behavior"
  dependent = "cessation",   ### "initiation", "cessation"
  direction = "consistent",  ### "consistent" (same direction as dependent), "inconsistent"
  parent = NA,               ### Name of parent variable into which this one is aggregated
  description = NA,          ### Description, as text; or NA
  comment = "retrieved from table III. Question-type based on explanation on page 590"               ### Comment, as text; or NA
);

res$variable[[length(res$variable) + 1]] <- list(
  variable = "Social nonsmoking pressure teachers",
  moment = 1,                ### moment this variable was measured/manipulated
  type = "question",         ### "question", "aggregate", or "manipulation"
  datatype = "numeric",      ### "numeric", "logical", "nominal", "ordinal", or "text"
  values = NA,               ### Possible values; NA or a vector, e.g. c(1, 2, 3)
  labels = NA,               ### Labels for the values; NA or e.g. c("no", "maybe", "sometimes")
  psytype = "belief",        ### "demographic", "belief", "determinant", "proxy", "behavior"
  dependent = "cessation",   ### "initiation", "cessation"
  direction = "consistent",  ### "consistent" (same direction as dependent), "inconsistent"
  parent = NA,               ### Name of parent variable into which this one is aggregated
  description = NA,          ### Description, as text; or NA
  comment = "retrieved from table III. Question-type based on explanation on page 590"               ### Comment, as text; or NA
);

res$variable[[length(res$variable) + 1]] <- list(
  variable = "Self efficacy - stress",
  moment = 1,                ### moment this variable was measured/manipulated
  type = "aggregate",         ### "question", "aggregate", or "manipulation"
  datatype = "numeric",      ### "numeric", "logical", "nominal", "ordinal", or "text"
  values = NA,               ### Possible values; NA or a vector, e.g. c(1, 2, 3)
  labels = NA,               ### Labels for the values; NA or e.g. c("no", "maybe", "sometimes")
  psytype = "belief",        ### "demographic", "belief", "determinant", "proxy", "behavior"
  dependent = "cessation",   ### "initiation", "cessation"
  direction = "consistent",  ### "consistent" (same direction as dependent), "inconsistent"
  parent = NA,               ### Name of parent variable into which this one is aggregated
  description = NA,          ### Description, as text; or NA
  comment = "retrieved from table III."               ### Comment, as text; or NA
);

res$variable[[length(res$variable) + 1]] <- list(
  variable = "Self efficacy - routine",
  moment = 1,                ### moment this variable was measured/manipulated
  type = "aggregate",         ### "question", "aggregate", or "manipulation"
  datatype = "numeric",      ### "numeric", "logical", "nominal", "ordinal", or "text"
  values = NA,               ### Possible values; NA or a vector, e.g. c(1, 2, 3)
  labels = NA,               ### Labels for the values; NA or e.g. c("no", "maybe", "sometimes")
  psytype = "belief",        ### "demographic", "belief", "determinant", "proxy", "behavior"
  dependent = "cessation",   ### "initiation", "cessation"
  direction = "consistent",  ### "consistent" (same direction as dependent), "inconsistent"
  parent = NA,               ### Name of parent variable into which this one is aggregated
  description = NA,          ### Description, as text; or NA
  comment = "retrieved from table III."               ### Comment, as text; or NA
);

res$variable[[length(res$variable) + 1]] <- list(
  variable = "Self efficacy - social",
  moment = 1,                ### moment this variable was measured/manipulated
  type = "aggregate",         ### "question", "aggregate", or "manipulation"
  datatype = "numeric",      ### "numeric", "logical", "nominal", "ordinal", or "text"
  values = NA,               ### Possible values; NA or a vector, e.g. c(1, 2, 3)
  labels = NA,               ### Labels for the values; NA or e.g. c("no", "maybe", "sometimes")
  psytype = "belief",        ### "demographic", "belief", "determinant", "proxy", "behavior"
  dependent = "cessation",   ### "initiation", "cessation"
  direction = "consistent",  ### "consistent" (same direction as dependent), "inconsistent"
  parent = NA,               ### Name of parent variable into which this one is aggregated
  description = NA,          ### Description, as text; or NA
  comment = "retrieved from table III."               ### Comment, as text; or NA
);

res$variable[[length(res$variable) + 1]] <- list(
  variable = "Intention not to smoke within next year",
  moment = 1,                ### moment this variable was measured/manipulated
  type = "question",         ### "question", "aggregate", or "manipulation"
  datatype = "numeric",      ### "numeric", "logical", "nominal", "ordinal", or "text"
  values = NA,               ### Possible values; NA or a vector, e.g. c(1, 2, 3)
  labels = NA,               ### Labels for the values; NA or e.g. c("no", "maybe", "sometimes")
  psytype = "belief",        ### "demographic", "belief", "determinant", "proxy", "behavior"
  dependent = "cessation",   ### "initiation", "cessation"
  direction = "consistent",  ### "consistent" (same direction as dependent), "inconsistent"
  parent = NA,               ### Name of parent variable into which this one is aggregated
  description = NA,          ### Description, as text; or NA
  comment = "retrieved from table III. Question-type based on explanation on page 591"               ### Comment, as text; or NA
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
