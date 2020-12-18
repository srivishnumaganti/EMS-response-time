#please try to run each file, because in few instances ggplot will remove all the rows with null values
#so that might give error in the output file

#load the expss library that will be used for variable labeling



library(expss)
library(dplyr)

#find your working directory for R
getwd()

#change your working directory to the location where your files are
#  (make sure you put the folder path for your new directory between the 
#   quotation marks)
setwd("/Users/vishnumaganti/documents/predictive modelling")

#load data
a<-readRDS("training_final.RDS")

#label initial_call_type
val_lab(a$initial_call_type)=num_lab("
1 Abdominal Pain-Fever & Cough
2 Abdominal Pain-Fever & Cough
3 Abdominal Pain Fever-Travel
4 Abdominal Pain
5 ACC
6 Active Shooter
7 ADM
8 Altered Mental Status
9 Alt Mental Status-Fever&Cough
10 Amputation, Arm, Hand,Leg,Foot
11 Amputation, Fingers Or Toes
12 Anaphylactic Shock-Fever&Cough
13 Anaphylaxis
14 Card Or Resp Arrest-Fevercough
15 Cardiac Arrest
16 Asthma Attack - Fever&Cough
17 Asthma Patient Fever-Travel
18 Asthma Attack
19 BBP
20 Major Burns 18% Adlt 10% Child
21 Minor Burns <18% Adlt Or <10%
22 Cardiac Condition
23 CARDBR
24 Cardiac Condition-Fever&Cough
25 CDBRFC
26 Child Abuse
27 Choking
28 Choking Fever&Cough
29 Hypothermia
30 COVINF
31 Stroke
32 CVA (Stroke)
33 Stroke Critical - Fever&Cough
34 Stroke - Fever & Cough
35 Death Confirm By Medical Auth
36 Difficult Breather
37 Diff Breathing - Fever&Cough
38 Difficult Breathing Fever-Travel
39 Difficult Breather Rf
40 Death Confirm By Medical Auth
41 DRILL
42 Drowning
43 Hx Drug Or Alcohol Abuse
44 Hx Drug Or Alchl Abuse-Fev&Cou
45 Psychiatric Patient
46 EDPC
47 EDPW
48 Electrocution
49 Evac 
50 Fire75 Working Fire
51 Fire76 High Rise Commercial
52 Fire77 High Rise Residential
53 Gyn Bleeding-Pt Not Pregnant
54 Gyn-Severe Pain-Bleeding
55 Heat Exhaustion
56 Hypertension
57 Internal Bleeding
58 Internal Bleeding-Fever&Cough
59 Inhalation Of Smoke
60 Injury Lower Ext In Elderly
61 Major Injury
62 Minor Injury
63 Non-Critical Injury
64 Jumper Down
65 Jumper Up
66 One Alarm Fire
67 One Alarm Fire
68 Two Alarm Fire
69 Two Alarm Fire
70 Three Alarm Fire
71 Four Alarm Fire
72 MCI25
73 Five Alarm Fire Or Greater
74 Occupied High-Rise Building
75 Occupied High-Rise Building
76 Criminal Detection Facil Incid
77 Report Of Explosives
78 Report Of Explosives
79 Explosion
80 Rapid Transit-Rail Incident
81 Ground Transport Incident
82 Ground Transport Incident
83 Structural Collaspe [Specify]
84 Construction-Demolition Incid
85 Construction-Demolition Incid
86 Confined Space Incident
87 MCI37
88 MCI40
89 Aircraft Incident - Crash
90 Civil Distrubance
91 Hostage Situation - Barricaded
92 Hostage Situation - Barricaded
93 Power Failure - Blackout
94 Active Shooter
95 Active Shooter
96 All Other MCIs
97 All Other MCIs
98 MCI76
99 MCI77
100 Hazardous Materials Incident
101 Hazardous Materials Incident
102 MECHE
103 MECHV
104 Reaction To Med - Fever&Cough
105 Reaction To Medication
106 Medevac, T-C Authority Only
107 MOSILL
108 MOSINJ
109 Auto Accident, No Confirmd Inj
110 Auto Acc W-Injuries
111 MVAINM
112 NOVEH
113 Obstetric Complications
114 Female In Labor
115 Major Obstetrical Complaint
116 Miscarriage
117 Baby Out Or Imminent Birth
118 Unknown Condition
119 Police 10-13, Unconfirmed
120 Police 10-13, Confirmed
121 Sick Ped<5 Yrs-Fever & Cough
122 Sick Ped<5 Yrs-Rash & Fever
123 Pedestrian Struck
124 PEDSTS
125 RADIO
126 Rape
127 Resp Distress - Fever&Cough
128 Respiratory Distress Fever-Travel
129 Respiratory Distress
130 RESPRF
131 SAFE
132 Seizures - Fever & Cough
133 Seizures
134 Gun Shot Wound
135 Sick
136 Sick - Cough & Fever
137 Sick Patient Fever-Travel
138 Sick - Rash And Fever
139 Sick - Minor - Fever & Cough
140 Minor Illness
141 Sick Pediatric, <5 Year Old
142 Special Event
143 Stabbing
144 Status Epilepticus
145 Mult Or Prolong Seizur-Fev&Cou
146 Status Epilepticus Fever-Travel
147 STNDBM
148 Request For Stand-By
149 Stat Transfer Request
150 STUCK
151 T-ARST
152 T-DFBR
153 T-EDP
154 T-INJ
155 T-SICK
156 T-TEXT
157 T-TRMA
158 T-UNC
159 T-UNKN
160 Test Kdt-Modat
161 Multiple Trauma Patient
162 TRAUMS
163 Unconscious Patient
164 Unc Patient - Fever & Cough
165 Unconscious Fever-Travel Patient
166 Unconscious Patient-Rash&Fever
167 Caller Has No Pt Medical Info
168 Venom (Snake Bites)
")

#check that initial call type labels loaded correctly
data.frame(table(a$initial_call_type))

#label final_call_type
val_lab(a$final_call_type)=num_lab("
1 Abdominal Pain-Fever & Cough
2 Abdominal Pain-Fever & Cough
3 Abdominal Pain Fever-Travel
4 Abdominal Pain
5 Active Shooter
6 ALMNFC
7 Altered Mental Status
8 Alt Mental Status-Fever&Cough
9 Amputation, Arm, Hand,Leg,Foot
10 Amputation, Fingers Or Toes
11 Anaphylactic Shock-Fever&Cough
12 Anaphylaxis
13 Card Or Resp Arrest-Fevercough
14 Cardiac Arrest
15 ARSTFC
16 Asthma Attack - Fever&Cough
17 Asthma Attack
18 Major Burns 18% Adlt 10% Child
19 Minor Burns <18% Adlt Or <10%
20 Cardiac Condition
21 CARDBR
22 Cardiac Condition-Fever&Cough
23 CDBRFC
24 Child Abuse
25 Choking
26 Choking Fever&Cough
27 Hypothermia
28 COVINF
29 Stroke
30 CVA (Stroke)
31 Stroke Critical - Fever&Cough
32 Stroke - Fever & Cough
33 Difficult Breather
34 Diff Breathing - Fever&Cough
35 Difficult Breathing Fever-Travel
36 Difficult Breather Rf
37 Death Confirm By Medical Auth
38 Drowning
39 Hx Drug Or Alcohol Abuse
40 Hx Drug Or Alchl Abuse-Fev&Cou
41 Psychiatric Patient
42 EDPC
43 EDPW
44 Electrocution
45 Evac 
46 Fire75 Working Fire
47 Fire77 High Rise Residential
48 Gyn Bleeding-Pt Not Pregnant
49 Gyn-Severe Pain-Bleeding
50 Heat Exhaustion
51 Hypertension
52 Internal Bleeding
53 Internal Bleeding-Fever&Cough
54 Inhalation Of Smoke
55 Injury Lower Ext In Elderly
56 Major Injury
57 Minor Injury
58 Non-Critical Injury
59 Jumper Down
60 Jumper Up
61 One Alarm Fire
62 One Alarm Fire
63 Two Alarm Fire
64 Two Alarm Fire
65 Three Alarm Fire
66 Three Alarm Fire
67 Four Alarm Fire
68 Four Alarm Fire
69 MCI25
70 Five Alarm Fire Or Greater
71 Occupied High-Rise Building
72 Occupied High-Rise Building
73 MCI27
74 Medical Facility Evacuation
75 Criminal Detection Facil Incid
76 Criminal Detection Facil Incid
77 Report Of Explosives
78 Report Of Explosives
79 Explosion
80 Rapid Transit-Rail Incident
81 Rapid Transit-Rail Incident
82 Ground Transport Incident
83 Ground Transport Incident
84 Structural Collaspe [Specify]
85 Structural Collaspe [Specify]
86 Construction-Demolition Incid
87 Construction-Demolition Incid
88 MCI35
89 Confined Space Incident
90 MCI37
91 Marine - Harbor Incident
92 Marine - Harbor Incident
93 MCI40
94 Aircraft Incident - Crash
95 MCI42
96 Civil Distrubance
97 Hostage Situation - Barricaded
98 Hostage Situation - Barricaded
99 Power Failure - Blackout
100 Power Failure - Blackout
101 Active Shooter
102 Active Shooter
103 All Other MCIs
104 All Other MCIs
105 MCI76
106 MCI77
107 Hazardous Materials Incident
108 Hazardous Materials Incident
109 Reaction To Med - Fever&Cough
110 Reaction To Medication
111 Medevac, T-C Authority Only
112 Auto Accident, No Confirmd Inj
113 Auto Acc W-Injuries
114 MVAINM
115 Obstetric Complications
116 Female In Labor
117 Major Obstetrical Complaint
118 Miscarriage
119 Baby Out Or Imminent Birth
120 Unknown Condition
121 Police 10-13, Unconfirmed
122 Police 10-13, Confirmed
123 Sick Ped<5 Yrs-Fever & Cough
124 Sick Ped<5 Yrs-Rash & Fever
125 Pedestrian Struck
126 Rape
127 Resp Distress - Fever&Cough
128 Respiratory Distress Fever-Travel
129 Respiratory Distress
130 RESPRF
131 SAFE
132 Seizures - Fever & Cough
133 Seizures
134 Gun Shot Wound
135 Sick
136 Sick - Cough & Fever
137 Sick Patient Fever-Travel
138 Sick - Rash And Fever
139 SICMFC
140 Minor Illness
141 Sick Pediatric, <5 Year Old
142 Special Event
143 Stabbing
144 Status Epilepticus
145 Mult Or Prolong Seizur-Fev&Cou
146 Status Epilepticus Fever-Travel
147 STNDBM
148 Request For Stand-By
149 Stat Transfer Request
150 T-ABDP
151 T-ARST
152 T-CARD
153 T-CDBR
154 T-DFBR
155 T-EDP
156 T-INBL
157 T-INJ
158 T-OBST
159 T-OTHR
160 T-SICK
161 T-TEXT
162 T-TRMA
163 T-UNC
164 T-UNKN
165 Multiple Trauma Patient
166 Unconscious Patient
167 Unc Patient - Fever & Cough
168 Unconscious Fever-Travel Patient
169 Unconscious Patient-Rash&Fever
170 Caller Has No Pt Medical Info
171 Venom (Snake Bites)
")

#check that final call type labels loaded correctly
data.frame(table(a$final_call_type))

#create month variable
a$month <- format(as.Date(a$incident_dt), "%m")

#create day of week variable
a$dow <- weekdays(as.Date(a$incident_dt))

#label incident disposition code
val_lab(a$incident_disposition_code)=num_lab("
82	transporting patient
83	patient pronounced dead
87	cancelled
90	unfounded
91	condition corrected
92	treated not transported
93	refused medical aid
94	treated and transported
95	triaged at scene no transport
96	patient gone on arrival
")

library(labelled)
#loading weather data in CSV format
b<-read.csv("GHCND_NY_Central_Park_20080101_20161231.csv",header=TRUE)

#labelling different variables
var_label(b$AWND) <- "Average Daily Wind Speed (mi/h)"
var_label(b$FMTM) <- "Time of Fastest 1-minute wind (HHMM)"
var_label(b$PGTM) <- "Peak Gust Time (HHMM)"
var_label(b$PRCP) <- "Precipitation (in)"
var_label(b$SNOW) <- "Snowfall (in)"
var_label(b$SNWD) <- "Snow depth (in)"
var_label(b$TMAX) <- "Max Temp (F)"
var_label(b$TMIN) <- "Min Temp (F)"
var_label(b$WDF2) <- "Direction of fastest 2-minute wind (degrees)"
var_label(b$WDF5) <- "Direction of fastest 5-second wind (degrees)"
var_label(b$WSF2) <- "Fastest 2-minute wind speed (mph)"
var_label(b$WSF5) <- "Fastest 5-second wind speed (mph)"
var_label(b$WT01) <- "Fog"
var_label(b$WT02) <- "Heavy Fog"
var_label(b$WT03) <- "Thunder"
var_label(b$WT04) <- "Ice pellets"
var_label(b$WT05) <- "Hail"
var_label(b$WT06) <- "Glaze or rime"
var_label(b$WT07) <- "Dust or sand"
var_label(b$WT08) <- "Smoke or haze"
var_label(b$WT09) <- "Blowing or drifting snow"
var_label(b$WT11) <- "High or damaging winds"
var_label(b$WT13) <- "Mist"
var_label(b$WT14) <- "Drizzle"
var_label(b$WT16) <- "Rain"
var_label(b$WT17) <- "Freezing Rain"
var_label(b$WT18) <- "Snow"
var_label(b$WT19) <- "Unknown Source of Precipitation"
var_label(b$WT22) <- "Freezing Fog"

#replace blanks with zeros for binary variables
wts <- grep('^WT', names(b), value = TRUE) #creates a new vector of all the binary variables related to weather type
b[wts][is.na(b[wts])] <- 0 #replaces all of the "NA" values in those binary variables with 0s

#create date variable for merging
a$date_m <- as.Date(a$incident_dt, "%m/%d/%Y")

#reformat date variable in weather data from character to date
b$date_m <- as.Date(b$DATE, "%m/%d/%Y")

#merge data at the incident level
merged_data <- left_join(a,b,by="date_m")





#selecting the required variables for regression analysis
DataFrame=select(merged_data,initial_call_type, incident_response_seconds_qy,policeprecinct, month, initial_severity_level_code, incident_year, PRCP, SNOW, SNWD,TMIN)
DataFrame$month = as.numeric(DataFrame$month)

#correlation
correlation_table=cor(DataFrame, use="complete.obs")
  
correlation_data=data.frame(correlation_table)


#only considering 2014 to 2016 data for analysis.
Dataset1<-DataFrame[DataFrame$incident_year >= "2014" & DataFrame$incident_year <= "2016",]

#regression
library(MASS)
library(ISLR)

lm.fit=lm(Dataset1$incident_response_seconds_qy~
            Dataset1$incident_year
          +Dataset1$initial_call_type+Dataset1$month+Dataset1$initial_severity_level_code+Dataset1$policeprecinct+
            Dataset1$PRCP+Dataset1$SNOW+Dataset1$SNWD+Dataset1$TMIN,data=Dataset1)
summary(lm.fit)
AIC(lm.fit)
BIC(lm.fit)


#scatterplot
library(ggplot2)  
ggplot(Dataset1, aes(Dataset1$initial_severity_level_code,Dataset1$incident_response_seconds_qy ))+geom_jitter()
ggplot(Dataset1, aes(Dataset1$policeprecinct,Dataset1$incident_response_seconds_qy ))+geom_jitter()



#dimesions of final dataset
dim(Dataset1)

#training set and testing set

#Filter data for training data i.e data from 2014 to 2015
trainingdataset<- subset(DataFrame, DataFrame$incident_year >=2014 & DataFrame$incident_year <=2015)

#Filter fata for test data i.e data from the year 2016
test<- subset(DataFrame, DataFrame$incident_year == 2016)


#bestsubsetselection
library(ISLR)
library(leaps)
names(trainingdataset)
dim(trainingdataset)
sum(is.na(trainingdataset$incident_response_seconds_qy))
trainingdataset=na.omit(trainingdataset)
dim(trainingdataset)
sum(is.na(trainingdataset))
regfit.full=regsubsets(incident_response_seconds_qy~.,trainingdataset)
summary(regfit.full)
regfit.full=regsubsets(incident_response_seconds_qy~.,data=trainingdataset,nvmax=9)
reg.summary=summary(regfit.full)
names(reg.summary)
reg.summary$rsq
par(mfrow=c(2,2))

#plot for r-squared 
which.max(reg.summary$rsq)
plot(reg.summary$rsq,xlab="Number of Variables",ylab="RSQ",type="l")
points(9,reg.summary$rsq[9], col="red",cex=2,pch=25)

#plot for RSS
which.min(reg.summary$rss)
plot(reg.summary$rss,xlab="Number of Variables",ylab="RSS",type="l")
points(9,reg.summary$rss[9], col="red",cex=2,pch=25)

#plot for adjusted R-squared
which.max(reg.summary$adjr2)
plot(reg.summary$adjr2,xlab="Number of Variables",ylab="Adjusted RSq",type="l")
points(9,reg.summary$adjr2[9], col="red",cex=2,pch=25)

#plot for cp
which.min(reg.summary$cp)
plot(reg.summary$cp,xlab="Number of Variables",ylab="Cp",type='l')
points(9,reg.summary$cp[9],col="red",cex=2,pch=20)

#plot for bic
which.min(reg.summary$bic)
plot(reg.summary$bic,xlab="Number of Variables",ylab="BIC",type='l')
points(9,reg.summary$bic[9],col="red",cex=2,pch=20)


coef(regfit.full,9)



#models
set.seed(1)
train=trainingdataset
test=na.omit(test)
regfit.best=regsubsets(incident_response_seconds_qy~.,data=train,nvmax=9)
test.mat=model.matrix(incident_response_seconds_qy~.,data=test)
val.errors=rep(NA,9)
for(i in 1:9){
  coefi=coef(regfit.best,id=i)
  pred=test.mat[,names(coefi)]%*%coefi
  val.errors[i]=mean((test$incident_response_seconds_qy-pred)^2)
}

which.min(val.errors)
plot(val.errors,xlab="Number of Variables",ylab="mean squre error",type="l")
points(2,reg.summary$rss[2], col="red",cex=2,pch=25)

val.errors
which.min(val.errors)
coef(regfit.best,2)



#LINEAR MODEL ON BEST TWO FITS ACCORDING TO REG.FIT.
lm.fit111=lm(Dataset1$incident_response_seconds_qy~
            Dataset1$initial_severity_level_code+Dataset1$policeprecinct
            ,data=Dataset1)
summary(lm.fit111)
AIC(lm.fit111)
BIC(lm.fit111)





#crossvalidation function
predict.regsubsets=function(object,newdata,id,...){
  form=as.formula(object$call[[2]])
  mat=model.matrix(form,newdata)
  coefi=coef(object,id=id)
  xvars=names(coefi)
  mat[,xvars]%*%coefi
}
k=13
set.seed(1)
Dataset1<-na.omit(Dataset1)
folds=sample(1:k,nrow(Dataset1),replace=TRUE)
cv.errors=matrix(NA,k,9, dimnames=list(NULL, paste(1:9)))
for(j in 1:k){
  best.fit=regsubsets(incident_response_seconds_qy~.,data=Dataset1[folds!=j,],nvmax=9)
  for(i in 1:9){
    pred=predict(best.fit,Dataset1[folds==j,],id=i)
    cv.errors[j,i]=mean( (Dataset1$incident_response_seconds_qy[folds==j]-pred)^2)
  }
}
mean.cv.errors=apply(cv.errors,2,mean)
mean.cv.errors
which.min(mean.cv.errors)
par(mfrow=c(1,1))
plot(mean.cv.errors,type='b')
which.min(mean.cv.errors)
reg.best=regsubsets(incident_response_seconds_qy~.,data=Dataset1, nvmax=9)
coef(reg.best,9)
summary(reg.best)


lm.fit222=lm(Dataset1$incident_response_seconds_qy~
            Dataset1$incident_year
          +Dataset1$initial_call_type+Dataset1$month+Dataset1$initial_severity_level_code+Dataset1$policeprecinct+
            Dataset1$PRCP+Dataset1$SNOW+Dataset1$SNWD+Dataset1$TMIN,data=Dataset1)
summary(lm.fit222)
AIC(lm.fit222)
BIC(lm.fit222)









  


  


