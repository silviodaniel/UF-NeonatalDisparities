setwd("C:/Users/Silvio/Documents/UF/Research/Neonatal Health Outcomes Dr. Montoya-Williams")

#Clear existing data and graphics
rm(list=ls())
graphics.off()
#Load Hmisc library
library(Hmisc)
#Read Data
data=read.csv('UFHealthyStartScreen_DATA_2017-12-19_1742.csv')
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
          &outborn==0&duplicate==0)
lbw_subset=subset(data,data$gest_age>=37&data$weight<2500&data$excluded==0
                  &data$outborn==0&data$duplicate==0)
preterm_subset=subset(data,data$gest_age<37&data$excluded==0&data$outborn==0
                      &data$duplicate==0)
cohort=rbind(control_subset,lbw_subset,preterm_subset)
adverse_subset=rbind(lbw_subset,preterm_subset)
#SIZES
#Controls
c_size=length(control_subset$participant_id);c_size#242 babies, controls
#Low birth weights
adverse_subset_size=length(adverse_subset$participant_id);adverse_subset_size
#37 babies, lbw OR preterm
cohort_size=length(cohort$participant_id);cohort_size
#279 total in cohort, hs present

####
#Multiple lengths function
#Not sure how to do this assigning new variables
# a=NA
# b=NULL
# c=NULL
# d=NULL
# multlengths=function(w,x,y,z){
#   a=length(which(w==1));b=length(which(x==1));c=length(which(y==1));
#            d=length(which(z==1))}

multlengths=function(w,x,y,z){
  return(c(length(which(w==1)),length(which(x==1)),length(which(y==1)),
           length(which(z==1))))}
#######################################################################
#TABLE 1 creation
##Function mean, sd , median
mm=function(a,b,c){
  return(c(mean(a),sd(a,na.rm=T),median(a,na.rm=T),
           mean(b),sd(b,na.rm=T),median(b,na.rm=T),
           mean(c),sd(c,na.rm = T),median(c,na.rm=T)
           ))}
#######################################################################
#VALUES WRITTEN IN NOTES BELOW NOT CORRECT ANYMORE, IMPORTANT!!
####################################################################
#BIRTH WEIGHT
mm(control_subset$weight,adverse_subset$weight,cohort$weight)
#Controls: 3368.3920  416.2138 3325.0000
#Preterm: 1722.7831  808.2411 1695.0000
#LBW: 2372.0000  129.6102 2411.0000
#Cohort:  3068.4486  810.6114 3230.0000

#Birthweight tests
t.test(control_subset$weight,adverse_subset$weight,alternative="two.sided")
#p-value <2.2e-16
t.test(control_subset$weight,cohort$weight,alternative="two.sided")
#############################################################################
#GEST AGE
mm(control_subset$gest_age,adverse_subset$gest_age,cohort$gest_age)
#Controls: 39.0746667  1.1607546 39.0000000
#Preterm: 30.8313253  3.8912638 32.0000000
#LBW: 37.3333333 0.8164966 37.0000000
#Cohort: 37.6083151  3.7000736 39.0000000

#tests
t.test(control_subset$gest_age,adverse_subset$gest_age,alternative="two.sided")
#p-value <2.2e-16
t.test(control_subset$gest_age,cohort$gest_age,alternative="two.sided")
# p-value = 4.961e-15

##############################################################
#GENDER
#1 is male, 2 is female
#percent male

#Tests
g_control_a=length(which(control_subset$gender==1));g_control_a
g_adverse_b=length(which(adverse_subset$gender==1));g_adverse_b
g_control_c=length(which(control_subset$gender==2))
g_adverse_d=length(which(adverse_subset$gender==2))


#For adverse vs control
g_df=data.frame(control=c(g_control_a,g_control_c),
                adverse=c(g_adverse_b,g_adverse_d))
chisq.test(g_df)#Not significant for gender

