#load the expss library that will be used for variable labeling
library(expss)

#find your working directory for R
getwd()

#change your working directory to the location where your files are
#  (make sure you put the folder path for your new directory between the 
#   quotation marks)
setwd("/Users/Brandon/Files/Teaching/CINF 624 - Predictive Analytics/Assignment")

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

#check that final call type labels loaded correctly
data.frame(table(a$incident_disposition_code))

#run table of incident disposition code by year
table(a$incident_disposition_code, a$incident_year)

#bar chart of incidents by year
counts_total <- table(a$incident_year) #creates a count of incidents by year and stores it in a new value frame
  barplot(counts_total, xlab="Year", ylab="# of Incidents", col=c("red"), main = "EMS Incidents by Year")

#line chart of incidents by year
  plot(counts_total, type="o", xlab="Year", ylab="# of Incidents", col=c("red"), main = "EMS Incidents by Year")
  
#multiple line chart of incidents by month and year
  counts_month <- as.data.frame.matrix(table(a$month,a$incident_year)) #creates a count of incidents by year and stores it in a new value frame
  
  library(data.table)
  setDT(counts_month, keep.rownames = TRUE)[] #to create the first row as the row names, i.e month numbers
  colnames(counts_month)[1]<-"month" #rename the first column heading as Month
  
  library(ggplot2) #powerful graphics generator for R
  library(reshape) #to transform a table of rows and columns into individual entries for each row-column combo - think 2008-March and 2009-Feb
  Molten <- melt(counts_month, id.vars = "month")
  colnames(Molten)[2]<-"year" #rename the first column heading as Month
  str(Molten) #checks to see whether we have a variable stored as a factor rather than numeric
  Molten$year<-as.numeric(as.character(Molten$year)) #change year from factor to numeric
  Molten$month<-as.numeric(as.character(Molten$month)) #change month from character to numeric
  ggplot(Molten, aes(x = month, y=value, group=year)) + geom_line(aes(color=year)) #generate multiple line plots by year
  
#multiple charts with incidents by month for a single year
countsmo<-ggplot(Molten, aes(month,value)) +       # we are creating a single year chart
    geom_line() +
    ggtitle("EMS Incident Calls by Month and Year") +
    xlab("Month") + ylab("# of Calls") +
    theme(plot.title = element_text(lineheight=.8, face="bold",
                                    size = 20)) +
    theme(text = element_text(size=18))
countsmo + facet_wrap(~ year, ncol=3) #the use of facet_wrap helps to repeat the single year chart across years

