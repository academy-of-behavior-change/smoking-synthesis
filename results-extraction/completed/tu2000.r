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
res$bibTexKey <- "tu2000";

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
res$sample$description <- "Chinese american men >17"; #current or past smokers

### Description of geography of sample, in text
res$sample$geography <- "Seattle, washington, USA";

###Description of one or multiple unusual circumstances involving sample, 
###e.g. "patients" or "intervention", any major criterium that
###doesn't adhere to the idea of 'population as usual'. In text or ''.
res$sample$selectedSample <- c('');

### Sample size, as a number
res$sample$size <- 34;

### SUBSAMPLES - REMOVE THIS SECTION IF THERE ARE NO SUBSAMPLES

### Indicate which information you want to override. Specify the subsample
### you're providing new data for in the single quotes between the double
### brackets; make sure the spelling is exactly identical to the list above.
### Use NA to specify data that should not be overridden.

res$subsample[[length(res$subsample) + 1]] <- list( ### Create object for this subsample
  name = "",           ### E.g. "Single mothers", "West-Coast
  description = "",                                 ### participants", or "Caucasian teenagers"
  geography = NA,
  size = NA
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
###all results until next comment are comments by single participats, these are summarized later in tables 2 & 3
res$univariate[[length(res$univariate) + 1]] <- list(
  variable = "felt sick when on two packs a day",       ### Name of variable this result pertains to
  qualitative = "nothing reported",                 ### Description (qualitative research)
  comment = "retrieved from  page 3, 
  1. major recurring themes, 
  segment a, top paragraph"                      ### Comment or NA
);

res$univariate[[length(res$univariate) + 1]] <- list(
  variable = "breathing problems during exercise when smoking",       ### Name of variable this result pertains to
  qualitative = "nothing reported",                 ### Description (qualitative research)
  comment = "retrieved from  page 3, 
  1. major recurring themes, 
  segment a, top paragraph"                      ### Comment or NA
);

res$univariate[[length(res$univariate) + 1]] <- list(
  variable = "there are examples of smoking impacting and not-impacting health",       ### Name of variable this result pertains to
  qualitative = "nothing reported",                 ### Description (qualitative research)
  comment = "retrieved from  page 3, 
  1. major recurring themes, 
  segment a, bottom paragraph"                      ### Comment or NA
);


res$univariate[[length(res$univariate) + 1]] <- list(
  variable = "I will die anyway",       ### Name of variable this result pertains to
  qualitative = "nothing reported",                 ### Description (qualitative research)
  comment = "retrieved from  page 4, 
  1. major recurring themes, 
  segment a, top paragraph"                      ### Comment or NA
);


res$univariate[[length(res$univariate) + 1]] <- list(
  variable = "exercise can balance disadvantages of smoking",       ### Name of variable this result pertains to
  qualitative = "nothing reported",                 ### Description (qualitative research)
  comment = "retrieved from  page 4, 
  1. major recurring themes, 
  segment a, top paragraph"                      ### Comment or NA
);

res$univariate[[length(res$univariate) + 1]] <- list(
  variable = "smoking is like drinking, don't do it too much",       ### Name of variable this result pertains to
  qualitative = "nothing reported",                 ### Description (qualitative research)
  comment = "retrieved from  page 4, 
  1. major recurring themes, 
  segment a, third to last quote"                      ### Comment or NA
);


res$univariate[[length(res$univariate) + 1]] <- list(
  variable = "I haven't smoked long enough to damage my health",       ### Name of variable this result pertains to
  qualitative = "nothing reported",                 ### Description (qualitative research)
  comment = "retrieved from  page 4, 
  1. major recurring themes, 
  segment a, second to last quote"                      ### Comment or NA
);


res$univariate[[length(res$univariate) + 1]] <- list(
  variable = "cancer cells explode after quitting, therefore it is better to quit gradually",       ### Name of variable this result pertains to
  qualitative = "nothing reported",                 ### Description (qualitative research)
  comment = "retrieved from  page 4, 
  1. major recurring themes, 
  segment a, top paragraph"                      ### Comment or NA
);

res$univariate[[length(res$univariate) + 1]] <- list(
  variable = "smoking is part of social life in china",       ### Name of variable this result pertains to
  qualitative = "nothing reported",                 ### Description (qualitative research)
  comment = "retrieved from  page 4, 
  1. major recurring themes, 
  segment B, Reinforcing factors, top paragraph"                      ### Comment or NA
);

res$univariate[[length(res$univariate) + 1]] <- list(
  variable = "to not accept a cigarette in china is bad form",       ### Name of variable this result pertains to
  qualitative = "nothing reported",                 ### Description (qualitative research)
  comment = "retrieved from  page 4, 
  1. major recurring themes, 
  segment B, Reinforcing factors, top paragraph"                      ### Comment or NA
);

res$univariate[[length(res$univariate) + 1]] <- list(
  variable = "being able to affor smoking lifts social status",       ### Name of variable this result pertains to
  qualitative = "nothing reported",                 ### Description (qualitative research)
  comment = "retrieved from  page 4, 
  1. major recurring themes, 
  segment B, Reinforcing factors, middle paragraph"                      ### Comment or NA
);

res$univariate[[length(res$univariate) + 1]] <- list(
  variable = "smoking brings good luck in business, studies and mahjong",       ### Name of variable this result pertains to
  qualitative = "nothing reported",                 ### Description (qualitative research)
  comment = "retrieved from  page 4, 
  1. major recurring themes, 
  segment B, Reinforcing factors, bottom paragraph"                      ### Comment or NA
);

res$univariate[[length(res$univariate) + 1]] <- list(
  variable = "smoking is fun",       ### Name of variable this result pertains to
  qualitative = "nothing reported",                 ### Description (qualitative research)
  comment = "retrieved from  page 4, 
  1. major recurring themes, 
  segment B, Reinforcing factors, bottom paragraph"                      ### Comment or NA
);


res$univariate[[length(res$univariate) + 1]] <- list(
  variable = "smoking is relaxing",       ### Name of variable this result pertains to
  qualitative = "nothing reported",                 ### Description (qualitative research)
  comment = "retrieved from  page 4, 
  1. major recurring themes, 
  segment B, Reinforcing factors, bottom paragraph"                      ### Comment or NA
);


res$univariate[[length(res$univariate) + 1]] <- list(
  variable = "smoking is pleasurable",       ### Name of variable this result pertains to
  qualitative = "nothing reported",                 ### Description (qualitative research)
  comment = "retrieved from  page 4, 
  1. major recurring themes, 
  segment B, Reinforcing factors, bottom paragraph"                      ### Comment or NA
);

res$univariate[[length(res$univariate) + 1]] <- list(
  variable = "desire to be part of the group",       ### Name of variable this result pertains to
  qualitative = "nothing reported",                 ### Description (qualitative research)
  comment = "retrieved from page 5, 
  1. major recurring themes, 
  segment B, Reinforcing factors, second paragraph from top"                      ### Comment or NA
);

res$univariate[[length(res$univariate) + 1]] <- list(
  variable = "cigarettes are given as gifts",       ### Name of variable this result pertains to
  qualitative = "nothing reported",                 ### Description (qualitative research)
  comment = "retrieved from page 5, 
  1. major recurring themes, 
  segment B, Reinforcing factors, tird paragraph from top"                      ### Comment or NA
);


res$univariate[[length(res$univariate) + 1]] <- list(
  variable = "doctors and nurses also smoke",       ### Name of variable this result pertains to
  qualitative = "nothing reported",                 ### Description (qualitative research)
  comment = "retrieved from page 5, 
  1. major recurring themes, 
  segment B, Reinforcing factors, second to last paragraph"                      ### Comment or NA
);


res$univariate[[length(res$univariate) + 1]] <- list(
  variable = "doctors don't adequatly explain the risks of smoking",       ### Name of variable this result pertains to
  qualitative = "nothing reported",                 ### Description (qualitative research)
  comment = "retrieved from page 5, 
  1. major recurring themes, 
  segment B, Reinforcing factors, bottom paragraph"                      ### Comment or NA
);


res$univariate[[length(res$univariate) + 1]] <- list(
  variable = "not educated enough to absorb health information/lack language",       ### Name of variable this result pertains to
  qualitative = "nothing reported",                 ### Description (qualitative research)
  comment = "retrieved from page 6, 
  1. major recurring themes, 
  segment B, Reinforcing factors, top paragraph"                      ### Comment or NA
);

res$univariate[[length(res$univariate) + 1]] <- list(
  variable = "quitting makes you feel uneasy/lonely",       ### Name of variable this result pertains to
  qualitative = "nothing reported",                 ### Description (qualitative research)
  comment = "retrieved from page 6, 
  1. major recurring themes, 
  segment B, Reinforcing factors, middle paragraph"                      ### Comment or NA
);


res$univariate[[length(res$univariate) + 1]] <- list(
  variable = "smoke to relieve pressure",       ### Name of variable this result pertains to
  qualitative = "nothing reported",                 ### Description (qualitative research)
  comment = "retrieved from page 6, 
  1. major recurring themes, 
  segment c, enabling factors top paragraph"                      ### Comment or NA
);


res$univariate[[length(res$univariate) + 1]] <- list(
  variable = "smoke to relax from nervousness",       ### Name of variable this result pertains to
  qualitative = "nothing reported",                 ### Description (qualitative research)
  comment = "retrieved from page 6, 
  1. major recurring themes, 
  segment c, enabling factors top paragraph"                      ### Comment or NA
);


res$univariate[[length(res$univariate) + 1]] <- list(
  variable = "I smoke outside to prevent exposure to family",       ### Name of variable this result pertains to
  qualitative = "nothing reported",                 ### Description (qualitative research)
  comment = "retrieved from page 6, 
  1. major recurring themes, 
  segment c, enabling factors bottom paragraph"                      ### Comment or NA
);


res$univariate[[length(res$univariate) + 1]] <- list(
  variable = "I quit because I was determined",       ### Name of variable this result pertains to
  qualitative = "nothing reported",                 ### Description (qualitative research)
  comment = "retrieved from page 6, 
  1. major recurring themes, -smoking cessation-
  segment a, predisposing factors"                      ### Comment or NA
);


res$univariate[[length(res$univariate) + 1]] <- list(
  variable = "having health problems helps determination to quit",       ### Name of variable this result pertains to
  qualitative = "nothing reported",                 ### Description (qualitative research)
  comment = "retrieved from page 6/7, 
  1. major recurring themes, -smoking cessation-
  segment a, predisposing factors, bottom/top paragraph"                      ### Comment or NA
);

res$univariate[[length(res$univariate) + 1]] <- list(
  variable = "quitting improves health and looks",       ### Name of variable this result pertains to
  qualitative = "nothing reported",                 ### Description (qualitative research)
  comment = "retrieved from page 7, 
  1. major recurring themes, -smoking cessation-
  segment a, predisposing factors, bottom paragraph"                      ### Comment or NA
);

res$univariate[[length(res$univariate) + 1]] <- list(
  variable = "you don't smoke where it isn't allowed",       ### Name of variable this result pertains to
  qualitative = "nothing reported",                 ### Description (qualitative research)
  comment = "retrieved from page 7, 
  1. major recurring themes, -smoking cessation-
  segment b, reinforcing factors, top paragraph"                      ### Comment or NA
);


res$univariate[[length(res$univariate) + 1]] <- list(
  variable = "quitting in social group builds motivation to quit",       ### Name of variable this result pertains to
  qualitative = "nothing reported",                 ### Description (qualitative research)
  comment = "retrieved from page 7, 
  1. major recurring themes, -smoking cessation-
  segment b, reinforcing factors, third paragraph"                      ### Comment or NA
);


res$univariate[[length(res$univariate) + 1]] <- list(
  variable = "pressure from social group motivates quitting",       ### Name of variable this result pertains to
  qualitative = "nothing reported",                 ### Description (qualitative research)
  comment = "retrieved from page 7, 
  1. major recurring themes, -smoking cessation-
  segment b, reinforcing factors bottom paragraph"                      ### Comment or NA
);


res$univariate[[length(res$univariate) + 1]] <- list(
  variable = "cultural attitude against smoking motivates to quit",       ### Name of variable this result pertains to
  qualitative = "nothing reported",                 ### Description (qualitative research)
  comment = "retrieved from page 8, 
  1. major recurring themes, -smoking cessation-
  segment c, enabling factors, top paragraph"                      ### Comment or NA
);



res$univariate[[length(res$univariate) + 1]] <- list(
  variable = "avoidance of smokers aids quitting",       ### Name of variable this result pertains to
  qualitative = "nothing reported",                 ### Description (qualitative research)
  comment = "retrieved from page 8, 
  1. major recurring themes, -smoking cessation-
  segment c, enabling factors, second paragraph"                      ### Comment or NA
);


res$univariate[[length(res$univariate) + 1]] <- list(
  variable = "replacing cigarette with other, less harmful thing aids quitting",       ### Name of variable this result pertains to
  qualitative = "nothing reported",                 ### Description (qualitative research)
  comment = "retrieved from page 8, 
  1. major recurring themes, -smoking cessation-
  segment c, enabling factors, second paragraph"                      ### Comment or NA
);


res$univariate[[length(res$univariate) + 1]] <- list(
  variable = "distractions aid quitting",       ### Name of variable this result pertains to
  qualitative = "nothing reported",                 ### Description (qualitative research)
  comment = "retrieved from page 8, 
  1. major recurring themes, -smoking cessation-
  segment c, enabling factors, second paragraph"                      ### Comment or NA
);


res$univariate[[length(res$univariate) + 1]] <- list(
  variable = "advertising saying smoking is cool work against quitting motivation",       ### Name of variable this result pertains to
  qualitative = "nothing reported",                 ### Description (qualitative research)
  comment = "retrieved from page 8, 
  1. major recurring themes, -smoking cessation-
  segment c, enabling factors, second to last paragraph"                      ### Comment or NA
);


res$univariate[[length(res$univariate) + 1]] <- list(
  variable = "smoking is wasteful",       ### Name of variable this result pertains to
  qualitative = "nothing reported",                 ### Description (qualitative research)
  comment = "retrieved from page 8, 
  1. major recurring themes, -smoking cessation-
  segment c, enabling factors, last paragraph"                      ### Comment or NA
);


res$univariate[[length(res$univariate) + 1]] <- list(
  variable = "smoking is like burning money",       ### Name of variable this result pertains to
  qualitative = "nothing reported",                 ### Description (qualitative research)
  comment = "retrieved from page 8, 
  1. major recurring themes, -smoking cessation-
  segment c, enabling factors, last paragraph"                      ### Comment or NA
);







###All results below are extracted from table 1 and 2, page 13 & 14
res$univariate[[length(res$univariate) + 1]] <- list(
  variable = "dependence",       ### Name of variable this result pertains to
  percentage = .70, #n=24                  ### Percentage that endorsed 1, or NA
  qualitative = "nothing reported",                 ### Description (qualitative research)
  comment = "retrieved from table 2, page 13, predisposing factors"                      ### Comment or NA
);

res$univariate[[length(res$univariate) + 1]] <- list(
  variable = "physical",       ### Name of variable this result pertains to
  percentage = .38, #n=13                  ### Percentage that endorsed 1, or NA
  qualitative = "dependence",                 ### Description (qualitative research)
  comment = "retrieved from table 2, page 13, predisposing factors"                      ### Comment or NA
  );

res$univariate[[length(res$univariate) + 1]] <- list(
  variable = "psychological",       ### Name of variable this result pertains to
  percentage = .32,#n=32 ### Percentage that endorsed 1, or NA
  qualitative = "dependence",                 ### Description (qualitative research)
  comment = "retrieved from table 2, page 13, pedisposing factors"                      ### Comment or NA
);

res$univariate[[length(res$univariate) + 1]] <- list(
  variable = "inadequacy of knowledge alone",       ### Name of variable this result pertains to
  percentage = .68, ##n=68                  ### Percentage that endorsed 1, or NA
  qualitative = "nothing reported",                 ### Description (qualitative research)
  comment = "retrieved from table 2, page 13, pedisposing factors"                      ### Comment or NA
);


res$univariate[[length(res$univariate) + 1]] <- list(
  variable = "lack of symptoms/abnormal checkup",       ### Name of variable this result pertains to
  percentage = .59,#n=20                  ### Percentage that endorsed 1, or NA
  qualitative = "nothing reported",                 ### Description (qualitative research)
  comment = "retrieved from table 2, page 13, pedisposing factors"                      ### Comment or NA
);


res$univariate[[length(res$univariate) + 1]] <- list(
  variable = "etiquette",       ### Name of variable this result pertains to
  percentage = .29, #n=10                ### Percentage that endorsed 1, or NA
  qualitative = "social attitude/values",                 ### Description (qualitative research)
  comment = "retrieved from table 2, page 13, reinforcing factors"                      ### Comment or NA
);

res$univariate[[length(res$univariate) + 1]] <- list(
  variable = "social status",       ### Name of variable this result pertains to
  percentage = .32, #n=11                  ### Percentage that endorsed 1, or NA
  qualitative = "social attitude/values",                 ### Description (qualitative research)
  comment = "retrieved from table 2, page 13, reinforcing factors"                      ### Comment or NA
);

res$univariate[[length(res$univariate) + 1]] <- list(
  variable = "maturity/maleness",       ### Name of variable this result pertains to
  percentage = .32, #n=11                  ### Percentage that endorsed 1, or NA
  qualitative = "social attitude/values",                 ### Description (qualitative research)
  comment = "retrieved from table 2, page 13, reinforcing factors"                      ### Comment or NA
);


res$univariate[[length(res$univariate) + 1]] <- list(
  variable = "entree/business",       ### Name of variable this result pertains to
  percentage = .47, #n=16                  ### Percentage that endorsed 1, or NA
  qualitative = "social attitude/values",                 ### Description (qualitative research)
  comment = "retrieved from table 2, page 13, reinforcing factors"                      ### Comment or NA
);

res$univariate[[length(res$univariate) + 1]] <- list(
  variable = "stimulates thinking",       ### Name of variable this result pertains to
  percentage = .50, #n=17                  ### Percentage that endorsed 1, or NA
  qualitative = "perception",                 ### Description (qualitative research)
  comment = "retrieved from table 2, page 13, reinforcing factors"                      ### Comment or NA
);


res$univariate[[length(res$univariate) + 1]] <- list(
  variable = "balance/yin&yang",       ### Name of variable this result pertains to
  percentage = .35, #n=17                  ### Percentage that endorsed 1, or NA
  qualitative = "perception",                 ### Description (qualitative research)
  comment = "retrieved from table 2, page 13, reinforcing factors"                      ### Comment or NA
);

res$univariate[[length(res$univariate) + 1]] <- list(
  variable = "cues",       ### Name of variable this result pertains to
  percentage = .29, #n=20                  ### Percentage that endorsed 1, or NA
  qualitative = "nothing reported",                 ### Description (qualitative research)
  comment = "retrieved from table 2, page 13, reinforcing factors"                      ### Comment or NA
);


res$univariate[[length(res$univariate) + 1]] <- list(
  variable = "friends smoked",       ### Name of variable this result pertains to
  percentage = .68, #n=23                  ### Percentage that endorsed 1, or NA
  qualitative = "nothing reported",                 ### Description (qualitative research)
  comment = "retrieved from table 2, page 13, reinforcing factors"                      ### Comment or NA
);

res$univariate[[length(res$univariate) + 1]] <- list(
  variable = "rules about smoking at home",       ### Name of variable this result pertains to
  percentage = .44, #n=15                  ### Percentage that endorsed 1, or NA
  qualitative = "nothing reported",                 ### Description (qualitative research)
  comment = "retrieved from table 2, page 13, reinforcing factors"                      ### Comment or NA
);


res$univariate[[length(res$univariate) + 1]] <- list(
  variable = "lacked skill to deal with stress",       ### Name of variable this result pertains to
  percentage = .38, #n=13                  ### Percentage that endorsed 1, or NA
  qualitative = "nothing reported",                 ### Description (qualitative research)
  comment = "retrieved from table 2, page 13, enabling factors"                      ### Comment or NA
);


###Table 3

res$univariate[[length(res$univariate) + 1]] <- list(
  variable = "smoking sooths/relaxes",       ### Name of variable this result pertains to
  percentage = .32, #n=11                  ### Percentage that endorsed 1, or NA
  qualitative = "nothing reported",                 ### Description (qualitative research)
  comment = "retrieved from table 2, page 13, enabling factors"                      ### Comment or NA
);


res$univariate[[length(res$univariate) + 1]] <- list(
  variable = "personal willingness/determination",       ### Name of variable this result pertains to
  percentage = .68, #n=23                  ### Percentage that endorsed 1, or NA
  qualitative = "predisposing factors",                 ### Description (qualitative research)
  comment = "retrieved from table 3, page 14, themes of smoking cessation"                      ### Comment or NA
);

res$univariate[[length(res$univariate) + 1]] <- list(
  variable = "negative health effects of smoking",       ### Name of variable this result pertains to
  percentage = .56, #n=19                  ### Percentage that endorsed 1, or NA
  qualitative = "predisposing factors",                 ### Description (qualitative research)
  comment = "retrieved from table 3, page 14, themes of smoking cessation"                      ### Comment or NA
);


res$univariate[[length(res$univariate) + 1]] <- list(
  variable = "weight gain/better complexion after quitting",       ### Name of variable this result pertains to
  percentage = .26, #n=9                  ### Percentage that endorsed 1, or NA
  qualitative = "predisposing factors",                 ### Description (qualitative research)
  comment = "retrieved from table 3, page 14, themes of smoking cessation"                      ### Comment or NA
);


res$univariate[[length(res$univariate) + 1]] <- list(
  variable = "restrictions",       ### Name of variable this result pertains to
  percentage = .73, #n=25                  ### Percentage that endorsed 1, or NA
  qualitative = "reinforcing factors",                 ### Description (qualitative research)
  comment = "retrieved from table 3, page 14, themes of smoking cessation"                      ### Comment or NA
);


res$univariate[[length(res$univariate) + 1]] <- list(
  variable = "rules of family/friends",       ### Name of variable this result pertains to
  percentage = .68, #n=23                  ### Percentage that endorsed 1, or NA
  qualitative = "reinforcing factors",                 ### Description (qualitative research)
  comment = "retrieved from table 3, page 14, themes of smoking cessation"                      ### Comment or NA
);


res$univariate[[length(res$univariate) + 1]] <- list(
  variable = "cultural differences in US",       ### Name of variable this result pertains to
  percentage = .38, #n=13                  ### Percentage that endorsed 1, or NA
  qualitative = "enabling factors", ##to quit                ### Description (qualitative research)
  comment = "retrieved from table 3, page 14, themes of smoking cessation"                      ### Comment or NA
);


res$univariate[[length(res$univariate) + 1]] <- list(
  variable = "dislike smell of cigarettes",       ### Name of variable this result pertains to
  percentage = .35, #n=12                  ### Percentage that endorsed 1, or NA
  qualitative = "enabling factors",  ##to quit               ### Description (qualitative research)
  comment = "retrieved from table 3, page 14, themes of smoking cessation"                      ### Comment or NA
);


res$univariate[[length(res$univariate) + 1]] <- list(
  variable = "smoking not allowed in public places",       ### Name of variable this result pertains to
  percentage = .62, #n=21                  ### Percentage that endorsed 1, or NA
  qualitative = "enabling factors",  ##to quit               ### Description (qualitative research)
  comment = "retrieved from table 3, page 14, themes of smoking cessation"                      ### Comment or NA
);

res$univariate[[length(res$univariate) + 1]] <- list(
  variable = "reduced smoking cues in media",       ### Name of variable this result pertains to
  percentage = .15, #n=5                  ### Percentage that endorsed 1, or NA
  qualitative = "enabling factors", ##to quit                ### Description (qualitative research)
  comment = "retrieved from table 3, page 14, themes of smoking cessation"                      ### Comment or NA
);

##########################################################################
###
### GENERATE TEMPLATE OF VARIABLE MEASUREMENTS AND MANIPULATIONS  - FEEL LIKE BATMAN.
###
##########################################################################
# generateOperationalisationTemplates(object=res,
#                                     defaultOverrides =
#                                       list(moment = 1,
#                                            type = '"question"',
#                                            datatype = '"text"',
#                                            psytype = '"belief"',
#                                            dependent='"cessation"',
#                                            direction = '"consistent"',
#                                            comment = '"tallied results retrieved from page 13/14,/
#                                                          others from pages 3-8, see individual variables "'));
# 
##########################################################################
### MEASUREMENTS AND MANIPULATIONS: THE VARIABLES IN THE STUDY
##########################################################################

###########################################################################
### MEASUREMENTS AND MANIPULATIONS: THE VARIABLES IN THE STUDY
###########################################################################

res$variable[[length(res$variable) + 1]] <- list(
  variable = "felt sick when on two packs a day",
  moment = 1,                                                                                                                                                        ### moment this variable was measured/manipulated
  type = "question",                                                                                                                                                 ### "question", "aggregate", or "manipulation"
  datatype = "text",                                                                                                                                                 ### "numeric", "logical", "nominal", "ordinal", or "text"
  values = NA,                                                                                                                                                       ### Possible values; NA or a vector, e.g. c(1, 2, 3)
  labels = NA,                                                                                                                                                       ### Labels for the values; NA or e.g. c("no", "maybe", "sometimes")
  psytype = "belief",                                                                                                                                                ### "demographic", "belief", "determinant", "proxy", "behavior"
  dependent = "cessation",                                                                                                                                           ### "initiation", "cessation"
  direction = "consistent",                                                                                                                                          ### "consistent" (same direction as dependent), "inconsistent"
  parent = NA,                                                                                                                                                       ### Name of parent variable into which this one is aggregated
  description = NA,                                                                                                                                                  ### Description, as text; or NA
  comment = "tallied results retrieved from page 13/14/
  others from pages 3-8, see individual variables "  ### Comment, as text; or NA
);

res$variable[[length(res$variable) + 1]] <- list(
  variable = "breathing problems during exercise when smoking",
  moment = 1,                                                                                                                                                        ### moment this variable was measured/manipulated
  type = "question",                                                                                                                                                 ### "question", "aggregate", or "manipulation"
  datatype = "text",                                                                                                                                                 ### "numeric", "logical", "nominal", "ordinal", or "text"
  values = NA,                                                                                                                                                       ### Possible values; NA or a vector, e.g. c(1, 2, 3)
  labels = NA,                                                                                                                                                       ### Labels for the values; NA or e.g. c("no", "maybe", "sometimes")
  psytype = "belief",                                                                                                                                                ### "demographic", "belief", "determinant", "proxy", "behavior"
  dependent = "cessation",                                                                                                                                           ### "initiation", "cessation"
  direction = "consistent",                                                                                                                                          ### "consistent" (same direction as dependent), "inconsistent"
  parent = NA,                                                                                                                                                       ### Name of parent variable into which this one is aggregated
  description = NA,                                                                                                                                                  ### Description, as text; or NA
  comment = "tallied results retrieved from page 13/14/
  others from pages 3-8, see individual variables "  ### Comment, as text; or NA
);

res$variable[[length(res$variable) + 1]] <- list(
  variable = "there are examples of smoking impacting and not-impacting health",
  moment = 1,                                                                                                                                                        ### moment this variable was measured/manipulated
  type = "question",                                                                                                                                                 ### "question", "aggregate", or "manipulation"
  datatype = "text",                                                                                                                                                 ### "numeric", "logical", "nominal", "ordinal", or "text"
  values = NA,                                                                                                                                                       ### Possible values; NA or a vector, e.g. c(1, 2, 3)
  labels = NA,                                                                                                                                                       ### Labels for the values; NA or e.g. c("no", "maybe", "sometimes")
  psytype = "belief",                                                                                                                                                ### "demographic", "belief", "determinant", "proxy", "behavior"
  dependent = "cessation",                                                                                                                                           ### "initiation", "cessation"
  direction = "inconsistent",                                                                                                                                          ### "consistent" (same direction as dependent), "inconsistent"
  parent = NA,                                                                                                                                                       ### Name of parent variable into which this one is aggregated
  description = NA,                                                                                                                                                  ### Description, as text; or NA
  comment = "tallied results retrieved from page 13/14/
  others from pages 3-8, see individual variables "  ### Comment, as text; or NA
);

res$variable[[length(res$variable) + 1]] <- list(
  variable = "I will die anyway",
  moment = 1,                                                                                                                                                        ### moment this variable was measured/manipulated
  type = "question",                                                                                                                                                 ### "question", "aggregate", or "manipulation"
  datatype = "text",                                                                                                                                                 ### "numeric", "logical", "nominal", "ordinal", or "text"
  values = NA,                                                                                                                                                       ### Possible values; NA or a vector, e.g. c(1, 2, 3)
  labels = NA,                                                                                                                                                       ### Labels for the values; NA or e.g. c("no", "maybe", "sometimes")
  psytype = "belief",                                                                                                                                                ### "demographic", "belief", "determinant", "proxy", "behavior"
  dependent = "cessation",                                                                                                                                           ### "initiation", "cessation"
  direction = "inconsistent",                                                                                                                                          ### "consistent" (same direction as dependent), "inconsistent"
  parent = NA,                                                                                                                                                       ### Name of parent variable into which this one is aggregated
  description = NA,                                                                                                                                                  ### Description, as text; or NA
  comment = "tallied results retrieved from page 13/14/
  others from pages 3-8, see individual variables "  ### Comment, as text; or NA
);

res$variable[[length(res$variable) + 1]] <- list(
  variable = "exercise can balance disadvantages of smoking",
  moment = 1,                                                                                                                                                        ### moment this variable was measured/manipulated
  type = "question",                                                                                                                                                 ### "question", "aggregate", or "manipulation"
  datatype = "text",                                                                                                                                                 ### "numeric", "logical", "nominal", "ordinal", or "text"
  values = NA,                                                                                                                                                       ### Possible values; NA or a vector, e.g. c(1, 2, 3)
  labels = NA,                                                                                                                                                       ### Labels for the values; NA or e.g. c("no", "maybe", "sometimes")
  psytype = "belief",                                                                                                                                                ### "demographic", "belief", "determinant", "proxy", "behavior"
  dependent = "cessation",                                                                                                                                           ### "initiation", "cessation"
  direction = "inconsistent",                                                                                                                                          ### "consistent" (same direction as dependent), "inconsistent"
  parent = NA,                                                                                                                                                       ### Name of parent variable into which this one is aggregated
  description = NA,                                                                                                                                                  ### Description, as text; or NA
  comment = "tallied results retrieved from page 13/14/
  others from pages 3-8, see individual variables "  ### Comment, as text; or NA
);

res$variable[[length(res$variable) + 1]] <- list(
  variable = "smoking is like drinking, don't do it too much",
  moment = 1,                                                                                                                                                        ### moment this variable was measured/manipulated
  type = "question",                                                                                                                                                 ### "question", "aggregate", or "manipulation"
  datatype = "text",                                                                                                                                                 ### "numeric", "logical", "nominal", "ordinal", or "text"
  values = NA,                                                                                                                                                       ### Possible values; NA or a vector, e.g. c(1, 2, 3)
  labels = NA,                                                                                                                                                       ### Labels for the values; NA or e.g. c("no", "maybe", "sometimes")
  psytype = "belief",                                                                                                                                                ### "demographic", "belief", "determinant", "proxy", "behavior"
  dependent = "cessation",                                                                                                                                           ### "initiation", "cessation"
  direction = "inconsistent",                                                                                                                                          ### "consistent" (same direction as dependent), "inconsistent"
  parent = NA,                                                                                                                                                       ### Name of parent variable into which this one is aggregated
  description = NA,                                                                                                                                                  ### Description, as text; or NA
  comment = "tallied results retrieved from page 13/14/
  others from pages 3-8, see individual variables "  ### Comment, as text; or NA
);

res$variable[[length(res$variable) + 1]] <- list(
  variable = "I haven't smoked long enough to damage my health",
  moment = 1,                                                                                                                                                        ### moment this variable was measured/manipulated
  type = "question",                                                                                                                                                 ### "question", "aggregate", or "manipulation"
  datatype = "text",                                                                                                                                                 ### "numeric", "logical", "nominal", "ordinal", or "text"
  values = NA,                                                                                                                                                       ### Possible values; NA or a vector, e.g. c(1, 2, 3)
  labels = NA,                                                                                                                                                       ### Labels for the values; NA or e.g. c("no", "maybe", "sometimes")
  psytype = "belief",                                                                                                                                                ### "demographic", "belief", "determinant", "proxy", "behavior"
  dependent = "cessation",                                                                                                                                           ### "initiation", "cessation"
  direction = "inconsistent",                                                                                                                                          ### "consistent" (same direction as dependent), "inconsistent"
  parent = NA,                                                                                                                                                       ### Name of parent variable into which this one is aggregated
  description = NA,                                                                                                                                                  ### Description, as text; or NA
  comment = "tallied results retrieved from page 13/14/
  others from pages 3-8, see individual variables "  ### Comment, as text; or NA
);

res$variable[[length(res$variable) + 1]] <- list(
  variable = "cancer cells explode after quitting, therefore it is better to quit gradually",
  moment = 1,                                                                                                                                                        ### moment this variable was measured/manipulated
  type = "question",                                                                                                                                                 ### "question", "aggregate", or "manipulation"
  datatype = "text",                                                                                                                                                 ### "numeric", "logical", "nominal", "ordinal", or "text"
  values = NA,                                                                                                                                                       ### Possible values; NA or a vector, e.g. c(1, 2, 3)
  labels = NA,                                                                                                                                                       ### Labels for the values; NA or e.g. c("no", "maybe", "sometimes")
  psytype = "belief",                                                                                                                                                ### "demographic", "belief", "determinant", "proxy", "behavior"
  dependent = "cessation",                                                                                                                                           ### "initiation", "cessation"
  direction = "consistent",                                                                                                                                          ### "consistent" (same direction as dependent), "inconsistent"
  parent = NA,                                                                                                                                                       ### Name of parent variable into which this one is aggregated
  description = NA,                                                                                                                                                  ### Description, as text; or NA
  comment = "tallied results retrieved from page 13/14/
  others from pages 3-8, see individual variables "  ### Comment, as text; or NA
);

res$variable[[length(res$variable) + 1]] <- list(
  variable = "smoking is part of social life in china",
  moment = 1,                                                                                                                                                        ### moment this variable was measured/manipulated
  type = "question",                                                                                                                                                 ### "question", "aggregate", or "manipulation"
  datatype = "text",                                                                                                                                                 ### "numeric", "logical", "nominal", "ordinal", or "text"
  values = NA,                                                                                                                                                       ### Possible values; NA or a vector, e.g. c(1, 2, 3)
  labels = NA,                                                                                                                                                       ### Labels for the values; NA or e.g. c("no", "maybe", "sometimes")
  psytype = "belief",                                                                                                                                                ### "demographic", "belief", "determinant", "proxy", "behavior"
  dependent = "cessation",                                                                                                                                           ### "initiation", "cessation"
  direction = "inconsistent",                                                                                                                                          ### "consistent" (same direction as dependent), "inconsistent"
  parent = NA,                                                                                                                                                       ### Name of parent variable into which this one is aggregated
  description = NA,                                                                                                                                                  ### Description, as text; or NA
  comment = "tallied results retrieved from page 13/14/
  others from pages 3-8, see individual variables "  ### Comment, as text; or NA
);

res$variable[[length(res$variable) + 1]] <- list(
  variable = "to not accept a cigarette in china is bad form",
  moment = 1,                                                                                                                                                        ### moment this variable was measured/manipulated
  type = "question",                                                                                                                                                 ### "question", "aggregate", or "manipulation"
  datatype = "text",                                                                                                                                                 ### "numeric", "logical", "nominal", "ordinal", or "text"
  values = NA,                                                                                                                                                       ### Possible values; NA or a vector, e.g. c(1, 2, 3)
  labels = NA,                                                                                                                                                       ### Labels for the values; NA or e.g. c("no", "maybe", "sometimes")
  psytype = "belief",                                                                                                                                                ### "demographic", "belief", "determinant", "proxy", "behavior"
  dependent = "cessation",                                                                                                                                           ### "initiation", "cessation"
  direction = "inconsistent",                                                                                                                                          ### "consistent" (same direction as dependent), "inconsistent"
  parent = NA,                                                                                                                                                       ### Name of parent variable into which this one is aggregated
  description = NA,                                                                                                                                                  ### Description, as text; or NA
  comment = "tallied results retrieved from page 13/14/
  others from pages 3-8, see individual variables "  ### Comment, as text; or NA
);

res$variable[[length(res$variable) + 1]] <- list(
  variable = "being able to affor smoking lifts social status",
  moment = 1,                                                                                                                                                        ### moment this variable was measured/manipulated
  type = "question",                                                                                                                                                 ### "question", "aggregate", or "manipulation"
  datatype = "text",                                                                                                                                                 ### "numeric", "logical", "nominal", "ordinal", or "text"
  values = NA,                                                                                                                                                       ### Possible values; NA or a vector, e.g. c(1, 2, 3)
  labels = NA,                                                                                                                                                       ### Labels for the values; NA or e.g. c("no", "maybe", "sometimes")
  psytype = "belief",                                                                                                                                                ### "demographic", "belief", "determinant", "proxy", "behavior"
  dependent = "cessation",                                                                                                                                           ### "initiation", "cessation"
  direction = "inconsistent",                                                                                                                                          ### "consistent" (same direction as dependent), "inconsistent"
  parent = NA,                                                                                                                                                       ### Name of parent variable into which this one is aggregated
  description = NA,                                                                                                                                                  ### Description, as text; or NA
  comment = "tallied results retrieved from page 13/14/
  others from pages 3-8, see individual variables "  ### Comment, as text; or NA
);

res$variable[[length(res$variable) + 1]] <- list(
  variable = "smoking brings good luck in business, studies and mahjong",
  moment = 1,                                                                                                                                                        ### moment this variable was measured/manipulated
  type = "question",                                                                                                                                                 ### "question", "aggregate", or "manipulation"
  datatype = "text",                                                                                                                                                 ### "numeric", "logical", "nominal", "ordinal", or "text"
  values = NA,                                                                                                                                                       ### Possible values; NA or a vector, e.g. c(1, 2, 3)
  labels = NA,                                                                                                                                                       ### Labels for the values; NA or e.g. c("no", "maybe", "sometimes")
  psytype = "belief",                                                                                                                                                ### "demographic", "belief", "determinant", "proxy", "behavior"
  dependent = "cessation",                                                                                                                                           ### "initiation", "cessation"
  direction = "inconsistent",                                                                                                                                          ### "consistent" (same direction as dependent), "inconsistent"
  parent = NA,                                                                                                                                                       ### Name of parent variable into which this one is aggregated
  description = NA,                                                                                                                                                  ### Description, as text; or NA
  comment = "tallied results retrieved from page 13/14/
  others from pages 3-8, see individual variables "  ### Comment, as text; or NA
);

res$variable[[length(res$variable) + 1]] <- list(
  variable = "smoking is fun",
  moment = 1,                                                                                                                                                        ### moment this variable was measured/manipulated
  type = "question",                                                                                                                                                 ### "question", "aggregate", or "manipulation"
  datatype = "text",                                                                                                                                                 ### "numeric", "logical", "nominal", "ordinal", or "text"
  values = NA,                                                                                                                                                       ### Possible values; NA or a vector, e.g. c(1, 2, 3)
  labels = NA,                                                                                                                                                       ### Labels for the values; NA or e.g. c("no", "maybe", "sometimes")
  psytype = "belief",                                                                                                                                                ### "demographic", "belief", "determinant", "proxy", "behavior"
  dependent = "cessation",                                                                                                                                           ### "initiation", "cessation"
  direction = "inconsistent",                                                                                                                                          ### "consistent" (same direction as dependent), "inconsistent"
  parent = NA,                                                                                                                                                       ### Name of parent variable into which this one is aggregated
  description = NA,                                                                                                                                                  ### Description, as text; or NA
  comment = "tallied results retrieved from page 13/14/
  others from pages 3-8, see individual variables "  ### Comment, as text; or NA
);

res$variable[[length(res$variable) + 1]] <- list(
  variable = "smoking is relaxing",
  moment = 1,                                                                                                                                                        ### moment this variable was measured/manipulated
  type = "question",                                                                                                                                                 ### "question", "aggregate", or "manipulation"
  datatype = "text",                                                                                                                                                 ### "numeric", "logical", "nominal", "ordinal", or "text"
  values = NA,                                                                                                                                                       ### Possible values; NA or a vector, e.g. c(1, 2, 3)
  labels = NA,                                                                                                                                                       ### Labels for the values; NA or e.g. c("no", "maybe", "sometimes")
  psytype = "belief",                                                                                                                                                ### "demographic", "belief", "determinant", "proxy", "behavior"
  dependent = "cessation",                                                                                                                                           ### "initiation", "cessation"
  direction = "inconsistent",                                                                                                                                          ### "consistent" (same direction as dependent), "inconsistent"
  parent = NA,                                                                                                                                                       ### Name of parent variable into which this one is aggregated
  description = NA,                                                                                                                                                  ### Description, as text; or NA
  comment = "tallied results retrieved from page 13/14/
  others from pages 3-8, see individual variables "  ### Comment, as text; or NA
);

res$variable[[length(res$variable) + 1]] <- list(
  variable = "smoking is pleasurable",
  moment = 1,                                                                                                                                                        ### moment this variable was measured/manipulated
  type = "question",                                                                                                                                                 ### "question", "aggregate", or "manipulation"
  datatype = "text",                                                                                                                                                 ### "numeric", "logical", "nominal", "ordinal", or "text"
  values = NA,                                                                                                                                                       ### Possible values; NA or a vector, e.g. c(1, 2, 3)
  labels = NA,                                                                                                                                                       ### Labels for the values; NA or e.g. c("no", "maybe", "sometimes")
  psytype = "belief",                                                                                                                                                ### "demographic", "belief", "determinant", "proxy", "behavior"
  dependent = "cessation",                                                                                                                                           ### "initiation", "cessation"
  direction = "inconsistent",                                                                                                                                          ### "consistent" (same direction as dependent), "inconsistent"
  parent = NA,                                                                                                                                                       ### Name of parent variable into which this one is aggregated
  description = NA,                                                                                                                                                  ### Description, as text; or NA
  comment = "tallied results retrieved from page 13/14/
  others from pages 3-8, see individual variables "  ### Comment, as text; or NA
);

res$variable[[length(res$variable) + 1]] <- list(
  variable = "desire to be part of the group",
  moment = 1,                                                                                                                                                        ### moment this variable was measured/manipulated
  type = "question",                                                                                                                                                 ### "question", "aggregate", or "manipulation"
  datatype = "text",                                                                                                                                                 ### "numeric", "logical", "nominal", "ordinal", or "text"
  values = NA,                                                                                                                                                       ### Possible values; NA or a vector, e.g. c(1, 2, 3)
  labels = NA,                                                                                                                                                       ### Labels for the values; NA or e.g. c("no", "maybe", "sometimes")
  psytype = "belief",                                                                                                                                                ### "demographic", "belief", "determinant", "proxy", "behavior"
  dependent = "cessation",                                                                                                                                           ### "initiation", "cessation"
  direction = "inconsistent",                                                                                                                                          ### "consistent" (same direction as dependent), "inconsistent"
  parent = NA,                                                                                                                                                       ### Name of parent variable into which this one is aggregated
  description = NA,                                                                                                                                                  ### Description, as text; or NA
  comment = "tallied results retrieved from page 13/14/
  others from pages 3-8, see individual variables "  ### Comment, as text; or NA
);

res$variable[[length(res$variable) + 1]] <- list(
  variable = "cigarettes are given as gifts",
  moment = 1,                                                                                                                                                        ### moment this variable was measured/manipulated
  type = "question",                                                                                                                                                 ### "question", "aggregate", or "manipulation"
  datatype = "text",                                                                                                                                                 ### "numeric", "logical", "nominal", "ordinal", or "text"
  values = NA,                                                                                                                                                       ### Possible values; NA or a vector, e.g. c(1, 2, 3)
  labels = NA,                                                                                                                                                       ### Labels for the values; NA or e.g. c("no", "maybe", "sometimes")
  psytype = "belief",                                                                                                                                                ### "demographic", "belief", "determinant", "proxy", "behavior"
  dependent = "cessation",                                                                                                                                           ### "initiation", "cessation"
  direction = "inconsistent",                                                                                                                                          ### "consistent" (same direction as dependent), "inconsistent"
  parent = NA,                                                                                                                                                       ### Name of parent variable into which this one is aggregated
  description = NA,                                                                                                                                                  ### Description, as text; or NA
  comment = "tallied results retrieved from page 13/14/
  others from pages 3-8, see individual variables "  ### Comment, as text; or NA
);

res$variable[[length(res$variable) + 1]] <- list(
  variable = "doctors and nurses also smoke",
  moment = 1,                                                                                                                                                        ### moment this variable was measured/manipulated
  type = "question",                                                                                                                                                 ### "question", "aggregate", or "manipulation"
  datatype = "text",                                                                                                                                                 ### "numeric", "logical", "nominal", "ordinal", or "text"
  values = NA,                                                                                                                                                       ### Possible values; NA or a vector, e.g. c(1, 2, 3)
  labels = NA,                                                                                                                                                       ### Labels for the values; NA or e.g. c("no", "maybe", "sometimes")
  psytype = "belief",                                                                                                                                                ### "demographic", "belief", "determinant", "proxy", "behavior"
  dependent = "cessation",                                                                                                                                           ### "initiation", "cessation"
  direction = "inconsistent",                                                                                                                                          ### "consistent" (same direction as dependent), "inconsistent"
  parent = NA,                                                                                                                                                       ### Name of parent variable into which this one is aggregated
  description = NA,                                                                                                                                                  ### Description, as text; or NA
  comment = "tallied results retrieved from page 13/14/
  others from pages 3-8, see individual variables "  ### Comment, as text; or NA
);

res$variable[[length(res$variable) + 1]] <- list(
  variable = "doctors don't adequatly explain the risks of smoking",
  moment = 1,                                                                                                                                                        ### moment this variable was measured/manipulated
  type = "question",                                                                                                                                                 ### "question", "aggregate", or "manipulation"
  datatype = "text",                                                                                                                                                 ### "numeric", "logical", "nominal", "ordinal", or "text"
  values = NA,                                                                                                                                                       ### Possible values; NA or a vector, e.g. c(1, 2, 3)
  labels = NA,                                                                                                                                                       ### Labels for the values; NA or e.g. c("no", "maybe", "sometimes")
  psytype = "belief",                                                                                                                                                ### "demographic", "belief", "determinant", "proxy", "behavior"
  dependent = "cessation",                                                                                                                                           ### "initiation", "cessation"
  direction = "inconsistent",                                                                                                                                          ### "consistent" (same direction as dependent), "inconsistent"
  parent = NA,                                                                                                                                                       ### Name of parent variable into which this one is aggregated
  description = NA,                                                                                                                                                  ### Description, as text; or NA
  comment = "tallied results retrieved from page 13/14/
  others from pages 3-8, see individual variables "  ### Comment, as text; or NA
);

res$variable[[length(res$variable) + 1]] <- list(
  variable = "not educated enough to absorb health information/lack language",
  moment = 1,                                                                                                                                                        ### moment this variable was measured/manipulated
  type = "question",                                                                                                                                                 ### "question", "aggregate", or "manipulation"
  datatype = "text",                                                                                                                                                 ### "numeric", "logical", "nominal", "ordinal", or "text"
  values = NA,                                                                                                                                                       ### Possible values; NA or a vector, e.g. c(1, 2, 3)
  labels = NA,                                                                                                                                                       ### Labels for the values; NA or e.g. c("no", "maybe", "sometimes")
  psytype = "belief",                                                                                                                                                ### "demographic", "belief", "determinant", "proxy", "behavior"
  dependent = "cessation",                                                                                                                                           ### "initiation", "cessation"
  direction = "inconsistent",                                                                                                                                          ### "consistent" (same direction as dependent), "inconsistent"
  parent = NA,                                                                                                                                                       ### Name of parent variable into which this one is aggregated
  description = NA,                                                                                                                                                  ### Description, as text; or NA
  comment = "tallied results retrieved from page 13/14/
  others from pages 3-8, see individual variables "  ### Comment, as text; or NA
);

res$variable[[length(res$variable) + 1]] <- list(
  variable = "quitting makes you feel uneasy/lonely",
  moment = 1,                                                                                                                                                        ### moment this variable was measured/manipulated
  type = "question",                                                                                                                                                 ### "question", "aggregate", or "manipulation"
  datatype = "text",                                                                                                                                                 ### "numeric", "logical", "nominal", "ordinal", or "text"
  values = NA,                                                                                                                                                       ### Possible values; NA or a vector, e.g. c(1, 2, 3)
  labels = NA,                                                                                                                                                       ### Labels for the values; NA or e.g. c("no", "maybe", "sometimes")
  psytype = "belief",                                                                                                                                                ### "demographic", "belief", "determinant", "proxy", "behavior"
  dependent = "cessation",                                                                                                                                           ### "initiation", "cessation"
  direction = "inconsistent",                                                                                                                                          ### "consistent" (same direction as dependent), "inconsistent"
  parent = NA,                                                                                                                                                       ### Name of parent variable into which this one is aggregated
  description = NA,                                                                                                                                                  ### Description, as text; or NA
  comment = "tallied results retrieved from page 13/14/
  others from pages 3-8, see individual variables "  ### Comment, as text; or NA
);

res$variable[[length(res$variable) + 1]] <- list(
  variable = "smoke to relieve pressure",
  moment = 1,                                                                                                                                                        ### moment this variable was measured/manipulated
  type = "question",                                                                                                                                                 ### "question", "aggregate", or "manipulation"
  datatype = "text",                                                                                                                                                 ### "numeric", "logical", "nominal", "ordinal", or "text"
  values = NA,                                                                                                                                                       ### Possible values; NA or a vector, e.g. c(1, 2, 3)
  labels = NA,                                                                                                                                                       ### Labels for the values; NA or e.g. c("no", "maybe", "sometimes")
  psytype = "belief",                                                                                                                                                ### "demographic", "belief", "determinant", "proxy", "behavior"
  dependent = "cessation",                                                                                                                                           ### "initiation", "cessation"
  direction = "inconsistent",                                                                                                                                          ### "consistent" (same direction as dependent), "inconsistent"
  parent = NA,                                                                                                                                                       ### Name of parent variable into which this one is aggregated
  description = NA,                                                                                                                                                  ### Description, as text; or NA
  comment = "tallied results retrieved from page 13/14/
  others from pages 3-8, see individual variables "  ### Comment, as text; or NA
);

res$variable[[length(res$variable) + 1]] <- list(
  variable = "smoke to relax from nervousness",
  moment = 1,                                                                                                                                                        ### moment this variable was measured/manipulated
  type = "question",                                                                                                                                                 ### "question", "aggregate", or "manipulation"
  datatype = "text",                                                                                                                                                 ### "numeric", "logical", "nominal", "ordinal", or "text"
  values = NA,                                                                                                                                                       ### Possible values; NA or a vector, e.g. c(1, 2, 3)
  labels = NA,                                                                                                                                                       ### Labels for the values; NA or e.g. c("no", "maybe", "sometimes")
  psytype = "belief",                                                                                                                                                ### "demographic", "belief", "determinant", "proxy", "behavior"
  dependent = "cessation",                                                                                                                                           ### "initiation", "cessation"
  direction = "inconsistent",                                                                                                                                          ### "consistent" (same direction as dependent), "inconsistent"
  parent = NA,                                                                                                                                                       ### Name of parent variable into which this one is aggregated
  description = NA,                                                                                                                                                  ### Description, as text; or NA
  comment = "tallied results retrieved from page 13/14/
  others from pages 3-8, see individual variables "  ### Comment, as text; or NA
);

res$variable[[length(res$variable) + 1]] <- list(
  variable = "I smoke outside to prevent exposure to family",
  moment = 1,                                                                                                                                                        ### moment this variable was measured/manipulated
  type = "question",                                                                                                                                                 ### "question", "aggregate", or "manipulation"
  datatype = "text",                                                                                                                                                 ### "numeric", "logical", "nominal", "ordinal", or "text"
  values = NA,                                                                                                                                                       ### Possible values; NA or a vector, e.g. c(1, 2, 3)
  labels = NA,                                                                                                                                                       ### Labels for the values; NA or e.g. c("no", "maybe", "sometimes")
  psytype = "belief",                                                                                                                                                ### "demographic", "belief", "determinant", "proxy", "behavior"
  dependent = "cessation",                                                                                                                                           ### "initiation", "cessation"
  direction = "inconsistent",                                                                                                                                          ### "consistent" (same direction as dependent), "inconsistent"
  parent = NA,                                                                                                                                                       ### Name of parent variable into which this one is aggregated
  description = NA,                                                                                                                                                  ### Description, as text; or NA
  comment = "tallied results retrieved from page 13/14/
  others from pages 3-8, see individual variables "  ### Comment, as text; or NA
);

res$variable[[length(res$variable) + 1]] <- list(
  variable = "I quit because I was determined",
  moment = 1,                                                                                                                                                        ### moment this variable was measured/manipulated
  type = "question",                                                                                                                                                 ### "question", "aggregate", or "manipulation"
  datatype = "text",                                                                                                                                                 ### "numeric", "logical", "nominal", "ordinal", or "text"
  values = NA,                                                                                                                                                       ### Possible values; NA or a vector, e.g. c(1, 2, 3)
  labels = NA,                                                                                                                                                       ### Labels for the values; NA or e.g. c("no", "maybe", "sometimes")
  psytype = "belief",                                                                                                                                                ### "demographic", "belief", "determinant", "proxy", "behavior"
  dependent = "cessation",                                                                                                                                           ### "initiation", "cessation"
  direction = "consistent",                                                                                                                                          ### "consistent" (same direction as dependent), "inconsistent"
  parent = NA,                                                                                                                                                       ### Name of parent variable into which this one is aggregated
  description = NA,                                                                                                                                                  ### Description, as text; or NA
  comment = "tallied results retrieved from page 13/14/
  others from pages 3-8, see individual variables "  ### Comment, as text; or NA
);

res$variable[[length(res$variable) + 1]] <- list(
  variable = "having health problems helps determination to quit",
  moment = 1,                                                                                                                                                        ### moment this variable was measured/manipulated
  type = "question",                                                                                                                                                 ### "question", "aggregate", or "manipulation"
  datatype = "text",                                                                                                                                                 ### "numeric", "logical", "nominal", "ordinal", or "text"
  values = NA,                                                                                                                                                       ### Possible values; NA or a vector, e.g. c(1, 2, 3)
  labels = NA,                                                                                                                                                       ### Labels for the values; NA or e.g. c("no", "maybe", "sometimes")
  psytype = "belief",                                                                                                                                                ### "demographic", "belief", "determinant", "proxy", "behavior"
  dependent = "cessation",                                                                                                                                           ### "initiation", "cessation"
  direction = "consistent",                                                                                                                                          ### "consistent" (same direction as dependent), "inconsistent"
  parent = NA,                                                                                                                                                       ### Name of parent variable into which this one is aggregated
  description = NA,                                                                                                                                                  ### Description, as text; or NA
  comment = "tallied results retrieved from page 13/14/
  others from pages 3-8, see individual variables "  ### Comment, as text; or NA
);

res$variable[[length(res$variable) + 1]] <- list(
  variable = "quitting improves health and looks",
  moment = 1,                                                                                                                                                        ### moment this variable was measured/manipulated
  type = "question",                                                                                                                                                 ### "question", "aggregate", or "manipulation"
  datatype = "text",                                                                                                                                                 ### "numeric", "logical", "nominal", "ordinal", or "text"
  values = NA,                                                                                                                                                       ### Possible values; NA or a vector, e.g. c(1, 2, 3)
  labels = NA,                                                                                                                                                       ### Labels for the values; NA or e.g. c("no", "maybe", "sometimes")
  psytype = "belief",                                                                                                                                                ### "demographic", "belief", "determinant", "proxy", "behavior"
  dependent = "cessation",                                                                                                                                           ### "initiation", "cessation"
  direction = "consistent",                                                                                                                                          ### "consistent" (same direction as dependent), "inconsistent"
  parent = NA,                                                                                                                                                       ### Name of parent variable into which this one is aggregated
  description = NA,                                                                                                                                                  ### Description, as text; or NA
  comment = "tallied results retrieved from page 13/14/
  others from pages 3-8, see individual variables "  ### Comment, as text; or NA
);

res$variable[[length(res$variable) + 1]] <- list(
  variable = "you don't smoke where it isn't allowed",
  moment = 1,                                                                                                                                                        ### moment this variable was measured/manipulated
  type = "question",                                                                                                                                                 ### "question", "aggregate", or "manipulation"
  datatype = "text",                                                                                                                                                 ### "numeric", "logical", "nominal", "ordinal", or "text"
  values = NA,                                                                                                                                                       ### Possible values; NA or a vector, e.g. c(1, 2, 3)
  labels = NA,                                                                                                                                                       ### Labels for the values; NA or e.g. c("no", "maybe", "sometimes")
  psytype = "belief",                                                                                                                                                ### "demographic", "belief", "determinant", "proxy", "behavior"
  dependent = "cessation",                                                                                                                                           ### "initiation", "cessation"
  direction = "consistent",                                                                                                                                          ### "consistent" (same direction as dependent), "inconsistent"
  parent = NA,                                                                                                                                                       ### Name of parent variable into which this one is aggregated
  description = NA,                                                                                                                                                  ### Description, as text; or NA
  comment = "tallied results retrieved from page 13/14/
  others from pages 3-8, see individual variables "  ### Comment, as text; or NA
);

res$variable[[length(res$variable) + 1]] <- list(
  variable = "quitting in social group builds motivation to quit",
  moment = 1,                                                                                                                                                        ### moment this variable was measured/manipulated
  type = "question",                                                                                                                                                 ### "question", "aggregate", or "manipulation"
  datatype = "text",                                                                                                                                                 ### "numeric", "logical", "nominal", "ordinal", or "text"
  values = NA,                                                                                                                                                       ### Possible values; NA or a vector, e.g. c(1, 2, 3)
  labels = NA,                                                                                                                                                       ### Labels for the values; NA or e.g. c("no", "maybe", "sometimes")
  psytype = "belief",                                                                                                                                                ### "demographic", "belief", "determinant", "proxy", "behavior"
  dependent = "cessation",                                                                                                                                           ### "initiation", "cessation"
  direction = "consistent",                                                                                                                                          ### "consistent" (same direction as dependent), "inconsistent"
  parent = NA,                                                                                                                                                       ### Name of parent variable into which this one is aggregated
  description = NA,                                                                                                                                                  ### Description, as text; or NA
  comment = "tallied results retrieved from page 13/14/
  others from pages 3-8, see individual variables "  ### Comment, as text; or NA
);

res$variable[[length(res$variable) + 1]] <- list(
  variable = "pressure from social group motivates quitting",
  moment = 1,                                                                                                                                                        ### moment this variable was measured/manipulated
  type = "question",                                                                                                                                                 ### "question", "aggregate", or "manipulation"
  datatype = "text",                                                                                                                                                 ### "numeric", "logical", "nominal", "ordinal", or "text"
  values = NA,                                                                                                                                                       ### Possible values; NA or a vector, e.g. c(1, 2, 3)
  labels = NA,                                                                                                                                                       ### Labels for the values; NA or e.g. c("no", "maybe", "sometimes")
  psytype = "belief",                                                                                                                                                ### "demographic", "belief", "determinant", "proxy", "behavior"
  dependent = "cessation",                                                                                                                                           ### "initiation", "cessation"
  direction = "consistent",                                                                                                                                          ### "consistent" (same direction as dependent), "inconsistent"
  parent = NA,                                                                                                                                                       ### Name of parent variable into which this one is aggregated
  description = NA,                                                                                                                                                  ### Description, as text; or NA
  comment = "tallied results retrieved from page 13/14/
  others from pages 3-8, see individual variables "  ### Comment, as text; or NA
);

res$variable[[length(res$variable) + 1]] <- list(
  variable = "cultural attitude against smoking motivates to quit",
  moment = 1,                                                                                                                                                        ### moment this variable was measured/manipulated
  type = "question",                                                                                                                                                 ### "question", "aggregate", or "manipulation"
  datatype = "text",                                                                                                                                                 ### "numeric", "logical", "nominal", "ordinal", or "text"
  values = NA,                                                                                                                                                       ### Possible values; NA or a vector, e.g. c(1, 2, 3)
  labels = NA,                                                                                                                                                       ### Labels for the values; NA or e.g. c("no", "maybe", "sometimes")
  psytype = "belief",                                                                                                                                                ### "demographic", "belief", "determinant", "proxy", "behavior"
  dependent = "cessation",                                                                                                                                           ### "initiation", "cessation"
  direction = "consistent",                                                                                                                                          ### "consistent" (same direction as dependent), "inconsistent"
  parent = NA,                                                                                                                                                       ### Name of parent variable into which this one is aggregated
  description = NA,                                                                                                                                                  ### Description, as text; or NA
  comment = "tallied results retrieved from page 13/14/
  others from pages 3-8, see individual variables "  ### Comment, as text; or NA
);

res$variable[[length(res$variable) + 1]] <- list(
  variable = "avoidance of smokers aids quitting",
  moment = 1,                                                                                                                                                        ### moment this variable was measured/manipulated
  type = "question",                                                                                                                                                 ### "question", "aggregate", or "manipulation"
  datatype = "text",                                                                                                                                                 ### "numeric", "logical", "nominal", "ordinal", or "text"
  values = NA,                                                                                                                                                       ### Possible values; NA or a vector, e.g. c(1, 2, 3)
  labels = NA,                                                                                                                                                       ### Labels for the values; NA or e.g. c("no", "maybe", "sometimes")
  psytype = "belief",                                                                                                                                                ### "demographic", "belief", "determinant", "proxy", "behavior"
  dependent = "cessation",                                                                                                                                           ### "initiation", "cessation"
  direction = "consistent",                                                                                                                                          ### "consistent" (same direction as dependent), "inconsistent"
  parent = NA,                                                                                                                                                       ### Name of parent variable into which this one is aggregated
  description = NA,                                                                                                                                                  ### Description, as text; or NA
  comment = "tallied results retrieved from page 13/14/
  others from pages 3-8, see individual variables "  ### Comment, as text; or NA
);

res$variable[[length(res$variable) + 1]] <- list(
  variable = "replacing cigarette with other, less harmful thing aids quitting",
  moment = 1,                                                                                                                                                        ### moment this variable was measured/manipulated
  type = "question",                                                                                                                                                 ### "question", "aggregate", or "manipulation"
  datatype = "text",                                                                                                                                                 ### "numeric", "logical", "nominal", "ordinal", or "text"
  values = NA,                                                                                                                                                       ### Possible values; NA or a vector, e.g. c(1, 2, 3)
  labels = NA,                                                                                                                                                       ### Labels for the values; NA or e.g. c("no", "maybe", "sometimes")
  psytype = "belief",                                                                                                                                                ### "demographic", "belief", "determinant", "proxy", "behavior"
  dependent = "cessation",                                                                                                                                           ### "initiation", "cessation"
  direction = "consistent",                                                                                                                                          ### "consistent" (same direction as dependent), "inconsistent"
  parent = NA,                                                                                                                                                       ### Name of parent variable into which this one is aggregated
  description = NA,                                                                                                                                                  ### Description, as text; or NA
  comment = "tallied results retrieved from page 13/14/
  others from pages 3-8, see individual variables "  ### Comment, as text; or NA
);

res$variable[[length(res$variable) + 1]] <- list(
  variable = "distractions aid quitting",
  moment = 1,                                                                                                                                                        ### moment this variable was measured/manipulated
  type = "question",                                                                                                                                                 ### "question", "aggregate", or "manipulation"
  datatype = "text",                                                                                                                                                 ### "numeric", "logical", "nominal", "ordinal", or "text"
  values = NA,                                                                                                                                                       ### Possible values; NA or a vector, e.g. c(1, 2, 3)
  labels = NA,                                                                                                                                                       ### Labels for the values; NA or e.g. c("no", "maybe", "sometimes")
  psytype = "belief",                                                                                                                                                ### "demographic", "belief", "determinant", "proxy", "behavior"
  dependent = "cessation",                                                                                                                                           ### "initiation", "cessation"
  direction = "consistent",                                                                                                                                          ### "consistent" (same direction as dependent), "inconsistent"
  parent = NA,                                                                                                                                                       ### Name of parent variable into which this one is aggregated
  description = NA,                                                                                                                                                  ### Description, as text; or NA
  comment = "tallied results retrieved from page 13/14/
  others from pages 3-8, see individual variables "  ### Comment, as text; or NA
);

res$variable[[length(res$variable) + 1]] <- list(
  variable = "advertising saying smoking is cool work against quitting motivation",
  moment = 1,                                                                                                                                                        ### moment this variable was measured/manipulated
  type = "question",                                                                                                                                                 ### "question", "aggregate", or "manipulation"
  datatype = "text",                                                                                                                                                 ### "numeric", "logical", "nominal", "ordinal", or "text"
  values = NA,                                                                                                                                                       ### Possible values; NA or a vector, e.g. c(1, 2, 3)
  labels = NA,                                                                                                                                                       ### Labels for the values; NA or e.g. c("no", "maybe", "sometimes")
  psytype = "belief",                                                                                                                                                ### "demographic", "belief", "determinant", "proxy", "behavior"
  dependent = "cessation",                                                                                                                                           ### "initiation", "cessation"
  direction = "inconsistent",                                                                                                                                          ### "consistent" (same direction as dependent), "inconsistent"
  parent = NA,                                                                                                                                                       ### Name of parent variable into which this one is aggregated
  description = NA,                                                                                                                                                  ### Description, as text; or NA
  comment = "tallied results retrieved from page 13/14/
  others from pages 3-8, see individual variables "  ### Comment, as text; or NA
);

res$variable[[length(res$variable) + 1]] <- list(
  variable = "smoking is wasteful",
  moment = 1,                                                                                                                                                        ### moment this variable was measured/manipulated
  type = "question",                                                                                                                                                 ### "question", "aggregate", or "manipulation"
  datatype = "text",                                                                                                                                                 ### "numeric", "logical", "nominal", "ordinal", or "text"
  values = NA,                                                                                                                                                       ### Possible values; NA or a vector, e.g. c(1, 2, 3)
  labels = NA,                                                                                                                                                       ### Labels for the values; NA or e.g. c("no", "maybe", "sometimes")
  psytype = "belief",                                                                                                                                                ### "demographic", "belief", "determinant", "proxy", "behavior"
  dependent = "cessation",                                                                                                                                           ### "initiation", "cessation"
  direction = "consistent",                                                                                                                                          ### "consistent" (same direction as dependent), "inconsistent"
  parent = NA,                                                                                                                                                       ### Name of parent variable into which this one is aggregated
  description = NA,                                                                                                                                                  ### Description, as text; or NA
  comment = "tallied results retrieved from page 13/14/
  others from pages 3-8, see individual variables "  ### Comment, as text; or NA
);

res$variable[[length(res$variable) + 1]] <- list(
  variable = "smoking is like burning money",
  moment = 1,                                                                                                                                                        ### moment this variable was measured/manipulated
  type = "question",                                                                                                                                                 ### "question", "aggregate", or "manipulation"
  datatype = "text",                                                                                                                                                 ### "numeric", "logical", "nominal", "ordinal", or "text"
  values = NA,                                                                                                                                                       ### Possible values; NA or a vector, e.g. c(1, 2, 3)
  labels = NA,                                                                                                                                                       ### Labels for the values; NA or e.g. c("no", "maybe", "sometimes")
  psytype = "belief",                                                                                                                                                ### "demographic", "belief", "determinant", "proxy", "behavior"
  dependent = "cessation",                                                                                                                                           ### "initiation", "cessation"
  direction = "consistent",                                                                                                                                          ### "consistent" (same direction as dependent), "inconsistent"
  parent = NA,                                                                                                                                                       ### Name of parent variable into which this one is aggregated
  description = NA,                                                                                                                                                  ### Description, as text; or NA
  comment = "tallied results retrieved from page 13/14/
  others from pages 3-8, see individual variables "  ### Comment, as text; or NA
);

##################################
##################################

res$variable[[length(res$variable) + 1]] <- list(
  variable = "dependence",
  moment = 1,                                                                                                                                                        ### moment this variable was measured/manipulated
  type = "question",                                                                                                                                                 ### "question", "aggregate", or "manipulation"
  datatype = "text",                                                                                                                                                 ### "numeric", "logical", "nominal", "ordinal", or "text"
  values = NA,                                                                                                                                                       ### Possible values; NA or a vector, e.g. c(1, 2, 3)
  labels = NA,                                                                                                                                                       ### Labels for the values; NA or e.g. c("no", "maybe", "sometimes")
  psytype = "belief",                                                                                                                                                ### "demographic", "belief", "determinant", "proxy", "behavior"
  dependent = "cessation",                                                                                                                                           ### "initiation", "cessation"
  direction = "consistent",                                                                                                                                          ### "consistent" (same direction as dependent), "inconsistent"
  parent = NA,                                                                                                                                                       ### Name of parent variable into which this one is aggregated
  description = NA,                                                                                                                                                  ### Description, as text; or NA
  comment = "tallied results retrieved from page 13/14/
  others from pages 3-8, see individual variables "  ### Comment, as text; or NA
);

res$variable[[length(res$variable) + 1]] <- list(
  variable = "physical",
  moment = 1,                                                                                                                                                        ### moment this variable was measured/manipulated
  type = "question",                                                                                                                                                 ### "question", "aggregate", or "manipulation"
  datatype = "text",                                                                                                                                                 ### "numeric", "logical", "nominal", "ordinal", or "text"
  values = NA,                                                                                                                                                       ### Possible values; NA or a vector, e.g. c(1, 2, 3)
  labels = NA,                                                                                                                                                       ### Labels for the values; NA or e.g. c("no", "maybe", "sometimes")
  psytype = "belief",                                                                                                                                                ### "demographic", "belief", "determinant", "proxy", "behavior"
  dependent = "cessation",                                                                                                                                           ### "initiation", "cessation"
  direction = "consistent",                                                                                                                                          ### "consistent" (same direction as dependent), "inconsistent"
  parent = NA,                                                                                                                                                       ### Name of parent variable into which this one is aggregated
  description = NA,                                                                                                                                                  ### Description, as text; or NA
  comment = "tallied results retrieved from page 13/14/
  others from pages 3-8, see individual variables "  ### Comment, as text; or NA
);

res$variable[[length(res$variable) + 1]] <- list(
  variable = "psychological",
  moment = 1,                                                                                                                                                        ### moment this variable was measured/manipulated
  type = "question",                                                                                                                                                 ### "question", "aggregate", or "manipulation"
  datatype = "text",                                                                                                                                                 ### "numeric", "logical", "nominal", "ordinal", or "text"
  values = NA,                                                                                                                                                       ### Possible values; NA or a vector, e.g. c(1, 2, 3)
  labels = NA,                                                                                                                                                       ### Labels for the values; NA or e.g. c("no", "maybe", "sometimes")
  psytype = "belief",                                                                                                                                                ### "demographic", "belief", "determinant", "proxy", "behavior"
  dependent = "cessation",                                                                                                                                           ### "initiation", "cessation"
  direction = "consistent",                                                                                                                                          ### "consistent" (same direction as dependent), "inconsistent"
  parent = NA,                                                                                                                                                       ### Name of parent variable into which this one is aggregated
  description = NA,                                                                                                                                                  ### Description, as text; or NA
  comment = "tallied results retrieved from page 13/14/
  others from pages 3-8, see individual variables "  ### Comment, as text; or NA
);

res$variable[[length(res$variable) + 1]] <- list(
  variable = "inadequacy of knowledge alone",
  moment = 1,                                                                                                                                                        ### moment this variable was measured/manipulated
  type = "question",                                                                                                                                                 ### "question", "aggregate", or "manipulation"
  datatype = "text",                                                                                                                                                 ### "numeric", "logical", "nominal", "ordinal", or "text"
  values = NA,                                                                                                                                                       ### Possible values; NA or a vector, e.g. c(1, 2, 3)
  labels = NA,                                                                                                                                                       ### Labels for the values; NA or e.g. c("no", "maybe", "sometimes")
  psytype = "belief",                                                                                                                                                ### "demographic", "belief", "determinant", "proxy", "behavior"
  dependent = "cessation",                                                                                                                                           ### "initiation", "cessation"
  direction = "consistent",                                                                                                                                          ### "consistent" (same direction as dependent), "inconsistent"
  parent = NA,                                                                                                                                                       ### Name of parent variable into which this one is aggregated
  description = NA,                                                                                                                                                  ### Description, as text; or NA
  comment = "tallied results retrieved from page 13/14/
  others from pages 3-8, see individual variables "  ### Comment, as text; or NA
);

res$variable[[length(res$variable) + 1]] <- list(
  variable = "lack of symptoms/abnormal checkup",
  moment = 1,                                                                                                                                                        ### moment this variable was measured/manipulated
  type = "question",                                                                                                                                                 ### "question", "aggregate", or "manipulation"
  datatype = "text",                                                                                                                                                 ### "numeric", "logical", "nominal", "ordinal", or "text"
  values = NA,                                                                                                                                                       ### Possible values; NA or a vector, e.g. c(1, 2, 3)
  labels = NA,                                                                                                                                                       ### Labels for the values; NA or e.g. c("no", "maybe", "sometimes")
  psytype = "belief",                                                                                                                                                ### "demographic", "belief", "determinant", "proxy", "behavior"
  dependent = "cessation",                                                                                                                                           ### "initiation", "cessation"
  direction = "consistent",                                                                                                                                          ### "consistent" (same direction as dependent), "inconsistent"
  parent = NA,                                                                                                                                                       ### Name of parent variable into which this one is aggregated
  description = NA,                                                                                                                                                  ### Description, as text; or NA
  comment = "tallied results retrieved from page 13/14/
  others from pages 3-8, see individual variables "  ### Comment, as text; or NA
);

res$variable[[length(res$variable) + 1]] <- list(
  variable = "etiquette",
  moment = 1,                                                                                                                                                        ### moment this variable was measured/manipulated
  type = "question",                                                                                                                                                 ### "question", "aggregate", or "manipulation"
  datatype = "text",                                                                                                                                                 ### "numeric", "logical", "nominal", "ordinal", or "text"
  values = NA,                                                                                                                                                       ### Possible values; NA or a vector, e.g. c(1, 2, 3)
  labels = NA,                                                                                                                                                       ### Labels for the values; NA or e.g. c("no", "maybe", "sometimes")
  psytype = "belief",                                                                                                                                                ### "demographic", "belief", "determinant", "proxy", "behavior"
  dependent = "cessation",                                                                                                                                           ### "initiation", "cessation"
  direction = "consistent",                                                                                                                                          ### "consistent" (same direction as dependent), "inconsistent"
  parent = NA,                                                                                                                                                       ### Name of parent variable into which this one is aggregated
  description = NA,                                                                                                                                                  ### Description, as text; or NA
  comment = "tallied results retrieved from page 13/14/
  others from pages 3-8, see individual variables "  ### Comment, as text; or NA
);

res$variable[[length(res$variable) + 1]] <- list(
  variable = "social status",
  moment = 1,                                                                                                                                                        ### moment this variable was measured/manipulated
  type = "question",                                                                                                                                                 ### "question", "aggregate", or "manipulation"
  datatype = "text",                                                                                                                                                 ### "numeric", "logical", "nominal", "ordinal", or "text"
  values = NA,                                                                                                                                                       ### Possible values; NA or a vector, e.g. c(1, 2, 3)
  labels = NA,                                                                                                                                                       ### Labels for the values; NA or e.g. c("no", "maybe", "sometimes")
  psytype = "belief",                                                                                                                                                ### "demographic", "belief", "determinant", "proxy", "behavior"
  dependent = "cessation",                                                                                                                                           ### "initiation", "cessation"
  direction = "consistent",                                                                                                                                          ### "consistent" (same direction as dependent), "inconsistent"
  parent = NA,                                                                                                                                                       ### Name of parent variable into which this one is aggregated
  description = NA,                                                                                                                                                  ### Description, as text; or NA
  comment = "tallied results retrieved from page 13/14/
  others from pages 3-8, see individual variables "  ### Comment, as text; or NA
);

res$variable[[length(res$variable) + 1]] <- list(
  variable = "maturity/maleness",
  moment = 1,                                                                                                                                                        ### moment this variable was measured/manipulated
  type = "question",                                                                                                                                                 ### "question", "aggregate", or "manipulation"
  datatype = "text",                                                                                                                                                 ### "numeric", "logical", "nominal", "ordinal", or "text"
  values = NA,                                                                                                                                                       ### Possible values; NA or a vector, e.g. c(1, 2, 3)
  labels = NA,                                                                                                                                                       ### Labels for the values; NA or e.g. c("no", "maybe", "sometimes")
  psytype = "belief",                                                                                                                                                ### "demographic", "belief", "determinant", "proxy", "behavior"
  dependent = "cessation",                                                                                                                                           ### "initiation", "cessation"
  direction = "consistent",                                                                                                                                          ### "consistent" (same direction as dependent), "inconsistent"
  parent = NA,                                                                                                                                                       ### Name of parent variable into which this one is aggregated
  description = NA,                                                                                                                                                  ### Description, as text; or NA
  comment = "tallied results retrieved from page 13/14/
  others from pages 3-8, see individual variables "  ### Comment, as text; or NA
);

res$variable[[length(res$variable) + 1]] <- list(
  variable = "entree/business",
  moment = 1,                                                                                                                                                        ### moment this variable was measured/manipulated
  type = "question",                                                                                                                                                 ### "question", "aggregate", or "manipulation"
  datatype = "text",                                                                                                                                                 ### "numeric", "logical", "nominal", "ordinal", or "text"
  values = NA,                                                                                                                                                       ### Possible values; NA or a vector, e.g. c(1, 2, 3)
  labels = NA,                                                                                                                                                       ### Labels for the values; NA or e.g. c("no", "maybe", "sometimes")
  psytype = "belief",                                                                                                                                                ### "demographic", "belief", "determinant", "proxy", "behavior"
  dependent = "cessation",                                                                                                                                           ### "initiation", "cessation"
  direction = "consistent",                                                                                                                                          ### "consistent" (same direction as dependent), "inconsistent"
  parent = NA,                                                                                                                                                       ### Name of parent variable into which this one is aggregated
  description = NA,                                                                                                                                                  ### Description, as text; or NA
  comment = "tallied results retrieved from page 13/14/
  others from pages 3-8, see individual variables "  ### Comment, as text; or NA
);

res$variable[[length(res$variable) + 1]] <- list(
  variable = "stimulates thinking",
  moment = 1,                                                                                                                                                        ### moment this variable was measured/manipulated
  type = "question",                                                                                                                                                 ### "question", "aggregate", or "manipulation"
  datatype = "text",                                                                                                                                                 ### "numeric", "logical", "nominal", "ordinal", or "text"
  values = NA,                                                                                                                                                       ### Possible values; NA or a vector, e.g. c(1, 2, 3)
  labels = NA,                                                                                                                                                       ### Labels for the values; NA or e.g. c("no", "maybe", "sometimes")
  psytype = "belief",                                                                                                                                                ### "demographic", "belief", "determinant", "proxy", "behavior"
  dependent = "cessation",                                                                                                                                           ### "initiation", "cessation"
  direction = "consistent",                                                                                                                                          ### "consistent" (same direction as dependent), "inconsistent"
  parent = NA,                                                                                                                                                       ### Name of parent variable into which this one is aggregated
  description = NA,                                                                                                                                                  ### Description, as text; or NA
  comment = "tallied results retrieved from page 13/14/
  others from pages 3-8, see individual variables "  ### Comment, as text; or NA
);

res$variable[[length(res$variable) + 1]] <- list(
  variable = "balance/yin&yang",
  moment = 1,                                                                                                                                                        ### moment this variable was measured/manipulated
  type = "question",                                                                                                                                                 ### "question", "aggregate", or "manipulation"
  datatype = "text",                                                                                                                                                 ### "numeric", "logical", "nominal", "ordinal", or "text"
  values = NA,                                                                                                                                                       ### Possible values; NA or a vector, e.g. c(1, 2, 3)
  labels = NA,                                                                                                                                                       ### Labels for the values; NA or e.g. c("no", "maybe", "sometimes")
  psytype = "belief",                                                                                                                                                ### "demographic", "belief", "determinant", "proxy", "behavior"
  dependent = "cessation",                                                                                                                                           ### "initiation", "cessation"
  direction = "consistent",                                                                                                                                          ### "consistent" (same direction as dependent), "inconsistent"
  parent = NA,                                                                                                                                                       ### Name of parent variable into which this one is aggregated
  description = NA,                                                                                                                                                  ### Description, as text; or NA
  comment = "tallied results retrieved from page 13/14/
  others from pages 3-8, see individual variables "  ### Comment, as text; or NA
);

res$variable[[length(res$variable) + 1]] <- list(
  variable = "cues",
  moment = 1,                                                                                                                                                        ### moment this variable was measured/manipulated
  type = "question",                                                                                                                                                 ### "question", "aggregate", or "manipulation"
  datatype = "text",                                                                                                                                                 ### "numeric", "logical", "nominal", "ordinal", or "text"
  values = NA,                                                                                                                                                       ### Possible values; NA or a vector, e.g. c(1, 2, 3)
  labels = NA,                                                                                                                                                       ### Labels for the values; NA or e.g. c("no", "maybe", "sometimes")
  psytype = "belief",                                                                                                                                                ### "demographic", "belief", "determinant", "proxy", "behavior"
  dependent = "cessation",                                                                                                                                           ### "initiation", "cessation"
  direction = "consistent",                                                                                                                                          ### "consistent" (same direction as dependent), "inconsistent"
  parent = NA,                                                                                                                                                       ### Name of parent variable into which this one is aggregated
  description = NA,                                                                                                                                                  ### Description, as text; or NA
  comment = "tallied results retrieved from page 13/14/
  others from pages 3-8, see individual variables "  ### Comment, as text; or NA
);

res$variable[[length(res$variable) + 1]] <- list(
  variable = "friends smoked",
  moment = 1,                                                                                                                                                        ### moment this variable was measured/manipulated
  type = "question",                                                                                                                                                 ### "question", "aggregate", or "manipulation"
  datatype = "text",                                                                                                                                                 ### "numeric", "logical", "nominal", "ordinal", or "text"
  values = NA,                                                                                                                                                       ### Possible values; NA or a vector, e.g. c(1, 2, 3)
  labels = NA,                                                                                                                                                       ### Labels for the values; NA or e.g. c("no", "maybe", "sometimes")
  psytype = "belief",                                                                                                                                                ### "demographic", "belief", "determinant", "proxy", "behavior"
  dependent = "cessation",                                                                                                                                           ### "initiation", "cessation"
  direction = "consistent",                                                                                                                                          ### "consistent" (same direction as dependent), "inconsistent"
  parent = NA,                                                                                                                                                       ### Name of parent variable into which this one is aggregated
  description = NA,                                                                                                                                                  ### Description, as text; or NA
  comment = "tallied results retrieved from page 13/14/
  others from pages 3-8, see individual variables "  ### Comment, as text; or NA
);

res$variable[[length(res$variable) + 1]] <- list(
  variable = "rules about smoking at home",
  moment = 1,                                                                                                                                                        ### moment this variable was measured/manipulated
  type = "question",                                                                                                                                                 ### "question", "aggregate", or "manipulation"
  datatype = "text",                                                                                                                                                 ### "numeric", "logical", "nominal", "ordinal", or "text"
  values = NA,                                                                                                                                                       ### Possible values; NA or a vector, e.g. c(1, 2, 3)
  labels = NA,                                                                                                                                                       ### Labels for the values; NA or e.g. c("no", "maybe", "sometimes")
  psytype = "belief",                                                                                                                                                ### "demographic", "belief", "determinant", "proxy", "behavior"
  dependent = "cessation",                                                                                                                                           ### "initiation", "cessation"
  direction = "consistent",                                                                                                                                          ### "consistent" (same direction as dependent), "inconsistent"
  parent = NA,                                                                                                                                                       ### Name of parent variable into which this one is aggregated
  description = NA,                                                                                                                                                  ### Description, as text; or NA
  comment = "tallied results retrieved from page 13/14/
  others from pages 3-8, see individual variables "  ### Comment, as text; or NA
);

res$variable[[length(res$variable) + 1]] <- list(
  variable = "lacked skill to deal with stress",
  moment = 1,                                                                                                                                                        ### moment this variable was measured/manipulated
  type = "question",                                                                                                                                                 ### "question", "aggregate", or "manipulation"
  datatype = "text",                                                                                                                                                 ### "numeric", "logical", "nominal", "ordinal", or "text"
  values = NA,                                                                                                                                                       ### Possible values; NA or a vector, e.g. c(1, 2, 3)
  labels = NA,                                                                                                                                                       ### Labels for the values; NA or e.g. c("no", "maybe", "sometimes")
  psytype = "belief",                                                                                                                                                ### "demographic", "belief", "determinant", "proxy", "behavior"
  dependent = "cessation",                                                                                                                                           ### "initiation", "cessation"
  direction = "consistent",                                                                                                                                          ### "consistent" (same direction as dependent), "inconsistent"
  parent = NA,                                                                                                                                                       ### Name of parent variable into which this one is aggregated
  description = NA,                                                                                                                                                  ### Description, as text; or NA
  comment = "tallied results retrieved from page 13/14/
  others from pages 3-8, see individual variables "  ### Comment, as text; or NA
);

res$variable[[length(res$variable) + 1]] <- list(
  variable = "smoking sooths/relaxes",
  moment = 1,                                                                                                                                                        ### moment this variable was measured/manipulated
  type = "question",                                                                                                                                                 ### "question", "aggregate", or "manipulation"
  datatype = "text",                                                                                                                                                 ### "numeric", "logical", "nominal", "ordinal", or "text"
  values = NA,                                                                                                                                                       ### Possible values; NA or a vector, e.g. c(1, 2, 3)
  labels = NA,                                                                                                                                                       ### Labels for the values; NA or e.g. c("no", "maybe", "sometimes")
  psytype = "belief",                                                                                                                                                ### "demographic", "belief", "determinant", "proxy", "behavior"
  dependent = "cessation",                                                                                                                                           ### "initiation", "cessation"
  direction = "consistent",                                                                                                                                          ### "consistent" (same direction as dependent), "inconsistent"
  parent = NA,                                                                                                                                                       ### Name of parent variable into which this one is aggregated
  description = NA,                                                                                                                                                  ### Description, as text; or NA
  comment = "tallied results retrieved from page 13/14/
  others from pages 3-8, see individual variables "  ### Comment, as text; or NA
);

res$variable[[length(res$variable) + 1]] <- list(
  variable = "personal willingness/determination",
  moment = 1,                                                                                                                                                        ### moment this variable was measured/manipulated
  type = "question",                                                                                                                                                 ### "question", "aggregate", or "manipulation"
  datatype = "text",                                                                                                                                                 ### "numeric", "logical", "nominal", "ordinal", or "text"
  values = NA,                                                                                                                                                       ### Possible values; NA or a vector, e.g. c(1, 2, 3)
  labels = NA,                                                                                                                                                       ### Labels for the values; NA or e.g. c("no", "maybe", "sometimes")
  psytype = "belief",                                                                                                                                                ### "demographic", "belief", "determinant", "proxy", "behavior"
  dependent = "cessation",                                                                                                                                           ### "initiation", "cessation"
  direction = "consistent",                                                                                                                                          ### "consistent" (same direction as dependent), "inconsistent"
  parent = NA,                                                                                                                                                       ### Name of parent variable into which this one is aggregated
  description = NA,                                                                                                                                                  ### Description, as text; or NA
  comment = "tallied results retrieved from page 13/14/
  others from pages 3-8, see individual variables "  ### Comment, as text; or NA
);

res$variable[[length(res$variable) + 1]] <- list(
  variable = "negative health effects of smoking",
  moment = 1,                                                                                                                                                        ### moment this variable was measured/manipulated
  type = "question",                                                                                                                                                 ### "question", "aggregate", or "manipulation"
  datatype = "text",                                                                                                                                                 ### "numeric", "logical", "nominal", "ordinal", or "text"
  values = NA,                                                                                                                                                       ### Possible values; NA or a vector, e.g. c(1, 2, 3)
  labels = NA,                                                                                                                                                       ### Labels for the values; NA or e.g. c("no", "maybe", "sometimes")
  psytype = "belief",                                                                                                                                                ### "demographic", "belief", "determinant", "proxy", "behavior"
  dependent = "cessation",                                                                                                                                           ### "initiation", "cessation"
  direction = "consistent",                                                                                                                                          ### "consistent" (same direction as dependent), "inconsistent"
  parent = NA,                                                                                                                                                       ### Name of parent variable into which this one is aggregated
  description = NA,                                                                                                                                                  ### Description, as text; or NA
  comment = "tallied results retrieved from page 13/14/
  others from pages 3-8, see individual variables "  ### Comment, as text; or NA
);

res$variable[[length(res$variable) + 1]] <- list(
  variable = "weight gain/better complexion after quitting",
  moment = 1,                                                                                                                                                        ### moment this variable was measured/manipulated
  type = "question",                                                                                                                                                 ### "question", "aggregate", or "manipulation"
  datatype = "text",                                                                                                                                                 ### "numeric", "logical", "nominal", "ordinal", or "text"
  values = NA,                                                                                                                                                       ### Possible values; NA or a vector, e.g. c(1, 2, 3)
  labels = NA,                                                                                                                                                       ### Labels for the values; NA or e.g. c("no", "maybe", "sometimes")
  psytype = "belief",                                                                                                                                                ### "demographic", "belief", "determinant", "proxy", "behavior"
  dependent = "cessation",                                                                                                                                           ### "initiation", "cessation"
  direction = "consistent",                                                                                                                                          ### "consistent" (same direction as dependent), "inconsistent"
  parent = NA,                                                                                                                                                       ### Name of parent variable into which this one is aggregated
  description = NA,                                                                                                                                                  ### Description, as text; or NA
  comment = "tallied results retrieved from page 13/14/
  others from pages 3-8, see individual variables "  ### Comment, as text; or NA
);

res$variable[[length(res$variable) + 1]] <- list(
  variable = "restrictions",
  moment = 1,                                                                                                                                                        ### moment this variable was measured/manipulated
  type = "question",                                                                                                                                                 ### "question", "aggregate", or "manipulation"
  datatype = "text",                                                                                                                                                 ### "numeric", "logical", "nominal", "ordinal", or "text"
  values = NA,                                                                                                                                                       ### Possible values; NA or a vector, e.g. c(1, 2, 3)
  labels = NA,                                                                                                                                                       ### Labels for the values; NA or e.g. c("no", "maybe", "sometimes")
  psytype = "belief",                                                                                                                                                ### "demographic", "belief", "determinant", "proxy", "behavior"
  dependent = "cessation",                                                                                                                                           ### "initiation", "cessation"
  direction = "consistent",                                                                                                                                          ### "consistent" (same direction as dependent), "inconsistent"
  parent = NA,                                                                                                                                                       ### Name of parent variable into which this one is aggregated
  description = NA,                                                                                                                                                  ### Description, as text; or NA
  comment = "tallied results retrieved from page 13/14/
  others from pages 3-8, see individual variables "  ### Comment, as text; or NA
);

res$variable[[length(res$variable) + 1]] <- list(
  variable = "rules of family/friends",
  moment = 1,                                                                                                                                                        ### moment this variable was measured/manipulated
  type = "question",                                                                                                                                                 ### "question", "aggregate", or "manipulation"
  datatype = "text",                                                                                                                                                 ### "numeric", "logical", "nominal", "ordinal", or "text"
  values = NA,                                                                                                                                                       ### Possible values; NA or a vector, e.g. c(1, 2, 3)
  labels = NA,                                                                                                                                                       ### Labels for the values; NA or e.g. c("no", "maybe", "sometimes")
  psytype = "belief",                                                                                                                                                ### "demographic", "belief", "determinant", "proxy", "behavior"
  dependent = "cessation",                                                                                                                                           ### "initiation", "cessation"
  direction = "consistent",                                                                                                                                          ### "consistent" (same direction as dependent), "inconsistent"
  parent = NA,                                                                                                                                                       ### Name of parent variable into which this one is aggregated
  description = NA,                                                                                                                                                  ### Description, as text; or NA
  comment = "tallied results retrieved from page 13/14/
  others from pages 3-8, see individual variables "  ### Comment, as text; or NA
);

res$variable[[length(res$variable) + 1]] <- list(
  variable = "cultural differences in US",
  moment = 1,                                                                                                                                                        ### moment this variable was measured/manipulated
  type = "question",                                                                                                                                                 ### "question", "aggregate", or "manipulation"
  datatype = "text",                                                                                                                                                 ### "numeric", "logical", "nominal", "ordinal", or "text"
  values = NA,                                                                                                                                                       ### Possible values; NA or a vector, e.g. c(1, 2, 3)
  labels = NA,                                                                                                                                                       ### Labels for the values; NA or e.g. c("no", "maybe", "sometimes")
  psytype = "belief",                                                                                                                                                ### "demographic", "belief", "determinant", "proxy", "behavior"
  dependent = "cessation",                                                                                                                                           ### "initiation", "cessation"
  direction = "consistent",                                                                                                                                          ### "consistent" (same direction as dependent), "inconsistent"
  parent = NA,                                                                                                                                                       ### Name of parent variable into which this one is aggregated
  description = NA,                                                                                                                                                  ### Description, as text; or NA
  comment = "tallied results retrieved from page 13/14/
  others from pages 3-8, see individual variables "  ### Comment, as text; or NA
);

res$variable[[length(res$variable) + 1]] <- list(
  variable = "dislike smell of cigarettes",
  moment = 1,                                                                                                                                                        ### moment this variable was measured/manipulated
  type = "question",                                                                                                                                                 ### "question", "aggregate", or "manipulation"
  datatype = "text",                                                                                                                                                 ### "numeric", "logical", "nominal", "ordinal", or "text"
  values = NA,                                                                                                                                                       ### Possible values; NA or a vector, e.g. c(1, 2, 3)
  labels = NA,                                                                                                                                                       ### Labels for the values; NA or e.g. c("no", "maybe", "sometimes")
  psytype = "belief",                                                                                                                                                ### "demographic", "belief", "determinant", "proxy", "behavior"
  dependent = "cessation",                                                                                                                                           ### "initiation", "cessation"
  direction = "consistent",                                                                                                                                          ### "consistent" (same direction as dependent), "inconsistent"
  parent = NA,                                                                                                                                                       ### Name of parent variable into which this one is aggregated
  description = NA,                                                                                                                                                  ### Description, as text; or NA
  comment = "tallied results retrieved from page 13/14/
  others from pages 3-8, see individual variables "  ### Comment, as text; or NA
);

res$variable[[length(res$variable) + 1]] <- list(
  variable = "smoking not allowed in public places",
  moment = 1,                                                                                                                                                        ### moment this variable was measured/manipulated
  type = "question",                                                                                                                                                 ### "question", "aggregate", or "manipulation"
  datatype = "text",                                                                                                                                                 ### "numeric", "logical", "nominal", "ordinal", or "text"
  values = NA,                                                                                                                                                       ### Possible values; NA or a vector, e.g. c(1, 2, 3)
  labels = NA,                                                                                                                                                       ### Labels for the values; NA or e.g. c("no", "maybe", "sometimes")
  psytype = "belief",                                                                                                                                                ### "demographic", "belief", "determinant", "proxy", "behavior"
  dependent = "cessation",                                                                                                                                           ### "initiation", "cessation"
  direction = "consistent",                                                                                                                                          ### "consistent" (same direction as dependent), "inconsistent"
  parent = NA,                                                                                                                                                       ### Name of parent variable into which this one is aggregated
  description = NA,                                                                                                                                                  ### Description, as text; or NA
  comment = "tallied results retrieved from page 13/14/
  others from pages 3-8, see individual variables "  ### Comment, as text; or NA
);

res$variable[[length(res$variable) + 1]] <- list(
  variable = "reduced smoking cues in media",
  moment = 1,                                                                                                                                                        ### moment this variable was measured/manipulated
  type = "question",                                                                                                                                                 ### "question", "aggregate", or "manipulation"
  datatype = "text",                                                                                                                                                 ### "numeric", "logical", "nominal", "ordinal", or "text"
  values = NA,                                                                                                                                                       ### Possible values; NA or a vector, e.g. c(1, 2, 3)
  labels = NA,                                                                                                                                                       ### Labels for the values; NA or e.g. c("no", "maybe", "sometimes")
  psytype = "belief",                                                                                                                                                ### "demographic", "belief", "determinant", "proxy", "behavior"
  dependent = "cessation",                                                                                                                                           ### "initiation", "cessation"
  direction = "consistent",                                                                                                                                          ### "consistent" (same direction as dependent), "inconsistent"
  parent = NA,                                                                                                                                                       ### Name of parent variable into which this one is aggregated
  description = NA,                                                                                                                                                  ### Description, as text; or NA
  comment = "tallied results retrieved from page 13/14/
  others from pages 3-8, see individual variables "  ### Comment, as text; or NA
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