# g_cohort_b=length(which(cohort$gender==1))
# g_cohort_d=length(which(cohort$gender==2))
# g_cohort_b+g_cohort_d
#For cohort vs control
g_df=data.frame(control=c(g_control_a,g_control_c),cohort=c(g_cohort_b,g_cohort_d))
chisq.test(g_df)#not significant

#Percentages for gender
g_control_a/c_size#.45 male
g_adverse_b/adverse_subset_size#.57 male
g_cohort_b/cohort_size#.47 male

##################################################################
#MATERNAL AGE 

mm(control_subset$mat_age,adverse_subset$mat_age,cohort$mat_age)
#Control:  27.723861  5.730638 27.000000
#Preterm: 26.927711  6.316419 26.000000
#LBW: 25.833333  5.810909 24.000000
#Cohort: 27.593407  5.850144 27.000000

#tests
t.test(control_subset$mat_age,adverse_subset$mat_age,alternative="two.sided")
t.test(control_subset$mat_age,cohort$mat_age,alternative="two.sided")

#Check: how many aren't NA values
length(which(is.na(preterm_subset$mat_age)==F))#83 NA
length(which(is.na(lbw_subset$mat_age)==F))#6
length(which(is.na(control_subset$mat_age)==F))#333

#########################################################
#MATERNAL RACE

##
#CONTROLS
##

#White, .59
length(which(control_subset$mat_race___1==1))/c_size
r_control_a=length(which(control_subset$mat_race___1==1))
r_control_c=length(which(control_subset$mat_race___1==0))
#Black, .252
length(which(control_subset$mat_race___2==1))/c_size
r_controlblack_a=length(which(control_subset$mat_race___2==1))
r_controlblack_c=length(which(control_subset$mat_race___2==0))
#Asian,.0289
length(which(control_subset$mat_race___4==1))/c_size
r_controlasian_a=length(which(control_subset$mat_race___4==1))
r_controlasian_c=length(which(control_subset$mat_race___4==0))
#Other/Not found: American Indian/Alaskan, Pacific Islander, Other, Not found
#18.1%
length(which(control_subset$mat_race___3==1|
               control_subset$mat_race___5==1|control_subset$mat_race___6==1|
               control_subset$mat_race___7==1))/c_size
r_controlother_a=length(which(control_subset$mat_race___3==1|
  control_subset$mat_race___5==1|control_subset$mat_race___6==1|
    control_subset$mat_race___7==1))
r_controlother_c=length(which(control_subset$mat_race___3==0|
                                control_subset$mat_race___5==0|control_subset$mat_race___6==0|
                                control_subset$mat_race___7==0))
##
#ADVERSE
##

multlengths(adverse_subset$mat_race___1,adverse_subset$mat_race___2,
            adverse_subset$mat_race___4,
            adverse_subset$mat_race___6)

#White, .49
length(which(adverse_subset$mat_race___1==1))/adverse_subset_size
r_adverse_b=length(which(adverse_subset$mat_race___1==1))
r_adverse_d=length(which(adverse_subset$mat_race___1==0));r_adverse_d
#test adverse vs controls
r_df=data.frame(control=c(r_control_a,r_control_c),
                variable=c(r_adverse_b,r_adverse_d));r_df
chisq.test(r_df)

#Black, .375
length(which(adverse_subset$mat_race___2==1))/adverse_subset_size
r_adverseblack_b=length(which(adverse_subset$mat_race___2==1))
r_adverseblack_d=length(which(adverse_subset$mat_race___2==0));r_adverseblack_d
#test
r_df=data.frame(control=c(r_controlblack_a,r_controlblack_c),
                variable=c(r_adverseblack_b,r_adverseblack_d));r_df
chisq.test(r_df)
fisher.test(r_df)#.0549

#Asian, .05
length(which(adverse_subset$mat_race___4==1))/adverse_subset_size
r_adverseasian_b=length(which(adverse_subset$mat_race___4==1))
r_adverseasian_d=length(which(adverse_subset$mat_race___4==0))
#Test
r_df=data.frame(control=c(r_controlasian_a,r_controlasian_c),
                variable=c(r_adverseasian_b,r_adverseasian_d));r_df
