setwd("C:/Users/Silvio/Documents/UF/Research/Neonatal Health Outcomes Dr. Montoya-Williams")

#Clear existing data and graphics
rm(list=ls())
graphics.off()
#Load Hmisc library
library(Hmisc)
#Read Data
data=read.csv('UFHealthyStartScreen_DATA_2017-11-27_2105.csv')
#Setting Labels

label(data$participant_id)="Participant ID"
label(data$duplicate)="Is this a duplicate record?"
label(data$encounter_present)="Is there a birth encounter associated with this MRN in Epic?"
label(data$gest_age)="Infants gestational age (in weeks) "
label(data$weight)="Infants birth weight (in grams) "
label(data$gender)="Infant gender "
label(data$outborn)="Was the baby born at an outside hospital? (I.e. not at Shands)."
label(data$excl_criteria___1)="Does the infant have any of these issues in their problem list?  (choice=Twin)"
label(data$excl_criteria___2)="Does the infant have any of these issues in their problem list?  (choice=Gastroschisis)"
label(data$excl_criteria___3)="Does the infant have any of these issues in their problem list?  (choice=Omphalocele)"
label(data$excl_criteria___4)="Does the infant have any of these issues in their problem list?  (choice=Congenital diaphragmatic hernia)"
label(data$excl_criteria___5)="Does the infant have any of these issues in their problem list?  (choice=Congenital heart disease)"
label(data$excl_criteria___6)="Does the infant have any of these issues in their problem list?  (choice=Spina bifida)"
label(data$excl_criteria___7)="Does the infant have any of these issues in their problem list?  (choice=Meningocele)"
label(data$excl_criteria___8)="Does the infant have any of these issues in their problem list?  (choice=Myelomeningocele)"
label(data$excl_criteria___9)="Does the infant have any of these issues in their problem list?  (choice=Anencephaly)"
label(data$excl_criteria___10)="Does the infant have any of these issues in their problem list?  (choice=Encephalocele)"
label(data$excl_criteria___11)="Does the infant have any of these issues in their problem list?  (choice=None of the above issues)"
label(data$excluded)="Was infant excluded due to the presence of any of the above medical problems on their problem list? "
label(data$prenatal_visit)="Does the mother have a prenatal encounter in her medical record?"
label(data$type_prenatal___1)="If yes, what type of prenatal encounter did she have? (choice=Initial prenatal)"
label(data$type_prenatal___2)="If yes, what type of prenatal encounter did she have? (choice=Routine prenatal)"
label(data$type_prenatal___3)="If yes, what type of prenatal encounter did she have? (choice=Other)"
label(data$mat_race___1)="Maternal race   (choice=White)"
label(data$mat_race___2)="Maternal race   (choice=Black)"
label(data$mat_race___3)="Maternal race   (choice=American Indian/Alaskan Native)"
label(data$mat_race___4)="Maternal race   (choice=Asian)"
label(data$mat_race___5)="Maternal race   (choice=Pacific Islander)"
label(data$mat_race___6)="Maternal race   (choice=Other)"
label(data$mat_race___7)="Maternal race   (choice=Not found)"
label(data$mat_ethnic___1)="Maternal ethnicity  (choice=Hispanic)"
label(data$mat_ethnic___2)="Maternal ethnicity  (choice=non-Hispanic)"
label(data$mat_ethnic___3)="Maternal ethnicity  (choice=not specified)"
label(data$mat_ethnic___4)="Maternal ethnicity  (choice=other)"
label(data$mat_age)="Maternal age (years, from L&D encounter, not current) "
label(data$mat_med_risk___1)="Maternal medical risk factors  (choice=None listed)"
label(data$mat_med_risk___2)="Maternal medical risk factors  (choice=Premature rupture of membranes)"
label(data$mat_med_risk___3)="Maternal medical risk factors  (choice=Chorioamnionitis)"
label(data$mat_med_risk___4)="Maternal medical risk factors  (choice=Preterm labor)"
label(data$mat_med_risk___5)="Maternal medical risk factors  (choice=Intrauterine growth restriction)"
label(data$mat_med_risk___6)="Maternal medical risk factors  (choice=Placental abruption)"
label(data$mat_med_risk___7)="Maternal medical risk factors  (choice=Oligohydramnios)"
label(data$mat_med_risk___8)="Maternal medical risk factors  (choice=Polyhydramnios)"
label(data$mat_med_risk___9)="Maternal medical risk factors  (choice=Tobacco use during pregnancy)"
label(data$mat_med_risk___10)="Maternal medical risk factors  (choice=Alcohol use during pregnancy)"
label(data$mat_med_risk___11)="Maternal medical risk factors  (choice=Preeclampsia)"
label(data$mat_med_risk___12)="Maternal medical risk factors  (choice=Placenta previa)"
label(data$mat_med_risk___13)="Maternal medical risk factors  (choice=Placenta accreta)"
label(data$mat_med_risk___14)="Maternal medical risk factors  (choice=Placenta percreta)"
label(data$hs_present)="Healthy Start form present? "
label(data$hs_grad_hs)="Question 1: Have you graduated from high school or received a GED? "
label(data$hs_married)="Question 2: Are you married now? "
label(data$hs_child_under_5)="Question 3: Are there any children at home younger than 5 years old? "
label(data$hs_special_needs_child)="Question 4: Are there any children at home with medical or special needs? "
label(data$hs_good_time_preg)="Question 5: Is this a good time for you to be pregnant? "
label(data$hs_depression)="Question 6: In the last month, have you felt down, depressed or hopeless? "
label(data$hs_felt_alone)="Question 7: In the last month, have you felt alone when facing problems? "
label(data$hs_mental_services)="Question 8: Have you ever received mental health services or counseling?  "
label(data$hs_threat_or_hurt)="Question 9: In the last year, has someone you know tried to hurt you or threaten you? "
label(data$hs_trouble_bills)="Question 10: Do you have trouble paying your bills? "
label(data$hs_race___1)="Question 11: What race are you?  (choice=White)"
label(data$hs_race___2)="Question 11: What race are you?  (choice=Black)"
label(data$hs_race___3)="Question 11: What race are you?  (choice=Other)"
label(data$hs_race___4)="Question 11: What race are you?  (choice=Did not answer)"
label(data$hs_preg_desire)="Question 14: Thinking back to just before you got pregnant, did you want to be...? "
label(data$hs_first_preg)="Question 15: Is this your first pregnancy? "
label(data$hs_nicu_risk___1)="Question 16: Please mark any of the following that happened:  (choice=Had a baby that was not born alive)"
label(data$hs_nicu_risk___2)="Question 16: Please mark any of the following that happened:  (choice=Had a baby born 3 weeks or more before due date)"
label(data$hs_nicu_risk___3)="Question 16: Please mark any of the following that happened:  (choice=Had a baby that weighed less than 5 lbs, 8z)"
label(data$hs_nicu_risk___4)="Question 16: Please mark any of the following that happened:  (choice=None of the above)"
label(data$hs_nicu_risk___5)="Question 16: Please mark any of the following that happened:  (choice=Did not check any box)"
label(data$hs_mat_age)="Question 17. Maternal age "
label(data$hs_insurance___1)="Prenatal care covered by whom?  (choice=Medicaid)"
label(data$hs_insurance___2)="Prenatal care covered by whom?  (choice=Private)"
label(data$hs_insurance___3)="Prenatal care covered by whom?  (choice=none)"
label(data$hs_insurance___4)="Prenatal care covered by whom?  (choice=Other)"
label(data$hs_insurance___5)="Prenatal care covered by whom?  (choice=Did not answer)"
label(data$particip_desire)="Did the patient indicate with a signature that they did not want to participate in the screening process?"
label(data$hs_pre_preg_weight)="Mothers Weight Before Pregnancy (in lbs)"
label(data$hs_height_ft)="Mothers Height (feet amount) "
label(data$hs_mat_bmi)="Maternal BMI "
label(data$hs_preg_interv)="Question 19. Pregnancy interval less than 18 months? "
label(data$trim_prenatal)="Question 20: Trimester at first prenatal visit?"
label(data$hs_mat_illness)="Question 21. Does patient have an illness that requires ongoing medical care? "
label(data$hs_score)="Healthy Start Screening score "
label(data$hs_referral)="Referred to Healthy Start? "
label(data$illegible)="Were there any items on the Healthy Start form that were not legible due to the quality of scanning?"
label(data$healthy_start_data_collection_tool_complete)="Complete?"
#Setting Units


