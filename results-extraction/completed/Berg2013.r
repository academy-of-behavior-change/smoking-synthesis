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
res$bibTexKey <- "Berg2013";

##########################################################################
##########################################################################
###
###  GENERAL INFORMATION / COMMENTS ON THIS STUDY:
###
res$generalComments <- "


Describes a sample of smokers/former smokers, all of whom have received cancer treatment.
Only qualitative results are extracted (Table 4), 
and only those pertaining to cessation as all participants are former smokers (no initiation)

";### Make sure this line starts with a double quote and a semicolon (";)
##########################################################################
##########################################################################


##########################################################################
### SAMPLE DESCRIPTION
##########################################################################

### Description of sample, in text (e.g. "Single mothers" or "West-Coast participants", etc)
res$sample$description <- "Smokers with smoking-related cancer diagnosis within the past 4 years";

### Description of geography of sample, in text
res$sample$geography <- "Southeastern Georgia";

### Sample size, as a number
res$sample$size <- 105;

### SUBSAMPLES - REMOVE THIS SECTION IF THERE ARE NO SUBSAMPLES

### Indicate which information you want to override. Specify the subsample
### you're providing new data for in the single quotes between the double
### brackets; make sure the spelling is exactly identical to the list above.
### Use NA to specify data that should not be overridden.

res$subsample[[length(res$subsample) + 1]] <- list( ### Create object for this subsample
  name = "Quitters",           ### E.g. "Single mothers", "West-Coast
  description = "Smokers who've quit since cancer diagnosis",                                 ### participants", or "Caucasian teenagers"
  geography = NA,
  size = 51
);

res$subsample[[length(res$subsample) + 1]] <- list( ### Create object for this subsample
  name = "Smokers",           ### E.g. "Single mothers", "West-Coast
  description = "Smokers who've continued smoking since diagnosis",                                 ### participants", or "Caucasian teenagers"
  geography = NA,
  size = 54
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
  variable = "quitting will decrease the odds of more chemotherapy treatment",       ### Name of variable this result pertains to
  qualitative = "nothing reported",                 ### Description (qualitative research)
  comment = "Table 4, page 804 in Knowing I have cancer"                      ### Comment or NA
);

res$univariate[[length(res$univariate) + 1]] <- list(
  variable = "Quitting decreases cancer spread",       ### Name of variable this result pertains to
  qualitative = "nothing reported",                 ### Description (qualitative research)
  comment = "Table 4, page 804 in Knowing I have cancer"                      ### Comment or NA
);

res$univariate[[length(res$univariate) + 1]] <- list(
  variable = "Quitting decreases imminence of death",       ### Name of variable this result pertains to
  qualitative = "nothing reported",                 ### Description (qualitative research)
  comment = "Table 4, page 804 in Knowing I have cancer"                      ### Comment or NA
);

res$univariate[[length(res$univariate) + 1]] <- list(
  variable = "Quitting makes physician provide cancer treatment",       ### Name of variable this result pertains to
  qualitative = "nothing reported",                 ### Description (qualitative research)
  comment = "Table 4, page 804. Physician will withhold treatment to smokers. see: Doctors advice"                      ### Comment or NA
);
res$univariate[[length(res$univariate) + 1]] <- list(
  variable = "Initiation of cancer treatment motivates to quit",       ### Name of variable this result pertains to
  qualitative = "nothing reported, in Doctors advice",                 ### Description (qualitative research)
  comment = "Table 4, page 804"                      ### Comment or NA
);

res$univariate[[length(res$univariate) + 1]] <- list(
  variable = "Quitting aides success of chemotherapy treatment",       ### Name of variable this result pertains to
  qualitative = "nothing reported",                 ### Description (qualitative research)
  comment = "Table 4, page 804, in Doctors advice"                      ### Comment or NA
);

res$univariate[[length(res$univariate) + 1]] <- list(
  variable = "Regret of re-initiation aides quitting",       ### Name of variable this result pertains to
  qualitative = "nothing reported",                 ### Description (qualitative research)
  comment = "Table 4, page 804 in Doctors advice"                      ### Comment or NA
);

res$univariate[[length(res$univariate) + 1]] <- list(
  variable = "Surgeon refuses to operate on smokers",       ### Name of variable this result pertains to
  qualitative = "nothing reported",                 ### Description (qualitative research)
  comment = "Table 4, page 804 in Doctors advice"                      ### Comment or NA
);

