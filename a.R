library(readxl)
library(dplyr)
df1 = read_excel("Telecom Churn Rate Dataset.xlsx")

boxplot(log(df1$MonthlyCharges) ~ df1$Churn, xlab = 'Churn', ylab = 'log of MonthlyCharges')

var.test(log(df1$MonthlyCharges[df1$Churn == 'Yes']), log(df1$MonthlyCharges[df1$Churn == 'No']))

t.test(log(df1$MonthlyCharges[df1$Churn == 'Yes']), log(df1$MonthlyCharges[df1$Churn == 'No']), 
       alternative = 'greater', var.equal = F)