#Setting Factors(will create new variable for factors)
data$duplicate.factor = factor(data$duplicate,levels=c("1","0"))
data$encounter_present.factor = factor(data$encounter_present,levels=c("1","0"))
data$gender.factor = factor(data$gender,levels=c("1","2","3"))
data$outborn.factor = factor(data$outborn,levels=c("1","0"))
data$excl_criteria___1.factor = factor(data$excl_criteria___1,levels=c("0","1"))
data$excl_criteria___2.factor = factor(data$excl_criteria___2,levels=c("0","1"))
data$excl_criteria___3.factor = factor(data$excl_criteria___3,levels=c("0","1"))
data$excl_criteria___4.factor = factor(data$excl_criteria___4,levels=c("0","1"))
data$excl_criteria___5.factor = factor(data$excl_criteria___5,levels=c("0","1"))
data$excl_criteria___6.factor = factor(data$excl_criteria___6,levels=c("0","1"))
data$excl_criteria___7.factor = factor(data$excl_criteria___7,levels=c("0","1"))
data$excl_criteria___8.factor = factor(data$excl_criteria___8,levels=c("0","1"))
data$excl_criteria___9.factor = factor(data$excl_criteria___9,levels=c("0","1"))
data$excl_criteria___10.factor = factor(data$excl_criteria___10,levels=c("0","1"))
data$excl_criteria___11.factor = factor(data$excl_criteria___11,levels=c("0","1"))
data$excluded.factor = factor(data$excluded,levels=c("1","0"))
data$prenatal_visit.factor = factor(data$prenatal_visit,levels=c("1","0"))
data$type_prenatal___1.factor = factor(data$type_prenatal___1,levels=c("0","1"))
data$type_prenatal___2.factor = factor(data$type_prenatal___2,levels=c("0","1"))
data$type_prenatal___3.factor = factor(data$type_prenatal___3,levels=c("0","1"))
data$mat_race___1.factor = factor(data$mat_race___1,levels=c("0","1"))
data$mat_race___2.factor = factor(data$mat_race___2,levels=c("0","1"))
data$mat_race___3.factor = factor(data$mat_race___3,levels=c("0","1"))
data$mat_race___4.factor = factor(data$mat_race___4,levels=c("0","1"))
data$mat_race___5.factor = factor(data$mat_race___5,levels=c("0","1"))
data$mat_race___6.factor = factor(data$mat_race___6,levels=c("0","1"))
data$mat_race___7.factor = factor(data$mat_race___7,levels=c("0","1"))
data$mat_ethnic___1.factor = factor(data$mat_ethnic___1,levels=c("0","1"))
data$mat_ethnic___2.factor = factor(data$mat_ethnic___2,levels=c("0","1"))
data$mat_ethnic___3.factor = factor(data$mat_ethnic___3,levels=c("0","1"))
data$mat_ethnic___4.factor = factor(data$mat_ethnic___4,levels=c("0","1"))
data$mat_med_risk___1.factor = factor(data$mat_med_risk___1,levels=c("0","1"))
data$mat_med_risk___2.factor = factor(data$mat_med_risk___2,levels=c("0","1"))
data$mat_med_risk___3.factor = factor(data$mat_med_risk___3,levels=c("0","1"))
data$mat_med_risk___4.factor = factor(data$mat_med_risk___4,levels=c("0","1"))
data$mat_med_risk___5.factor = factor(data$mat_med_risk___5,levels=c("0","1"))
data$mat_med_risk___6.factor = factor(data$mat_med_risk___6,levels=c("0","1"))
data$mat_med_risk___7.factor = factor(data$mat_med_risk___7,levels=c("0","1"))
data$mat_med_risk___8.factor = factor(data$mat_med_risk___8,levels=c("0","1"))
data$mat_med_risk___9.factor = factor(data$mat_med_risk___9,levels=c("0","1"))
data$mat_med_risk___10.factor = factor(data$mat_med_risk___10,levels=c("0","1"))
data$mat_med_risk___11.factor = factor(data$mat_med_risk___11,levels=c("0","1"))
data$mat_med_risk___12.factor = factor(data$mat_med_risk___12,levels=c("0","1"))
data$mat_med_risk___13.factor = factor(data$mat_med_risk___13,levels=c("0","1"))
data$mat_med_risk___14.factor = factor(data$mat_med_risk___14,levels=c("0","1"))
data$hs_present.factor = factor(data$hs_present,levels=c("1","0"))
data$hs_grad_hs.factor = factor(data$hs_grad_hs,levels=c("1","2","3"))
data$hs_married.factor = factor(data$hs_married,levels=c("1","2","3"))
data$hs_child_under_5.factor = factor(data$hs_child_under_5,levels=c("1","2","3"))
data$hs_special_needs_child.factor = factor(data$hs_special_needs_child,levels=c("1","2","3"))
data$hs_good_time_preg.factor = factor(data$hs_good_time_preg,levels=c("1","2","3"))
data$hs_depression.factor = factor(data$hs_depression,levels=c("1","2","3"))
data$hs_felt_alone.factor = factor(data$hs_felt_alone,levels=c("1","2","3"))
data$hs_mental_services.factor = factor(data$hs_mental_services,levels=c("1","2","3"))
data$hs_threat_or_hurt.factor = factor(data$hs_threat_or_hurt,levels=c("1","2","3"))
data$hs_trouble_bills.factor = factor(data$hs_trouble_bills,levels=c("1","2","3"))
data$hs_race___1.factor = factor(data$hs_race___1,levels=c("0","1"))
data$hs_race___2.factor = factor(data$hs_race___2,levels=c("0","1"))
data$hs_race___3.factor = factor(data$hs_race___3,levels=c("0","1"))
data$hs_race___4.factor = factor(data$hs_race___4,levels=c("0","1"))
data$hs_preg_desire.factor = factor(data$hs_preg_desire,levels=c("1","2","3","4"))
data$hs_first_preg.factor = factor(data$hs_first_preg,levels=c("1","2","3"))
data$hs_nicu_risk___1.factor = factor(data$hs_nicu_risk___1,levels=c("0","1"))
data$hs_nicu_risk___2.factor = factor(data$hs_nicu_risk___2,levels=c("0","1"))
data$hs_nicu_risk___3.factor = factor(data$hs_nicu_risk___3,levels=c("0","1"))
data$hs_nicu_risk___4.factor = factor(data$hs_nicu_risk___4,levels=c("0","1"))
data$hs_nicu_risk___5.factor = factor(data$hs_nicu_risk___5,levels=c("0","1"))
data$hs_insurance___1.factor = factor(data$hs_insurance___1,levels=c("0","1"))
data$hs_insurance___2.factor = factor(data$hs_insurance___2,levels=c("0","1"))
data$hs_insurance___3.factor = factor(data$hs_insurance___3,levels=c("0","1"))
data$hs_insurance___4.factor = factor(data$hs_insurance___4,levels=c("0","1"))
data$hs_insurance___5.factor = factor(data$hs_insurance___5,levels=c("0","1"))
data$particip_desire.factor = factor(data$particip_desire,levels=c("1","0"))
data$hs_preg_interv.factor = factor(data$hs_preg_interv,levels=c("1","2","3","4"))
data$trim_prenatal.factor = factor(data$trim_prenatal,levels=c("1","2","3","4","5"))
data$hs_mat_illness.factor = factor(data$hs_mat_illness,levels=c("1","2","3"))
data$hs_referral.factor = factor(data$hs_referral,levels=c("1","2","3"))
data$illegible.factor = factor(data$illegible,levels=c("1","0"))
data$healthy_start_data_collection_tool_complete.factor = factor(data$healthy_start_data_collection_tool_complete,levels=c("0","1","2"))