res$univariate[[length(res$univariate) + 1]] <- list(
  variable = "Quitting makes health problems beyond cancer less likely",       ### Name of variable this result pertains to
  qualitative = "nothing reported",                 ### Description (qualitative research)
  comment = "Table 4, page 804 in Other health concerns"                      ### Comment or NA
);

res$univariate[[length(res$univariate) + 1]] <- list(
  variable = "Quitting is smart",       ### Name of variable this result pertains to
  qualitative = "nothing reported",                 ### Description (qualitative research)
  comment = "Table 4, page 804 in Other health concerns"                      ### Comment or NA
);

res$univariate[[length(res$univariate) + 1]] <- list(
  variable = "Quitting with partner",       ### Name of variable this result pertains to
  qualitative = "nothing reported",                 ### Description (qualitative research)
  comment = "Table 4, page 804, in Social motivators"                      ### Comment or NA
);

res$univariate[[length(res$univariate) + 1]] <- list(
  variable = "Family advice motivates to quit",       ### Name of variable this result pertains to
  qualitative = "nothing reported",                 ### Description (qualitative research)
  comment = "Table 4, page 804, in Social motivators"                      ### Comment or NA
);

res$univariate[[length(res$univariate) + 1]] <- list(
  variable = "No other relief available (hopelessness)",       ### Name of variable this result pertains to
  qualitative = "nothing reported",                 ### Description (qualitative research)
  comment = "Table 4, page 804, in Hopelessness"                      ### Comment or NA
);

res$univariate[[length(res$univariate) + 1]] <- list(
  variable = "No other relief available (stress)",       ### Name of variable this result pertains to
  qualitative = "nothing reported",                 ### Description (qualitative research)
  comment = "Table 4, page 804, in Hopelessness"                      ### Comment or NA
);

res$univariate[[length(res$univariate) + 1]] <- list(
  variable = "No other relief available (anxiety)",       ### Name of variable this result pertains to
  qualitative = "nothing reported",                 ### Description (qualitative research)
  comment = "Table 4, page 804, in Hopelessness"                      ### Comment or NA
);

res$univariate[[length(res$univariate) + 1]] <- list(
  variable = "Smoking alleviates stress",       ### Name of variable this result pertains to
  qualitative = "nothing reported",                 ### Description (qualitative research)
  comment = "Table 4, page 804, in Stress"                      ### Comment or NA
);

res$univariate[[length(res$univariate) + 1]] <- list(
  variable = "Quitting causes severe discomfort",       ### Name of variable this result pertains to
  qualitative = "nothing reported",                 ### Description (qualitative research)
  comment = "Table 4, page 804, in Addiction cravings"                      ### Comment or NA
);

res$univariate[[length(res$univariate) + 1]] <- list(
  variable = "Cravings cause disregard of set rules",       ### Name of variable this result pertains to
  qualitative = "nothing reported",                 ### Description (qualitative research)
  comment = "Table 4, page 804, in Addiction cravings"                      ### Comment or NA
);

res$univariate[[length(res$univariate) + 1]] <- list(
  variable = "Quitting raises mental addiction",       ### Name of variable this result pertains to
  qualitative = "nothing reported",                 ### Description (qualitative research)
  comment = "Table 4, page 804, in Habit/routine"                      ### Comment or NA
);

res$univariate[[length(res$univariate) + 1]] <- list(
  variable = "Use of replacement stimulus helps break smoking habit",       ### Name of variable this result pertains to
  qualitative = "nothing reported",                 ### Description (qualitative research)
  comment = "Table 4, page 804, in Habit/routine"                      ### Comment or NA
);
 
res$univariate[[length(res$univariate) + 1]] <- list(
  variable = "Quitting is difficult with smoking partner",       ### Name of variable this result pertains to
  qualitative = "nothing reported",                 ### Description (qualitative research)
  comment = "Table 4, page 804, in Being around smokers"                      ### Comment or NA
);

res$univariate[[length(res$univariate) + 1]] <- list(
  variable = "Self-control is difficult around smokers",       ### Name of variable this result pertains to
  qualitative = "nothing reported",                 ### Description (qualitative research)
  comment = "Table 4, page 804, in Being around smokers"                      ### Comment or NA
);




##########################################################################


##########################################################################
### MEASUREMENTS AND MANIPULATIONS: THE VARIABLES IN THE STUDY
##########################################################################