chisq.test(r_df)
fisher.test(r_df)

#Other, 11.6%
length(which(adverse_subset$mat_race___3==1|
               adverse_subset$mat_race___5==1|adverse_subset$mat_race___6==1|
               adverse_subset$mat_race___7==1))/adverse_subset_size
r_adverseother_b=length(which(adverse_subset$mat_race___3==1|
                                adverse_subset$mat_race___5==1|adverse_subset$mat_race___6==1|
                                adverse_subset$mat_race___7==1))
r_adverseother_d=length(which(adverse_subset$mat_race___3==0|
                                adverse_subset$mat_race___5==0|adverse_subset$mat_race___6==0|
                                adverse_subset$mat_race___7==0));r_adverseother_d
#Test
r_df=data.frame(control=c(r_controlother_a,r_controlother_c),
                variable=c(r_adverseother_b,r_adverseother_d));r_df
chisq.test(r_df)
fisher.test(r_df)
#All other categories are zero

##
#COHORT
##

multlengths(cohort$mat_race___1,cohort$mat_race___2,
            cohort$mat_race___4,
            cohort$mat_race___6)
#White, .33
length(which(cohort$mat_race___1==1))/cohort_size
r_cohort_b=length(which(cohort$mat_race___1==1))
r_cohort_d=length(which(cohort$mat_race___1==0));r_cohort_d
#Black, .16
length(which(cohort$mat_race___2==1))/cohort_size
r_cohortblack_b=length(which(cohort$mat_race___2==1))
r_cohortblack_d=length(which(cohort$mat_race___2==0))
#Asian, .11
length(which(cohort$mat_race___4==1))/cohort_size
r_cohortasian_b=length(which(cohort$mat_race___4==1))
r_cohortasian_d=length(which(cohort$mat_race___4==0))
#Other, 16.9%
length(which(cohort$mat_race___3==1|
               cohort$mat_race___5==1|cohort$mat_race___6==1|
               cohort$mat_race___7==1))/cohort_size
r_cohortother_b=length(which(cohort$mat_race___3==1|
                               cohort$mat_race___5==1|cohort$mat_race___6==1|
                               cohort$mat_race___7==1))
r_cohortother_d=length(which(cohort$mat_race___3==0|
                               cohort$mat_race___5==0|cohort$mat_race___6==0|
                               cohort$mat_race___7==0))
##################################################################
#RACE FROM HS FORM
#Cohort
length(which(cohort$hs_race___1==1))/cohort_size#Whites,0.349
length(which(cohort$hs_race___2==1))/cohort_size#Blacks,0.165
length(which(cohort$hs_race___3==1|cohort$hs_race___4==1))/cohort_size
#Other/No answer is 0.117

#Controls
length(which(control_subset$hs_race___1==1))/c_size#Whites,0.381
length(which(control_subset$hs_race___2==1))/c_size#Blacks,0.156
length(which(control_subset$hs_race___3==1|control_subset$hs_race___4==1))/c_size
#Other/No answer is 0.130

#Adverse
length(which(adverse_subset$hs_race___1==1))/adverse_subset_size#Whites,0.211
length(which(adverse_subset$hs_race___2==1))/adverse_subset_size#Blacks,0.2
length(which(adverse_subset$hs_race___3==1|adverse_subset$hs_race___4==1))/adverse_subset_size
#Other/No answer is 0.0632


################################################################################
#ETHNICITY, % Hispanic
multlengths(control_subset$mat_ethnic___1,
            adverse_subset$mat_ethnic___1,cohort$mat_ethnic___1,lbw_subset$mat_ethnic___1)