levels(data$duplicate.factor)=c("Yes","No")
levels(data$encounter_present.factor)=c("Yes","No")
levels(data$gender.factor)=c("Male","Female","Ambiguous")
levels(data$outborn.factor)=c("Yes","No")
levels(data$excl_criteria___1.factor)=c("Unchecked","Checked")
levels(data$excl_criteria___2.factor)=c("Unchecked","Checked")
levels(data$excl_criteria___3.factor)=c("Unchecked","Checked")
levels(data$excl_criteria___4.factor)=c("Unchecked","Checked")
levels(data$excl_criteria___5.factor)=c("Unchecked","Checked")
levels(data$excl_criteria___6.factor)=c("Unchecked","Checked")
levels(data$excl_criteria___7.factor)=c("Unchecked","Checked")
levels(data$excl_criteria___8.factor)=c("Unchecked","Checked")
levels(data$excl_criteria___9.factor)=c("Unchecked","Checked")
levels(data$excl_criteria___10.factor)=c("Unchecked","Checked")
levels(data$excl_criteria___11.factor)=c("Unchecked","Checked")
levels(data$excluded.factor)=c("Yes","No")
levels(data$prenatal_visit.factor)=c("Yes","No")
levels(data$type_prenatal___1.factor)=c("Unchecked","Checked")
levels(data$type_prenatal___2.factor)=c("Unchecked","Checked")
levels(data$type_prenatal___3.factor)=c("Unchecked","Checked")
levels(data$mat_race___1.factor)=c("Unchecked","Checked")
levels(data$mat_race___2.factor)=c("Unchecked","Checked")
levels(data$mat_race___3.factor)=c("Unchecked","Checked")
levels(data$mat_race___4.factor)=c("Unchecked","Checked")
levels(data$mat_race___5.factor)=c("Unchecked","Checked")
levels(data$mat_race___6.factor)=c("Unchecked","Checked")
levels(data$mat_race___7.factor)=c("Unchecked","Checked")
levels(data$mat_ethnic___1.factor)=c("Unchecked","Checked")
levels(data$mat_ethnic___2.factor)=c("Unchecked","Checked")
levels(data$mat_ethnic___3.factor)=c("Unchecked","Checked")
levels(data$mat_ethnic___4.factor)=c("Unchecked","Checked")
levels(data$mat_med_risk___1.factor)=c("Unchecked","Checked")
levels(data$mat_med_risk___2.factor)=c("Unchecked","Checked")
levels(data$mat_med_risk___3.factor)=c("Unchecked","Checked")
levels(data$mat_med_risk___4.factor)=c("Unchecked","Checked")
levels(data$mat_med_risk___5.factor)=c("Unchecked","Checked")
levels(data$mat_med_risk___6.factor)=c("Unchecked","Checked")
levels(data$mat_med_risk___7.factor)=c("Unchecked","Checked")
levels(data$mat_med_risk___8.factor)=c("Unchecked","Checked")
levels(data$mat_med_risk___9.factor)=c("Unchecked","Checked")
levels(data$mat_med_risk___10.factor)=c("Unchecked","Checked")
levels(data$mat_med_risk___11.factor)=c("Unchecked","Checked")
levels(data$mat_med_risk___12.factor)=c("Unchecked","Checked")
levels(data$mat_med_risk___13.factor)=c("Unchecked","Checked")
levels(data$mat_med_risk___14.factor)=c("Unchecked","Checked")
levels(data$hs_present.factor)=c("Yes","No")
levels(data$hs_grad_hs.factor)=c("Yes","No","Did not answer")
levels(data$hs_married.factor)=c("Yes","No","Did not answer")
levels(data$hs_child_under_5.factor)=c("Yes","No","Did not answer")
levels(data$hs_special_needs_child.factor)=c("Yes","No","Did not answer")
levels(data$hs_good_time_preg.factor)=c("Yes","No","Did not answer")
levels(data$hs_depression.factor)=c("Yes","No","Did not answer")
levels(data$hs_felt_alone.factor)=c("Yes","No","Did not answer")
levels(data$hs_mental_services.factor)=c("Yes","No","Did not answer")
levels(data$hs_threat_or_hurt.factor)=c("Yes","No","Did not answer")
levels(data$hs_trouble_bills.factor)=c("Yes","No","Did not answer")
levels(data$hs_race___1.factor)=c("Unchecked","Checked")
levels(data$hs_race___2.factor)=c("Unchecked","Checked")
levels(data$hs_race___3.factor)=c("Unchecked","Checked")
levels(data$hs_race___4.factor)=c("Unchecked","Checked")
levels(data$hs_preg_desire.factor)=c("Pregnant now","pregnant later","not pregnant","Did not answer")
levels(data$hs_first_preg.factor)=c("Yes","No","Did not answer")
levels(data$hs_nicu_risk___1.factor)=c("Unchecked","Checked")
levels(data$hs_nicu_risk___2.factor)=c("Unchecked","Checked")
levels(data$hs_nicu_risk___3.factor)=c("Unchecked","Checked")
levels(data$hs_nicu_risk___4.factor)=c("Unchecked","Checked")
levels(data$hs_nicu_risk___5.factor)=c("Unchecked","Checked")
levels(data$hs_insurance___1.factor)=c("Unchecked","Checked")
levels(data$hs_insurance___2.factor)=c("Unchecked","Checked")
levels(data$hs_insurance___3.factor)=c("Unchecked","Checked")
levels(data$hs_insurance___4.factor)=c("Unchecked","Checked")
levels(data$hs_insurance___5.factor)=c("Unchecked","Checked")
levels(data$particip_desire.factor)=c("Yes","No")
levels(data$hs_preg_interv.factor)=c("Yes","No","N/a","Did not answer")
levels(data$trim_prenatal.factor)=c("1st","2nd","3rd","Not answered","Cannot read")
levels(data$hs_mat_illness.factor)=c("Yes","No","Did not answer")
levels(data$hs_referral.factor)=c("Referred to Healthy Start","Not referred to Healthy Start","Not filled out")
levels(data$illegible.factor)=c("Yes","No")
levels(data$healthy_start_data_collection_tool_complete.factor)=c("Incomplete","Unverified","Complete")
View(data)

