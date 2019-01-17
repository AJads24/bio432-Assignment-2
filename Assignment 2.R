#Reading in InData.csv
getwd()
MyData = read.csv("InData.csv")
library(dplyr)

#Eliminating Total data less than 60
MyData = filter(MyData,Total>=60)

#Rearranging column order
MyData = select(MyData, Total, Taxon, Scenario, Nutrients,)

#Converting mg to g and replacing "Total" with "TotalG"
MyData$TotalG = MyData$Total/1000
MyData$Total = NULL

#Replacing strings with first letter
MyData$Nutrients = gsub("(.).*", "\\1",MyData$Nutrients)

#Replacing "." with ","
MyData$TotalG = gsub("\\.", "\\,", MyData$TotalG)