#Controls, .13
length(which(control_subset$mat_ethnic___1==1))/c_size
e_control_a=length(which(control_subset$mat_ethnic___1==1))
e_control_c=length(which(control_subset$mat_ethnic___2==1));e_control_c
# length(which(control_subset$mat_ethnic___2==1))
# length(which(control_subset$mat_ethnic___3==1))
# length(which(control_subset$mat_ethnic___4==1))

#Adverse, .031
length(which(adverse_subset$mat_ethnic___1==1))/adverse_subset_size
e_adverse_b=length(which(adverse_subset$mat_ethnic___1==1))
e_adverse_d=length(which(adverse_subset$mat_ethnic___2==1));e_adverse_d

#Test
e_df=data.frame(control=c(e_control_a,e_control_c),
                variable=c(e_adverse_b,e_adverse_d));e_df
chisq.test(e_df)
fisher.test(e_df)

#Cohort, .12
length(which(cohort$mat_ethnic___1==1))/cohort_size
e_cohort_b=length(which(cohort$mat_ethnic___1==1))
e_cohort_d=length(which(cohort$mat_ethnic___2==1))
#CONTROLS
#Hispanic,.14
length(which(control_subset$mat_ethnic___1==1))/length(control_subset$participant_id)

#Non-Hispanic, .84
length(which(control_subset$mat_ethnic___2==1))/length(control_subset$participant_id)

#Did not answer, .008
length(which(control_subset$mat_ethnic___3==1))/length(control_subset$participant_id)

#Other, .01 
length(which(control_subset$mat_ethnic___4==1))/length(control_subset$participant_id)

###############################################################################
#% HS form in cohort
#Proportion of HS form present
#Multiple lengths function for 0 or 1
#1 is yes
multlengths(cohort$hs_present,control_subset$hs_present,
            adverse_subset$hs_present,lbw_subset$hs_present)

#Control
242/length(control_subset$participant_id)#.65 HS form present
hs_control_a=242
hs_control_c=c_size-hs_control_a
#Adverse
5/length(lbw_subset$participant_id)#.83
hs_lbw_b=5
hs_lbw_d=lbw_size-hs_lbw_b
#Cohort
279/cohort_size#.61
hs_cohort_b=279
hs_cohort_d=cohort_size-hs_cohort_b

c_size
adverse_subset_size
##############################################################
#HS score

mm(cohort$hs_score,control_subset$hs_score,adverse_subset$hs_score)
t.test(control_subset$hs_score,adverse_subset$hs_score,alternative="two.sided")

#Cohort

#Controls

#Adverse group

###############################################################
#TABLE 2 CODE
#Questions on form
control_subset=subset(data,gest_age>=37&weight>=2500&excluded==0
                      &outborn==0&duplicate==0&hs_present==1)
lbw_subset=subset(data,data$gest_age>=37&data$weight<2500&data$excluded==0
                  &data$outborn==0&data$duplicate==0&hs_present==1)
preterm_subset=subset(data,data$gest_age<37&data$excluded==0&data$outborn==0
                      &data$duplicate==0&hs_present==1)
cohort=rbind(control_subset,lbw_subset,preterm_subset)
adverse_subset=rbind(lbw_subset,preterm_subset)
#SIZES
#Controls
c_size=length(control_subset$participant_id);c_size#242 babies, controls
#Low birth weights
adverse_subset_size=length(adverse_subset$participant_id);adverse_subset_size
#37 babies, lbw OR preterm
cohort_size=length(cohort$participant_id);cohort_size
#312 total in cohort, hs present

#SPecial needs children at home? (Q 4)
length(which(control_subset$hs_special_needs_child==1))/c_size
length(which(adverse_subset$hs_special_needs_child==1))/adverse_subset_size
multlengths(control_subset$mat_ethnic___1,
            adverse_subset$mat_ethnic___1,cohort$mat_ethnic___1,lbw_subset$mat_ethnic___1)

a=length(which(control_subset$hs_special_needs_child==1))
c=length(which(control_subset$hs_special_needs_child==2))
b=length(which(adverse_subset$hs_special_needs_child==1))
d=length(which(adverse_subset$hs_special_needs_child==2))
specialneeds_df=data.frame(control=c(a,c),
                  variable=c(b,d));specialneeds_df