res$variable[[length(res$variable) + 1]] <- list(
  variable = "quitting will decrease the odds of more chemotherapy treatment",             ### Replace 'example' with variable name
  type = "question",                ### "question", "aggregate", or "manipulation"
  datatype = "text",             ### "numeric", "logical", "nominal", "ordinal", or "text"
  psytype = "belief",               ### "demographic", "belief", "determinant", "proxy", "behavior"
  dependent = "cessation",         ### "initiation", "cessation"
  direction = "consistent",
  description = "Once you go through chemotherapy and five to six weeks of radiation, and feel like you want to
die, the last thing you want to do is have to go through that again. That is a heck of a motivator",                 ### Description, as text; or NA
  comment = "Table 4 page 804"                      ### Comment, as text; or NA
);

res$variable[[length(res$variable) + 1]] <- list(
  variable = "Quitting decreases cancer spread",             ### Replace 'example' with variable name
  type = "question",                ### "question", "aggregate", or "manipulation"
  datatype = "text",             ### "numeric", "logical", "nominal", "ordinal", or "text"
  psytype = "belief",               ### "demographic", "belief", "determinant", "proxy", "behavior"
  dependent = "cessation",         ### "initiation", "cessation"
  direction = "consistent",
  description = "I don’t want the cancer to spread. The way I understand it, cigarettes or the nicotine is like throwing fertilizer on a fl ower garden. It makes it
grow.",                 ### Description, as text; or NA
  comment = "Table 4 page 804"                      ### Comment, as text; or NA
);

res$variable[[length(res$variable) + 1]] <- list(
  variable = "Quitting decreases imminence of death",             ### Replace 'example' with variable name
  type = "question",                ### "question", "aggregate", or "manipulation"
  datatype = "text",             ### "numeric", "logical", "nominal", "ordinal", or "text"
  psytype = "belief",               ### "demographic", "belief", "determinant", "proxy", "behavior"
  dependent = "cessation",         ### "initiation", "cessation"
  direction = "consistent",
  description = "I used to be one of those people that thought “well you’ve got to die of something.” I realize,
now more than ever, those are just words. That is just somebody trying to be a smart aleck. But when the doctor tells you you’ve got cancer,
your whole world changes.",                 ### Description, as text; or NA
  comment = "Table 4 page 804"                      ### Comment, as text; or NA
);

res$variable[[length(res$variable) + 1]] <- list(
  variable = "Quitting makes physician provide cancer treatment",             ### Replace 'example' with variable name
  type = "question",                ### "question", "aggregate", or "manipulation"
  datatype = "text",             ### "numeric", "logical", "nominal", "ordinal", or "text"
  psytype = "belief",               ### "demographic", "belief", "determinant", "proxy", "behavior"
  dependent = "cessation",         ### "initiation", "cessation"
  direction = "consistent",
  description = "Once the diagnosis was in and the doctor said that, unless I agreed to quit he wasnt going to treat me, it was an easy decision. I was shocked
when he told me that statistically, as many as 3/4 of the people who quit start back again. I was floored by that information. Once he told me that
and then the treatment started almost immediately, the desire was gone.",                 ### Description, as text; or NA
  comment = "Table 4 page 804"                      ### Comment, as text; or NA
);

res$variable[[length(res$variable) + 1]] <- list(
  variable = "Initiation of cancer treatment motivates to quit",             ### Replace 'example' with variable name
  type = "question",                ### "question", "aggregate", or "manipulation"
  datatype = "text",             ### "numeric", "logical", "nominal", "ordinal", or "text"
  psytype = "belief",               ### "demographic", "belief", "determinant", "proxy", "behavior"
  dependent = "cessation",         ### "initiation", "cessation"
  direction = "consistent",
  description = "'I was shocked when he told me that statistically, as many as 3/4 of the people who quit start back again. I was floored by that information. Once he told me that
and then the treatment started almost immediately, the desire was gone.",                 ### Description, as text; or NA
  comment = "Table 4 page 804"                      ### Comment, as text; or NA
);