length(data$participant_id)
##################################################################
#DETERMINING HOW MANY BABIES IN EACH GROUP with exclusion criteria!
##Creating subsets for each group: controls, low birth, preterm low weight, etc.

#(Subset function Excludes NA's automatically)
control_subset=subset(data,gest_age>=37&weight>=2500&excluded==0
          &outborn==0&duplicate==0&hs_present==1)
lbw_subset=subset(data,data$gest_age>=37&data$weight<2500&data$excluded==0
                  &data$outborn==0&data$duplicate==0&hs_present==1)
preterm_subset=subset(data,data$gest_age<37&data$excluded==0&data$outborn==0
                      &data$duplicate==0&hs_present==1)
cohort=rbind(control_subset,lbw_subset,preterm_subset)

####
#Multiple lengths function
multlengths=function(w,x,y,z){
  return(c(length(which(w==1)),length(which(x==1)),length(which(y==1)),
           length(which(z==1))))}
#######################################################################
#TABLE 1 creation
#SIZES
#Controls
c_size=length(control_subset$participant_id);c_size#242 babies, controls
#Low birth weights
lbw_size=length(lbw_subset$participant_id);lbw_size#5 babies, lbw's
#Preterms, low weights
ptb_size=length(preterm_subset$participant_id);ptb_size#32 all preterms
cohort_size=length(cohort$participant_id);cohort_size#279 total in cohort, hs present