chisq.test(specialneeds_df)
fisher.test(specialneeds_df)

#% did not answer/ no info available
1-sum(specialneeds_df)/cohort_size#1.1%

#Not a good time to be pregnant (Q 5), 2 is not a good time
length(which(control_subset$hs_good_time_preg==2))/c_size
length(which(adverse_subset$hs_good_time_preg==2))/adverse_subset_size
a=length(which(control_subset$hs_good_time_preg==2))
c=length(which(control_subset$hs_good_time_preg==1))
b=length(which(adverse_subset$hs_good_time_preg==2))
d=length(which(adverse_subset$hs_good_time_preg==1))
good_time_pregnant_df=data.frame(control=c(a,c),
                           variable=c(b,d));good_time_pregnant_df
chisq.test(good_time_pregnant_df)
fisher.test(good_time_pregnant_df)

#% did not answer/ no info available
1-sum(good_time_pregnant_df)/cohort_size#3.6%

#Have trouble paying bills (Q 10)
length(which(control_subset$hs_trouble_bills==1))/c_size
length(which(adverse_subset$hs_trouble_bills==1))/adverse_subset_size
a=length(which(control_subset$hs_trouble_bills==1))
c=length(which(control_subset$hs_trouble_bills==2))
b=length(which(adverse_subset$hs_trouble_bills==1))
d=length(which(adverse_subset$hs_trouble_bills==2))
troublebills_df=data.frame(control=c(a,c),
                           variable=c(b,d));troublebills_df
chisq.test(troublebills_df)
fisher.test(troublebills_df)

#% did not answer/ no info available
1-sum(troublebills_df)/cohort_size#2.5%
########################################################################
#MATERNAL MEDICAL RISK FACTORS
grep("^mat_med_risk___2$",colnames(data))
grep("^mat_med_risk___14$",colnames(data))
medriskfactor=length(which(data[,37:49]==1));medriskfactor#col 37 is premature rupture
medriskfactor=length(which(cohort[,37:49]==1));medriskfactor
#86 manually, have risk factors
cohort_size-medriskfactor#193 without

#not sure why below code, utilizing question of none of the above issues 
#double negative doesn't work?
#0 is has a medical risk factor for question 1
#1 is no risk factor
length(which(adverse_subset$mat_med_risk___1==0))
length(which(control_subset$mat_med_risk___1==0))
length(which(cohort$mat_med_risk___1==0))#78 did not choose none of the above issues
#so 78 had "issues", or 78 have risk factors

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

############################################################
#Proportion referred to healthy start
#Controls
length(which(control_subset$hs_referral==1))/c_size#68%
length(which(control_subset$hs_score>6))/c_size#20%
length(which(control_subset$hs_referral==1&control_subset$hs_score>6))/c_size
#only 17% of those referred had score greater than 6

#Adverse
length(which(adverse_subset$hs_referral==1))/adverse_subset_size#84%
length(which(adverse_subset$hs_score>6))/adverse_subset_size#51%
length(which(adverse_subset$hs_referral==1&adverse_subset$hs_score>6))/
  adverse_subset_size#only 46% of those referred had score greater than 6

###################################################
#proportion preterm/lbw
adverse_subset_size/cohort_size#13.3%
length(preterm_subset$participant_id)/cohort_size#11.5%
length(lbw_subset$participant_id)/cohort_size


###############################################################
#BUILDING LOGISTIC REGRESSION MODEL