res$variable[[length(res$variable) + 1]] <- list(
  variable = "Quitting aides success of chemotherapy treatment",             ### Replace 'example' with variable name
  type = "question",                ### "question", "aggregate", or "manipulation"
  datatype = "text",             ### "numeric", "logical", "nominal", "ordinal", or "text"
  psytype = "belief",               ### "demographic", "belief", "determinant", "proxy", "behavior"
  dependent = "cessation",         ### "initiation", "cessation"
  direction = "consistent",
  description = "When they first told me I was still in the hospital. Of course you cant smoke there. 
I came home and told my kids what the doctor had told me. I didnt slow down [on my smoking], 
but then I had an appointment when I was going to start my chemo and radiation, and she told me, you
know, if you are smoking, the radiation and chemo wont work. Youll be doing this for nothing.",                 ### Description, as text; or NA
  comment = "Table 4 page 804"                      ### Comment, as text; or NA
);

res$variable[[length(res$variable) + 1]] <- list(
  variable = "Regret of re-initiation aides quitting",             ### Replace 'example' with variable name
  type = "question",                ### "question", "aggregate", or "manipulation"
  datatype = "text",             ### "numeric", "logical", "nominal", "ordinal", or "text"
  psytype = "belief",               ### "demographic", "belief", "determinant", "proxy", "behavior"
  dependent = "cessation",         ### "initiation", "cessation"
  direction = "consistent",
  description =  NA,                 ### Description, as text; or NA
  comment = "Table 4 page 804"                      ### Comment, as text; or NA
);

res$variable[[length(res$variable) + 1]] <- list(
  variable = "Surgeon refuses to operate on smokers",             ### Replace 'example' with variable name
  type = "question",               ### "question", "aggregate", or "manipulation"
  datatype = "text",             ### "numeric", "logical", "nominal", "ordinal", or "text"
  psytype = "belief",               ### "demographic", "belief", "determinant", "proxy", "behavior"
  dependent = "cessation",         ### "initiation", "cessation"
  direction = "consistent",
  description = "Then there comes a point with me when somebody tells me youve got lung cancer, youve got this cancer, and if youve never smoked before
in your life, you wouldnt be going through this. When youve got one of the top surgeons in the country that says Im not going to operate on
you if you dont do this, then that was the end of it for me.",                 ### Description, as text; or NA
  comment = "Table 4 page 804"                      ### Comment, as text; or NA
);

res$variable[[length(res$variable) + 1]] <- list(
  variable = "Quitting makes health problems beyond cancer less likely",             ### Replace 'example' with variable name
  type = "question",                ### "question", "aggregate", or "manipulation"
  datatype = "text",             ### "numeric", "logical", "nominal", "ordinal", or "text"
  psytype = "belief",               ### "demographic", "belief", "determinant", "proxy", "behavior"
  dependent = "cessation",         ### "initiation", "cessation"
  direction = "consistent",
  description = "I thought about people just having lung cancer. I didnt know that it was also the cause of 
bladder cancer. I went to the eye doctor the other day because I was having trouble seeing. He asked me if I 
smoked. I said I did until about a month or so ago. He said I had something behind my eyes
that was related to smoking. So many things are caused by it. It is not just cancer.",                
    comment = "Table 4 page 804"                    
);

res$variable[[length(res$variable) + 1]] <- list(
  variable = "Quitting is smart",             ### Replace 'example' with variable name
  type = "question",                ### "question", "aggregate", or "manipulation"
  datatype = "text",             ### "numeric", "logical", "nominal", "ordinal", or "text"
  psytype = "belief",               ### "demographic", "belief", "determinant", "proxy", "behavior"
  dependent = "cessation",         ### "initiation", "cessation"
  direction = "consistent",
  description = "Well, most of my health problems are probably more or less related to cigarette smoking, I smoked so long. I know its not good for me; quitting
is the reasonable thing to do. People who still smoke are not very smart. And then I dont feel good about myself when I did start again, because
its not a smart thing to do",                 ### Description, as text; or NA
  comment = "Table 4 page 804"                      ### Comment, as text; or NA
);

res$variable[[length(res$variable) + 1]] <- list(
  variable = "Quitting with partner",             ### Replace 'example' with variable name
  type = "question",                ### "question", "aggregate", or "manipulation"
  datatype = "text",             ### "numeric", "logical", "nominal", "ordinal", or "text"
  psytype = "belief",               ### "demographic", "belief", "determinant", "proxy", "behavior"
  dependent = "cessation",         ### "initiation", "cessation"
  direction = "consistent",
  description = "My husband quit because he saw that I had started smoking again. 
  I think that he felt responsible for me having started again, so he quit.",                 ### Description, as text; or NA
  comment = "Table 4 page 804"                      ### Comment, as text; or NA
);

