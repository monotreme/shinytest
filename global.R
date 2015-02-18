
library(UsingR)
library(shinyBS) 
data(SAT)
SAT$state <- NULL
sat.full = c("State expenditure per student",
             "Student/Teacher class size ratio", 
             "Teacher Salary",
             "Percentage of eligible students who sit SAT exams",
             "Verbal SAT score",
             "Math SAT score",
             "Total of Verbal and Math SAT scores")
sat.abb <- names(SAT)