#Mat_Risk portion of Data Frame
head(cohort)
df_matrisk=data.frame(cohort[,36:49],Risk_YN=c(rep(0,cohort_size)))
df_matrisk$Risk_YN[df_matrisk$mat_med_risk___2==1|df_matrisk$mat_med_risk___3==1|
 df_matrisk$mat_med_risk___4==1|df_matrisk$mat_med_risk___5==1|
   df_matrisk$mat_med_risk___6==1|df_matrisk$mat_med_risk___7==1|
   df_matrisk$mat_med_risk___8==1|df_matrisk$mat_med_risk___9==1|
   df_matrisk$mat_med_risk___10==1|df_matrisk$mat_med_risk___11==1|
   df_matrisk$mat_med_risk___12==1|df_matrisk$mat_med_risk___13==1|
   df_matrisk$mat_med_risk___14==1]=1
length(which(df_matrisk$Risk_YN==1))
length(df_matrisk$Risk_YN)

#HS_Score portion
#If score >6, then adverse score
df_hs_score=data.frame(cohort$hs_score,Score=rep(0,cohort_size))
df_hs_score$Score[df_hs_score$cohort.hs_score>6]=1
length(df_hs_score$Score)

#Preterm/LBW Portion
#1 if preterm/lbw , 0 otherwise healthy
df_adverse=data.frame(cohort$gest_age,cohort$weight,Adverse=rep(0,cohort_size));head(df_adverse)
df_adverse$Adverse[df_adverse$cohort.gest_age<37|df_adverse$cohort.weight<2500]=1
length(which(df_adverse$Adverse==1))#perfect, 37 babies

log_df=data.frame(HS_Score=df_hs_score$Score,Mat_Risk=df_matrisk$Risk_YN,Preterm_or_LBW=df_adverse$Adverse)
View(log_df)

fit=glm(Preterm_or_LBW~HS_Score+Mat_Risk,family=binomial(link=logit),data=log_df)
summary(fit)

#Goodness of fit test
pchisq(203.91,309,lower.tail = F)#Very good fit!

#Usefulness test?
pchisq(242.77-203.91,2,lower.tail = F)#Not useful, other model better

#Seems that model with hs_score is better as it explains more of variability 
#compared with just maternal risk
fit2=glm(Preterm_or_LBW~Mat_Risk,family=binomial(link=logit),data=log_df)
summary(fit2)

#######
#Second LOG MODEL
#######

#Q1
#no is risk (2=no)
head(cohort$hs_grad_hs)
cohort$hs_grad_hs
q1=data.frame(cohort$hs_grad_hs,Q1=rep(1,cohort_size))

#Removing all lines with Q's without answer , or NA's
# length(df_q1$cohort.hs_grad_hs)
# df_q1=df_q1[!df_q1$cohort.hs_grad_hs==3,]
# df_q1=df_q1[complete.cases(df_q1),]
# df_q1$Q1[df_q1$cohort.hs_grad_hs==2]=0

#Q2
#not married is risk (2 is risk)
#1 is white, 0 is black
hs_race=data.frame(Whites=cohort$hs_race___1,Blacks=cohort$hs_race___2,
                   Zeros=rep(NA,cohort_size));hs_race
hs_race$Zeros[hs_race$Blacks==1]=0
hs_race$Zeros[hs_race$Whites==1]=1
hs_race_removed=hs_race[complete.cases(hs_race),]
length(hs_race_removed$Whites)
length(hs_race$Whites)
length(cohort$hs_grad_hs)

#Q12 and 13 missing!

#Q16: make each one its own question, 1-4 (exclude 5)

#Q17: hs_mat_age
#<18 risk, so <18 is 1, >=18 is zero
hs_mat_age=data.frame(Age=cohort$hs_mat_age,Age_risk=rep(NA,cohort_size));head(hs_mat_age)
hs_mat_age$Age_risk[hs_mat_age$Age<18]=1
hs_mat_age$Age_risk[hs_mat_age$Age>=18]=0
length(hs_mat_age$Age_risk)

typeof(hs_mat_age)

#Prenatal insurance, create one df with 5 levels (including not answered)
#Then factor it in the fit!
hs_insurance=data.frame(Medicaid=cohort$hs_insurance___1,Private=
 cohort$hs_insurance___2,None=cohort$hs_insurance___3,Other=cohort$hs_insurance___4,
 Did_not_answer=cohort$hs_insurance___5,Combined=cohort$hs_insurance___1);head(hs_insurance)