res$variable[[length(res$variable) + 1]] <- list(
  variable = "Family advice motivates to quit",             ### Replace 'example' with variable name
  type = "question",                ### "question", "aggregate", or "manipulation"
  datatype = "text",             ### "numeric", "logical", "nominal", "ordinal", or "text"
  psytype = "belief",               ### "demographic", "belief", "determinant", "proxy", "behavior"
  dependent = "cessation",         ### "initiation", "cessation"
  direction = "consistent",
  description = "Both of my daughters were like Mom, you cannot smoke and take radiation and chemotherapy, so I just quit",                 ### Description, as text; or NA
  comment = "Table 4 page 804"                      ### Comment, as text; or NA
);

res$variable[[length(res$variable) + 1]] <- list(
  variable = "No other relief available (hopelessness)",             ### Replace 'example' with variable name
  type = "question",                ### "question", "aggregate", or "manipulation"
  datatype = "text",             ### "numeric", "logical", "nominal", "ordinal", or "text"
  psytype = "belief",               ### "demographic", "belief", "determinant", "proxy", "behavior"
  dependent = "cessation",         ### "initiation", "cessation"
  direction = "inconsistent",
  description = "The thought of going ahead and smoking anyway because you are already probably... it is difficult because I think about my colon and stuff. I
cant. Its hard. Its very, very hard. That makes me want [a cigarette] because I dont have nobody to talk to.",                 ### Description, as text; or NA
  comment = "Table 4 page 804"                      ### Comment, as text; or NA
);

res$variable[[length(res$variable) + 1]] <- list(
  variable = "No other relief available (stress)",             ### Replace 'example' with variable name
  type = "question",                ### "question", "aggregate", or "manipulation"
  datatype = "text",             ### "numeric", "logical", "nominal", "ordinal", or "text"
  psytype = "belief",               ### "demographic", "belief", "determinant", "proxy", "behavior"
  dependent = "cessation",         ### "initiation", "cessation"
  direction = "inconsistent",
  description = "I have quit so many times. The year or two years before, I dont think I was smoking; but then I started again because I felt really stressed and sort
of hopeless when I first found out [I had cancer], and just discouraged. I know its a bad attitude, but Im so sick anyway, who cares? I might as well
smoke since I enjoyed it for so many years. Out of stress and anxiety I started again. ",                 ### Description, as text; or NA
  comment = "Table 4 page 804"                      ### Comment, as text; or NA
);

res$variable[[length(res$variable) + 1]] <- list(
  variable = "No other relief available (anxiety)",             ### Replace 'example' with variable name
  type = "question",                ### "question", "aggregate", or "manipulation"
  datatype = "text",             ### "numeric", "logical", "nominal", "ordinal", or "text"
  psytype = "belief",               ### "demographic", "belief", "determinant", "proxy", "behavior"
  dependent = "cessation",         ### "initiation", "cessation"
  direction = "inconsistent",
  description = "I have quit so many times. The year or two years before, I dont think I was smoking; but then I started again because I felt really stressed and sort
of hopeless when I first found out [I had cancer], and just discouraged. I know its a bad attitude, but Im so sick anyway, who cares? I might as well
smoke since I enjoyed it for so many years. Out of stress and anxiety I started again.",                 ### Description, as text; or NA
  comment = "Table 4 page 804"                      ### Comment, as text; or NA
);

res$variable[[length(res$variable) + 1]] <- list(
  variable = "Smoking alleviates stress",             ### Replace 'example' with variable name
  type = "question",                ### "question", "aggregate", or "manipulation"
  datatype = "text",             ### "numeric", "logical", "nominal", "ordinal", or "text"
  psytype = "belief",               ### "demographic", "belief", "determinant", "proxy", "behavior"
  dependent = "cessation",         ### "initiation", "cessation"
  direction = "inconsistent",
  description = "When I get nervous, if I have a bad day, or some of those things, it makes me want to smoke. That is the fi rst thing I turn to when I have a bad day
or things weren’t going my way, I would have a cigarette and smoke",                 ### Description, as text; or NA
  comment = "Table 4 page 804"                      ### Comment, as text; or NA
);