371+6+80
##Function mean, sd , median
mm=function(a,b,c,d){
  return(c(mean(a),sd(a,na.rm=T),median(a,na.rm=T),
           mean(b),sd(b),median(b,na.rm=T),
           mean(c),sd(c),median(c,na.rm=T),
           mean(d,na.rm=T),sd(d,na.rm=T),median(d,na.rm=T)))}


#WEIGHT
mm(control_subset$weight,preterm_subset$weight,lbw_subset$weight,cohort$weight)
#Controls: 3368.3920  416.2138 3325.0000
#Preterm: 1722.7831  808.2411 1695.0000
#LBW: 2372.0000  129.6102 2411.0000
#Cohort:  3068.4486  810.6114 3230.0000

#GEST AGE
mm(control_subset$gest_age,preterm_subset$gest_age,lbw_subset$gest_age,cohort$gest_age)
#Controls: 39.0746667  1.1607546 39.0000000
#Preterm: 30.8313253  3.8912638 32.0000000
#LBW: 37.3333333 0.8164966 37.0000000
#Cohort: 37.6083151  3.7000736 39.0000000

#GENDER
#1 is male, 2 is female
length(which(control_subset$gender==2))/length(control_subset$participant_id)#.46 male,.55 female
length(which(preterm_subset$gender==2))/length(preterm_subset$participant_id)#.56 male, .43 Female
length(which(lbw_subset$gender==2))/length(lbw_subset$participant_id)#.5 male,.5 female
length(which(cohort$gender==1))/cohort_size#.47