hs_insurance$Combined[hs_insurance$Private==1]=2
hs_insurance$Combined[hs_insurance$None==1]=3
hs_insurance$Combined[hs_insurance$Other==1]=4
hs_insurance$Combined[hs_insurance$Did_not_answer==1]=5


# View(hs_insurance)
# head(hs_insurance)

#Finding how many have more than 1 health insurance (11 so far with 1242 participants)
#Make sure you exclude the combined column above!
hs_insurance_copy=data.frame(ID=cohort$participant_id, Medicaid=cohort$hs_insurance___1,Private=
                          cohort$hs_insurance___2,None=cohort$hs_insurance___3,Other=cohort$hs_insurance___4,
                        Did_not_answer=cohort$hs_insurance___5);head(hs_insurance_copy)

which(rowSums(hs_insurance_copy[2:6])==2)
#have to copy and past into below
hs_insurance_copy$ID[c(13,25,45 , 65, 122, 167, 176, 181, 233, 270 ,285)]
length(which(rowSums(hs_insurance_copy)==2))

#Q18: BMI, need to make df with 3 levels, 0 is healthy, 1 is under, 2 is over
#then factor in fit model
bmi=data.frame(cohort$hs_mat_bmi,mat_bmi=rep(0,cohort_size));head(bmi)
bmi$mat_bmi[bmi$cohort.hs_mat_bmi<19.8]=1
bmi$mat_bmi[bmi$cohort.hs_mat_bmi>35]=2

#Maternal ethnicity
#Check if ther is overlap
#Make one df, but only include Hisp and non-Hisp
length(which(cohort$mat_ethnic___4==1))
mat_ethnic=data.frame(Hispanic=cohort$mat_ethnic___1,
                      Non_Hispanic=cohort$mat_ethnic___2,Hispanic_YN=rep(NA,cohort_size))
head(mat_ethnic)
mat_ethnic$Hispanic_YN[mat_ethnic$Hispanic==1]=1
mat_ethnic$Hispanic_YN[mat_ethnic$Non_Hispanic==1]=0

class(mat_ethnic)
#Fitting model
large_fit=glm(log_df$Preterm_or_LBW~factor(cohort$hs_grad_hs)+factor(cohort$hs_married)
  +factor(cohort$hs_child_under_5)+factor(cohort$hs_special_needs_child)+
    factor(cohort$hs_good_time_preg)+factor(cohort$hs_depression)+
    factor(cohort$hs_felt_alone)+factor(cohort$hs_mental_services)+
    factor(cohort$hs_threat_or_hurt)+factor(cohort$hs_trouble_bills)+
    hs_race$Zeros+factor(cohort$hs_preg_desire)+factor(cohort$hs_first_preg)
  +cohort$hs_nicu_risk___1+cohort$hs_nicu_risk___2+cohort$hs_nicu_risk___3
  +cohort$hs_nicu_risk___4+factor(hs_insurance$Combined)+
    factor(bmi$mat_bmi)+factor(cohort$hs_preg_interv)+factor(cohort$hs_mat_illness)
  +cohort$mat_med_risk___9+cohort$mat_med_risk___10+df_matrisk$Risk_YN+
    mat_ethnic$Hispanic_YN+cohort$mat_age#+hs_mat_age$Age_risk
  ,family=binomial(link=logit),data=cohort)#hs_mat_age$Age_risk+
summary(large_fit)
#Can't get mat age to work for some reason
fitrandom=glm(log_df$Preterm_or_LBW~factor(cohort$hs_grad_hs)+
        df_matrisk$Risk_YN+df_hs_score$Score,family=binomial)

summary(large_fit)