res$variable[[length(res$variable) + 1]] <- list(
  variable = "Quitting causes severe discomfort",             ### Replace 'example' with variable name
  type = "question",                ### "question", "aggregate", or "manipulation"
  datatype = "text",             ### "numeric", "logical", "nominal", "ordinal", or "text"
  psytype = "belief",               ### "demographic", "belief", "determinant", "proxy", "behavior"
  dependent = "cessation",         ### "initiation", "cessation"
  direction = "inconsistent",
  description = "Its very addicting. Gosh, its addicting. It makes you crazy. Its crazy, but I have actually looked for cigarette butts before, in the ashtray. Ive looked
for some in my car, under the car seat, to see if maybe one had fallen out of my purse. Its like you tear up the house. It’s like you’re an addict. Its
just bad"                      ### Comment, as text; or NA
);

res$variable[[length(res$variable) + 1]] <- list(
  variable = "Cravings cause disregard of set rules",             ### Replace 'example' with variable name
  type = "question",                ### "question", "aggregate", or "manipulation"
  datatype = "text",             ### "numeric", "logical", "nominal", "ordinal", or "text"
  psytype = "belief",               ### "demographic", "belief", "determinant", "proxy", "behavior"
  dependent = "cessation",         ### "initiation", "cessation"
  direction = "inconsistent",
  description = "I was so badly addicted that the nurse caught me trying to slip down to go out because my daughter would take me out with the IV thing rolling
it along to go outside and smoke. One time the nurse wouldnt let me go downstairs, so I had a window in my room. I opened it up and climbed
out on the roof and smoked."                      ### Comment, as text; or NA
);

res$variable[[length(res$variable) + 1]] <- list(
  variable = "Quitting raises mental addiction",             ### Replace 'example' with variable name
  type = "question",                ### "question", "aggregate", or "manipulation"
  datatype = "text",             ### "numeric", "logical", "nominal", "ordinal", or "text"
  psytype = "belief",               ### "demographic", "belief", "determinant", "proxy", "behavior"
  dependent = "cessation",         ### "initiation", "cessation"
  direction = "inconsistent",
  description = "Smoking is not just one habit. Even though my body had stopped being addicted to the nicotine, I still have to deal with the fact of wanting the
cigarette. It is not a physical addiction anymore, but it is very much so a mental addiction"                      ### Comment, as text; or NA
);

res$variable[[length(res$variable) + 1]] <- list(
  variable = "Use of replacement stimulus helps break smoking habit",             ### Replace 'example' with variable name
  type = "question",                ### "question", "aggregate", or "manipulation"
  datatype = "text",             ### "numeric", "logical", "nominal", "ordinal", or "text"
  psytype = "belief",               ### "demographic", "belief", "determinant", "proxy", "behavior"
  dependent = "cessation",         ### "initiation", "cessation"
  direction = "consistent",
  description = "Particularly after I eat and in the morning with coffee is just a habit to wake up and have that cigarette. It was really hard to break that habit. I used
straws, mostly straws. I would puff on a straw"                      ### Comment, as text; or NA
);

res$variable[[length(res$variable) + 1]] <- list(
  variable = "Quitting is difficult with smoking partner",             ### Replace 'example' with variable name
  type = "question",                ### "question", "aggregate", or "manipulation"
  datatype = "text",             ### "numeric", "logical", "nominal", "ordinal", or "text"
  psytype = "belief",               ### "demographic", "belief", "determinant", "proxy", "behavior"
  dependent = "cessation",         ### "initiation", "cessation"
  direction = "inconsistent",
  description = "My wife smokes. It is difficult to be in the house with a smoker. I am not blaming it on my wife in any stretch of the imagination, but if she didnt
smoke it would be easier"                      ### Comment, as text; or NA
);

res$variable[[length(res$variable) + 1]] <- list(
  variable = "Self-control is difficult around smokers",             ### Replace 'example' with variable name
  type = "question",                ### "question", "aggregate", or "manipulation"
  datatype = "text",             ### "numeric", "logical", "nominal", "ordinal", or "text"
  psytype = "belief",               ### "demographic", "belief", "determinant", "proxy", "behavior"
  dependent = "cessation",         ### "initiation", "cessation"
  direction = "inconsistent",
  description = "The bad thing with that is if youre constantly around people that smoke, theres always the temptation to have a cigarette. You just have to
control yourself and think Im not going to have one."                      ### Comment, as text; or NA
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
res$bibTex;
### For showing the entire dataframes
#print.data.frame(extractionVerification(res)$dat$extractedVariables)
#print.data.frame(extractionVerification(res)$dat$extractedUnivariate)
#print.data.frame(extractionVerification(res)$dat$extractedAssociations)