g_control_a=length(which(control_subset$gender==1))
g_preterm_b=length(which(preterm_subset$gender==1))
g_control_c=length(which(control_subset$gender==2))
g_preterm_d=length(which(preterm_subset$gender==2))

g_lbw_b=length(which(lbw_subset$gender==1))
g_lbw_d=length(which(lbw_subset$gender==1))

g_cohort_b=length(which(cohort$gender==1))
g_cohort_d=length(which(cohort$gender==1))

#RACE

#CONTROLS
#White, .59
length(which(control_subset$mat_race___1==1))/c_size
r_control_a=length(which(control_subset$hs_race___1==1))
r_control_c=length(which(control_subset$hs_race___1==0))
#Black, .252
length(which(control_subset$mat_race___2==1))/c_size
r_controlblack_a=length(which(control_subset$hs_race___2==1))
r_controlblack_c=length(which(control_subset$hs_race___2==0))
#Other, .103
length(which(control_subset$mat_race___6==1))/c_size
r_controlother_a=length(which(control_subset$hs_race___3==1))
r_controlother_c=length(which(control_subset$hs_race___3==0))
#Did not answer,6 did not answer--LOOK AT THIS AGAIN, CONSIDER THIS VARIABLE
#control for it?
#,.019
length(which(control_subset$hs_race___4==1))/length(control_subset$participant_id)
r_controldna_a=length(which(control_subset$hs_race___4==1))
r_controldna_c=length(which(control_subset$hs_race___4==0))

multlengths(control_subset$hs_race___1,control_subset$hs_race___2,
            control_subset$hs_race___3,
            control_subset$hs_race___4)

#PRETERMS
multlengths(preterm_subset$hs_race___1,preterm_subset$hs_race___2,
            preterm_subset$hs_race___3,
            preterm_subset$hs_race___4)

multlengths(preterm_subset$mat_race___1,preterm_subset$mat_race___2,
            preterm_subset$mat_race___4,
            preterm_subset$mat_race___6)

#White, .53
17/ptb_size
r_preterm_a=18
r_preterm_c=ptb_size-r_preterm_b;r_preterm_d
#Black, .375
12/ptb_size
r_pretermblack_b=13
r_pretermblack_d=ptb_size-r_pretermblack_b;r_pretermblack_d
#Other, .05
4/ptb_size
r_pretermother_b=4
r_pretermother_d=ptb_size- r_pretermother_b
#Did not answer, 0%
r_pretermdna_b=0
r_pretermdna_d=ptb_size