large_fit=glm(log_df$Preterm_or_LBW~
              #factor(cohort$hs_child_under_5)+#factor(cohort$hs_special_needs_child)+
                factor(cohort$hs_good_time_preg)+factor(cohort$hs_depression)+
                factor(cohort$hs_felt_alone)+factor(cohort$hs_mental_services)+
                factor(cohort$hs_threat_or_hurt)+factor(cohort$hs_trouble_bills)+
                cohort$hs_nicu_risk___1+cohort$hs_nicu_risk___2+cohort$hs_nicu_risk___3
              +cohort$hs_nicu_risk___4+factor(hs_insurance$Combined)+
                factor(bmi$mat_bmi)+factor(cohort$hs_mat_illness)
              +cohort$mat_med_risk___9+cohort$mat_med_risk___10+df_matrisk$Risk_YN
               # +cohort$mat_age#+hs_mat_age$Age_risk
              ,family=binomial(link=logit),data=cohort)

#Best for model parsimony , Second best
large_fit=glm(log_df$Preterm_or_LBW~#factor(cohort$hs_married)
              # factor(cohort$hs_special_needs_child)+
                +factor(cohort$hs_good_time_preg)+#factor(cohort$hs_depression)+
                #factor(cohort$hs_felt_alone)+#factor(cohort$hs_mental_services)+
                factor(cohort$hs_threat_or_hurt)#+factor(cohort$hs_trouble_bills)
               # factor(cohort$hs_first_preg)
              #+cohort$hs_nicu_risk___1#+cohort$hs_nicu_risk___2#+cohort$hs_nicu_risk___3
              #+cohort$hs_nicu_risk___4#+factor(hs_insurance$Combined)+
                +factor(bmi$mat_bmi)+factor(cohort$hs_mat_illness)
              +cohort$mat_med_risk___9+df_matrisk$Risk_YN
                #cohort$mat_age#+hs_mat_age$Age_risk
              ,family=binomial(link=logit),data=cohort)#hs_mat_age$Age_risk+
#Step AIC
# library(MASS)
summary(large_fit)
stepAIC(large_fit)

#Comparison between simplest, and low AIC and saturated model
pchisq(169.09-122.58,295-201,lower.tail = F)#.999

#Comparison between simple with low AIC, and simplest
pchisq(203.91-169.09,309-295,lower.tail = F)

#Comparison between simplest and saturated
pchisq(203.91-122.58,309-201,lower.tail = F)

#Comparison between best AIC & sat model
pchisq(133.32-122.58,223-201,lower.tail = F)

#Comparison
pchisq(169.09-133.32,295-223,lower.tail=F)#No significant difference

#Goodness of fit test
pchisq(125.52,210,lower.tail = F)
pchisq(169.09,295,lower.tail=F)

#Usefulness
pchisq(201.57-125.52,36,lower.tail = F)#Not useful
# stepAIC(fitrandom)

summary(fit)

##
#So far best but many parameters, AIC=189.32
large_fit=glm(log_df$Preterm_or_LBW~factor(cohort$hs_married)
              +factor(cohort$hs_child_under_5)+factor(cohort$hs_special_needs_child)+
                factor(cohort$hs_good_time_preg)+#factor(cohort$hs_depression)+
                factor(cohort$hs_felt_alone)+factor(cohort$hs_mental_services)+
                factor(cohort$hs_threat_or_hurt)+factor(cohort$hs_trouble_bills)+
                hs_race$Zeros+factor(cohort$hs_first_preg)
              +cohort$hs_nicu_risk___1+cohort$hs_nicu_risk___2+cohort$hs_nicu_risk___3
              #+cohort$hs_nicu_risk___4#+factor(hs_insurance$Combined)+
              +factor(bmi$mat_bmi)+factor(cohort$hs_mat_illness)
              +cohort$mat_med_risk___9+cohort$mat_med_risk___10+df_matrisk$Risk_YN+
                cohort$mat_age#+hs_mat_age$Age_risk
              ,family=binomial(link=logit),data=cohort)#hs_mat_age$Age_risk+e$Age_risk)

length(which(cohort$particip_desire==0))













