library(survival)
library(survminer)
setwd( "/home/jing/nanjing/GDC_TCGA_ Liver_ Cancer/data")
data<-read.csv("tmp01",sep="\t")
surv_object<-Surv(data$survival_time,data$status)
cox_model<-coxph(surv_object  ~ TXNRD1+TXNRD2+TXNRD3+UBD+UCP2+UGT2B15+UQCRH+VCAN+VEGFA+VEGFC+VIM+VLDLR+WNT1+WNT10A+WNT10B+WNT11+WNT16+WNT2+WNT2B+WNT3+WNT3A+WNT4+WNT5A+WNT5B+WNT6+WNT7A+WNT7B+WNT8A+WNT8B+WNT9A+WNT9B+WWTR1+XYLT2+YAP1+ZHX2
                 
                 
,data=data)
summary(cox_model)
a<-summary(cox_model)

b<-a$coefficients
write.csv(b,"b")