#stacked bar chart  of incident dispositions by year
  counts <- table(a$incident_disposition_code, a$incident_year) #creates a count of incidents by year and stores it in a new value frame
  #plot one - the bar chart with no legend
  opar = par(oma = c(0,0,0,14)) # creates large right margin for plot
  barplot(counts, xlab="Year", col=rainbow(10))
  par(opar) # Reset par
  #plot two - the legend on top of the bar chart
  opar = par(oma = c(0,0,0,0), mar = c(0,0,0,0), new = TRUE) #creates a new margin set up for the legend
  legend(x = "right", legend = rownames(counts), fill = rainbow(10), bty = "n", y.intersp = 2) #creates a legend
  par(opar) # Reset par
  
  
  
  library(lubridate)
  library(ggplot2)
  library(dplyr)
  
  #chart of incidents by month-year
  a %>% #specifies the a data frame as the reference data frame
    count(month = floor_date(a$incident_dt, "month")) %>% #creates a count of incidents by month, using the floor_date command within dplyr
    ggplot(aes(month, n)) + 
    geom_line()+
    xlab("Year") + ylab("# of incidents")
  
  #chart of incidents by month-year by borough
  a %>% #specifies the a data frame as the reference data frame
    count(boro=a$borough, month = floor_date(a$incident_dt, "month")) %>% #creates a count of incidents by month, using the floor_date command within dplyr
    ggplot(aes(month, n)) + 
    geom_line()+
    facet_wrap(~ boro, ncol = 3) +
    labs(title = "EMS Calls for Service by Month-Year",
         subtitle = "Data plotted by Borough",
         y = "Monthly Calls",
         x = "Year") + theme_bw(base_size = 15)
  
  
  #density plot of dispatch response seconds
  ggplot(a, aes(x = a$dispatch_response_seconds_qy)) +
    geom_density() +
    geom_vline(aes(xintercept = mean(a$dispatch_response_seconds_qy)), 
               linetype = "dashed", size = 0.6) +
    xlim(0,3600) #set to cap the upper display limit to one hour (3600 seconds); you can modify this as you see fit
  
  #density plot of incident_response_time_qy
  ggplot(a, aes(x = a$incident_response_seconds_qy)) +
    geom_density() +
    geom_vline(aes(xintercept = mean(a$incident_response_seconds_qy)), 
               linetype = "dashed", size = 0.6) +
    xlim(0,3600)
  
  # Change y axis to count instead of density
  ggplot(a, aes(x = a$incident_response_seconds_qy)) +
    geom_density(aes(y = ..count..), fill = "lightgray") +
    geom_vline(aes(xintercept = mean(a$incident_response_seconds_qy)), 
               linetype = "dashed", size = 0.6,
               color = "#FC4E07")
  
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
  
  
  #descriptive data analysis
  counts_dow<-table(a$dow)
  barplot(counts_dow,xlab="dow",ylab="# of incidents",col=c("red"),main="EMS incidetns by dow")
  
  
  data_month <- (a$month)
  counts <- table(data_month) #creates a count of incidents by month for 2008 and stores it in a new value frame
  counts
  barplot(counts,type="o", xlab="Month", ylab="# of Incidents", col=c("red"), main = "EMS Incidents by Month")
  
  
  a$hour<- format(strptime(a$incident_dt,"%Y-%m-%d %H:%M:%S"),"%H") 
  counts_hours<-table(a$hour)
  barplot(counts_hours,xlab="hours",ylab="# of incidents", col=c("blue"), main="ems incidents by hour")
  
  a$date<- format(strptime(a$incident_dt,"%Y-%m-%d %H:%M:%S"),"%Y-%m-%d")
  plot(counts_date,xlab="dates",ylab="# of incidents", col=c("green"), main="ems incidents by dates")
  
  #borough 
  counts_bor=table(a$borough)
  barplot(counts_bor,xlab="borough",ylab="number of calls", main="ems calls by borough",col=("blue"))
  
  
  #calls by community district
  counts_initialcalltype=table(a$communitydistrict) 
  counts_initialcalltype
  barplot(counts_initialcalltype)
  
  
  #calls by initial call type
  counts_initialcalltype=table(a$initial_call_type) 
  counts_initialcalltype
  barplot(counts_initialcalltype)
  
  #calls by final call type
  counts_finalcalltype=table(a$final_call_type)
  counts_finalcalltype
  barplot(counts_finalcalltype)
  
  #cross-tab
  counts_crosstab<-table(a$initial_severity_level_code,a$final_severity_level_code)
  counts_crosstab
  
  ggplot(a, aes(incident_responce_seconds_qy)) +
    geom_bar() +
    ylim(0,1500) +xlim(1000,5000)+
    ggtitle("Response Times") +
    ylab("# of Calls")
  
  ggplot(a, aes(dispatch_responce_seconds_qy)) +
    geom_bar() +
    ylim(0,1500) +xlim(1000,5000)+
    ggtitle("Response Times") +
    ylab("# of Calls")
  
  
  ggplot(a, aes(incident_travel_tm_seconds_qy)) +
    geom_bar() +
    ylim(0,1500) +xlim(1000,5000)+
    ggtitle("Response Times") +
    ylab("# of Calls")
  
  counts_i <- as.data.frame.matrix(table(a$borough,a$incident_response_seconds_qy)) #creates a count of incidents by year and borough and stores it in a new value frame
  
  
  setDT(counts_i, keep.rownames = TRUE)[] #to create the first row as the row names, i.e years
  colnames(counts_i)[1]<-"borough" #rename the first column heading as Borough
  
  MoltenB_i <- melt(counts_i, id.vars = "borough")
  colnames(MoltenB_i)[2]<-"incident" #rename the second column heading as year
  str(MoltenB_i) #checks to see whether we have a variable stored as a factor rather than numeric
  MoltenB_i$incident<-as.numeric(as.character(MoltenB$incident)) #change year from factor to numeric
  
  #multiple charts with incidents by year by Borough
  countsmo<-ggplot(MoltenB_i, aes(incident,value)) +       # we are creating a single year chart
    geom_line() +
    ggtitle("EMS Incident Calls by Borough and Incident response") +
    xlab("Incident response") + ylab("# of Calls") +
    xlim(0,5000) +         #sets the limit of the X axis to the years of interest, and the y-axis to between 200,000 and 450,000 calls.  Note that this removes the lines from Staten Island and Unknown categories, which fall below the 200,000 threshhold.
    theme(plot.title = element_text(lineheight=.8, face="bold",
                                    size = 20)) +
    theme(text = element_text(size=18))
  countsmo + facet_wrap(~ borough, ncol=2) #the use of facet_wrap helps to repeat the single year chart across years
  
  
  counts_d <- as.data.frame.matrix(table(a$dow,a$incident_response_seconds_qy)) #creates a count of incidents by year and borough and stores it in a new value frame
  
  
  setDT(counts_d, keep.rownames = TRUE)[] #to create the first row as the row names, i.e years
  colnames(counts_d)[1]<-"dow" #rename the first column heading as Borough
  
  MoltenB_d <- melt(counts_d, id.vars = "dow")
  colnames(MoltenB_d)[2]<-"incident" #rename the second column heading as year
  str(MoltenB_d) #checks to see whether we have a variable stored as a factor rather than numeric
  MoltenB_d$incident<-as.numeric(as.character(MoltenB_d$incident)) #change year from factor to numeric
  
  #multiple charts with incidents by year by Borough
  countsmod<-ggplot(MoltenB_d, aes(incident,value)) +       # we are creating a single year chart
    geom_line() +
    ggtitle("EMS Incident Calls by dow and Incident response") +
    xlab("Incident response") + ylab("# of Calls") +
    xlim(0,5000) +         #sets the limit of the X axis to the years of interest, and the y-axis to between 200,000 and 450,000 calls.  Note that this removes the lines from Staten Island and Unknown categories, which fall below the 200,000 threshhold.
    theme(plot.title = element_text(lineheight=.8, face="bold",
                                    size = 20)) +
    theme(text = element_text(size=18))
  countsmod + facet_wrap(~ dow, ncol=2) #the use of facet_wrap helps to repeat the single year chart across years
  
  
  
  counts_m <- as.data.frame.matrix(table(a$month,a$incident_response_seconds_qy)) #creates a count of incidents by year and borough and stores it in a new value frame
  
  
  setDT(counts_m, keep.rownames = TRUE)[] #to create the first row as the row names, i.e years
  colnames(counts_m)[1]<-"month" #rename the first column heading as Borough
  
  MoltenB_m <- melt(counts_m, id.vars = "month")
  colnames(MoltenB_m)[2]<-"incident" #rename the second column heading as year
  str(MoltenB_m) #checks to see whether we have a variable stored as a factor rather than numeric
  MoltenB_m$incident<-as.numeric(as.character(MoltenB_m$incident)) #change year from factor to numeric
  
  #multiple charts with incidents by year by Borough
  countsmon<-ggplot(MoltenB_m, aes(incident,value)) +       # we are creating a single year chart
    geom_line() +
    ggtitle("EMS Incident Calls by month and Incident response") +
    xlab("Incident response") + ylab("# of Calls") +
    xlim(0,5000) +         #sets the limit of the X axis to the years of interest, and the y-axis to between 200,000 and 450,000 calls.  Note that this removes the lines from Staten Island and Unknown categories, which fall below the 200,000 threshhold.
    theme(plot.title = element_text(lineheight=.8, face="bold",
                                    size = 20)) +
    theme(text = element_text(size=18))
  countsmon + facet_wrap(~ month, ncol=4) #the use of facet_wrap helps to repeat the single year chart across years
  
  
  counts_mt <- as.data.frame.matrix(table(a$month,a$incident_travel_tm_seconds_qy)) #creates a count of incidents by year and borough and stores it in a new value frame
  
  
  setDT(counts_mt, keep.rownames = TRUE)[] #to create the first row as the row names, i.e years
  colnames(counts_mt)[1]<-"month" #rename the first column heading as Borough
  
  MoltenB_mt <- melt(counts_mt, id.vars = "month")
  colnames(MoltenB_mt)[2]<-"incidenttravel" #rename the second column heading as year
  str(MoltenB_mt) #checks to see whether we have a variable stored as a factor rather than numeric
  MoltenB_mt$incidenttravel<-as.numeric(as.character(MoltenB_mt$incidenttravel)) #change year from factor to numeric
  
  #multiple charts with incidents by year by Borough
  countsmont<-ggplot(MoltenB_mt, aes(incidenttravel,value)) +       # we are creating a single year chart
    geom_line() +
    ggtitle("EMS Incident Calls by month and Incident responce travel time") +
    xlab("Incident response travel") + ylab("# of Calls") +
    xlim(0,5000) +         #sets the limit of the X axis to the years of interest, and the y-axis to between 200,000 and 450,000 calls.  Note that this removes the lines from Staten Island and Unknown categories, which fall below the 200,000 threshhold.
    theme(plot.title = element_text(lineheight=.8, face="bold",
                                    size = 20)) +
    theme(text = element_text(size=18))
  
  countsmont + facet_wrap(~ month, ncol=4) #the use of facet_wrap helps to repeat the single year chart across years
  
  
  library(lubridate)
  library(ggplot2)
  library(dplyr)
  
  #chart of incidents by month-year
  a %>% #specifies the a data frame as the reference data frame
    count(month = floor_date(a$incident_dt, "month")) %>% #creates a count of incidents by month, using the floor_date command within dplyr
    ggplot(aes(month, n)) + 
    geom_line()+
    xlab("Year") + ylab("# of incidents")
  
  #chart of incidents by month-year by borough
  a %>% #specifies the a data frame as the reference data frame
    count(boro=a$borough, month = floor_date(a$incident_dt, "month")) %>% #creates a count of incidents by month, using the floor_date command within dplyr
    ggplot(aes(month, n)) + 
    geom_line()+
    facet_wrap(~ boro, ncol = 3) +
    labs(title = "EMS Calls for Service by Month-Year",
         subtitle = "Data plotted by Borough",
         y = "Monthly Calls",
         x = "Year") + theme_bw(base_size = 15)
  
  
  #density plot of dispatch response seconds
  ggplot(a, aes(x = a$dispatch_response_seconds_qy)) +
    geom_density() +
    geom_vline(aes(xintercept = mean(a$dispatch_response_seconds_qy)), 
               linetype = "dashed", size = 0.6) +
    xlim(0,3600) #set to cap the upper display limit to one hour (3600 seconds); you can modify this as you see fit
  
  #density plot of incident_response_time_qy
  ggplot(a, aes(x = a$incident_response_seconds_qy)) +
    geom_density() +
    geom_vline(aes(xintercept = mean(a$incident_response_seconds_qy)), 
               linetype = "dashed", size = 0.6) +
    xlim(0,3600)
  
  # Change y axis to count instead of density
  ggplot(a, aes(x = a$incident_response_seconds_qy)) +
    geom_density(aes(y = ..count..), fill = "lightgray") +
    geom_vline(aes(xintercept = mean(a$incident_response_seconds_qy)), 
               linetype = "dashed", size = 0.6,
               color = "#FC4E07")
  
  ##########
  #Running Weather-Related Month-Year Chart for Total Precipitation
  
  library(dplyr)
  library(ggplot2)
  
  #create month category
  b$month <- floor_date(b$date_m, "month") #uses the floor_date command within dplyr
  
  #create new dataframe that stores total precipitation by month
  g <- b %>% #specifies the b data frame as the reference data frame
    group_by(month) %>% 
    summarise(precip_total = sum(PRCP))
  
  #plot that new dataframe by month and year
  ggplot(g, aes(month, precip_total)) + 
    geom_line()+
    xlab("Year") + ylab("Total Rainfall (inches)")
  
  
  