#LBW's
multlengths(lbw_subset$hs_race___1,lbw_subset$hs_race___2,
            lbw_subset$hs_race___3,
            lbw_subset$hs_race___4)

multlengths(lbw_subset$mat_race___1,lbw_subset$mat_race___2,
            lbw_subset$mat_race___3,
            lbw_subset$mat_race___4)
#White, .17
1/lbw_size
r_lbw_a=1
r_lbw_c=lbw_size-r_lbw_b;r_lbw_d
#Black, .50
3/lbw_size
r_lbwblack_b=3
r_lbwblack_d=lbw_size-r_lbwblack_b
#Other, .33
2/lbw_size
r_lbwother_b=2
r_lbwother_d=lbw_size-r_lbwother_b
#Did not answer, 0%
r_lbwdna_b=0
r_lbwdna_d=lbw_size

#COHORT
multlengths(cohort$hs_race___1,cohort$hs_race___2,
            cohort$hs_race___3,
            cohort$hs_race___4)
#White, .33
153/cohort_size
r_cohort_a=153
r_cohort_c=cohort_size-r_cohort_b;r_cohort_d
#Black, .16
74/cohort_size
r_cohortblack_b=74
r_cohortblack_d=cohort_size-r_cohortblack_b
#Other, .11
50/cohort_size
r_cohortother_b=50
r_cohortother_d=cohort_size-r_cohortother_b
#Did not answer, .015
7/cohort_size
r_cohortdna_b=7
r_cohortdna_d=cohort_size-r_cohortdna_b

#ETHNICITY, % Hispanic
multlengths(cohort$mat_ethnic___1,control_subset$mat_ethnic___1,
            preterm_subset$mat_ethnic___1,lbw_subset$mat_ethnic___1)
#Cohort, .12
33/cohort_size
e_cohort_b=59
e_cohort_d=cohort_size-e_cohort_b
#Controls, .13
31/c_size
e_control_a=52
e_control_c=c_size-e_control_a
#Preterms, .031
1/ptb_size
e_preterm_b=6
e_preterm_d=ptb_size-e_preterm_b
#LBW's, .17
1/lbw_size
e_lbw_b=1
e_lbw_d=lbw_size-e_lbw_b

length(which(cohort$mat_race___3==1))
#CONTROLS
#Hispanic,.14
length(which(control_subset$mat_ethnic___1==1))/length(control_subset$participant_id)

#Non-Hispanic, .84
length(which(control_subset$mat_ethnic___2==1))/length(control_subset$participant_id)

#Did not answer, .008
length(which(control_subset$mat_ethnic___3==1))/length(control_subset$participant_id)

#Other, .01 
length(which(control_subset$mat_ethnic___4==1))/length(control_subset$participant_id)


#MATERNAL AGE 
mm(control_subset$mat_age,preterm_subset$mat_age,lbw_subset$mat_age,cohort$mat_age)
#Control:  27.723861  5.730638 27.000000
#Preterm: 26.927711  6.316419 26.000000
#LBW: 25.833333  5.810909 24.000000
#Cohort: 27.593407  5.850144 27.000000

#Check: how many aren't NA values
length(which(is.na(preterm_subset$mat_age)==F))#83 NA
length(which(is.na(lbw_subset$mat_age)==F))#6
length(which(is.na(control_subset$mat_age)==F))#333

#% HS form in cohort
#Proportion of HS form present
#Multiple lengths function for 0 or 1
#1 is yes


multlengths(control_subset$hs_present,lbw_subset$hs_present,
            preterm_subset$hs_present,cohort$hs_present)

#Control
242/length(control_subset$participant_id)#.65 HS form present
hs_control_a=242
hs_control_c=c_size-hs_control_a
#LBW
5/length(lbw_subset$participant_id)#.83
hs_lbw_b=5
hs_lbw_d=lbw_size-hs_lbw_b
#Preterm
32/length(preterm_subset$participant_id)#.4 HS form present
hs_preterm_b=32
hs_preterm_d=ptb_size-hs_preterm_b
#Cohort
279/cohort_size#.61
hs_cohort_b=279
hs_cohort_d=cohort_size-hs_cohort_b
###############################################################
#MATERNAL MEDICAL RISK FACTORS
#0 is has a medical risk factor for question 1
#1 is no risk factor
grep("^mat_med_risk___2$",colnames(data))
grep("^mat_med_risk___14$",colnames(data))
medriskfactor=length(which(data[,37:49]==1));medriskfactor
#154 manually, have risk factors
#not sure why below code, utilizing question of none of the above issues 
#double negative doesn't work?
length(which(preterm_subset$mat_med_risk___1==0))
length(which(lbw_subset$mat_med_risk___1==0))
length(which(control_subset$mat_med_risk___1==0))
81+45+2

multlengths(preterm_subset[,37:49],lbw_subset[,37:49],control_subset[,37:49],cohort[37:49])
#% with medical risk factor
#Preterm, .71
57/ptb_size
mr_preterm_b=57
mr_preterm_d=ptb_size-mr_preterm_b
#LBW, .33
2/lbw_size
mr_lbw_b=2
mr_lbw_d=lbw_size-mr_lbw_b
#Control, .24
88/length(control_subset$participant_id)
mr_control_a=88
mr_control_c=c_size-mr_control_a
#Cohort, .32
147/cohort_size
mr_cohort_b=147
mr_cohort_d=cohort_size-mr_cohort_b
88+57+2
#Total included minus total in cohort
length(data$participant_id)-457

length(which(data$duplicate==1))#11
length(which(data$encounter_present==0))#454
length(which(data$outborn==1))#75
length(which(data$excluded==1))#88
length(which(cohort$prenatal_visit==1))#372, those with prenatal visit in cohort

554-466

length(cohort$participant_id)

View(cohort)

#Diana: no birth encounter, outborn, twin/congenital anamoly (excluded)
454+75+95
#370 with mat risk factors

#REDCAP:
#332 with no risk out of 452
#172 with risk factors (counted manually)
###############################################################
#P-values for table 1
class(Table1Data)

#Birthweight
t.test(control_subset$weight,preterm_subset$weight,alternative="two.sided")
#p-value <2.2e-16
t.test(control_subset$weight,lbw_subset$weight,alternative="two.sided")
#p-value = 6.546e-07
t.test(control_subset$weight,cohort$weight,alternative="two.sided")
#p-value = 1.031e-11

#Gestational age
t.test(control_subset$gest_age,preterm_subset$gest_age,alternative="two.sided")
#p-value <2.2e-16
t.test(control_subset$gest_age,lbw_subset$gest_age,alternative="two.sided")
#p-value = 0.002955
t.test(control_subset$gest_age,cohort$gest_age,alternative="two.sided")
# p-value = 4.961e-15

#Gender
g_df=data.frame(control=c(g_control_a,g_control_c),preterm=c(g_cohort_b,g_cohort_d))
chisq.test(g_df)
#control vs preterm, may not be significant p-value=.1064
#vs lbw, p-value = 1, not significant
#Vs cohort,  p-value = 0.2347, not significant

#Maternal age
t.test(control_subset$mat_age,preterm_subset$mat_age,alternative="two.sided")
# p-value = 0.2839
t.test(control_subset$mat_age,lbw_subset$mat_age,alternative="two.sided")
#p-value = 0.455
t.test(control_subset$mat_age,cohort$mat_age,alternative="two.sided")
# p-value = 0.6739

#Race
r_df=data.frame(control=c(r_controldna_a,r_controldna_c),
                variable=c(r_cohortdna_b,r_cohortdna_d))
chisq.test(r_df)

#WHITES
#.02733, significant btw healthy and preterm
#p-value = 0.5777, not significant (vs lbw)
#p-value = 0.4714, not significant (vs. cohort)

#BLACKS
#p-value = 1 for preterm
#p-value = 0.08748 for lbw , may be significant
#p-value = 0.902 for cohort, not significant

#OTHER
#p-value = 0.1086, for preterm , may be trending towards significance
# p-value = 0.3343, for lbw, not significant
# p-value = 0.7609, for cohort, not significant

#DNA, did not answer
#p-value = 0.4595 for preterm
#p-value = 1 for lbw
#p-value = 0.9021 for cohort


###
#Ethnicity, Hispanic
ethnicity_df=data.frame(control=c(e_control_a,e_control_c),
                variable=c(e_cohort_b,e_cohort_d))
chisq.test(ethnicity_df)

#Preterm, p-value = 0.163
#LBW,  p-value = 1
#Cohort,  p-value = 0.7174

#%HS present
HS_df=data.frame(control=c(hs_control_a,hs_control_c),
                 variable=c(hs_cohort_b,hs_cohort_d))
chisq.test(HS_df)

#Preterm, p-value = 4.799e-05
#LBW, p-value = 0.6223
#cohort, p-value = 0.2438

#%Maternal medical risk factor (mr)
MR_df=data.frame(control=c(mr_control_a,mr_control_c),
                 variable=c(mr_cohort_b,mr_cohort_d))
chisq.test(MR_df)

#PReterm, p-value = 4.526e-16
#LBW,p-value = 0.9479
#cohort, p-value = 0.00923








