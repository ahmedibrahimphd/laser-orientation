install.packages("tidyverse")

library(tidyverse)

sci_data <- read.csv("data/sci-online-classes.csv")
sci-online-classes
sci_data

sci_data_pipe <- read_csv("data/sci-online-classes.csv") |> # read in data
    select(student_id, FinalGradeCEMS, course_id, ) |> # select variables
    rename(final_grade = FinalGradeCEMS) |> # rename FinalGradeCEMS
    filter(final_grade > .5) |> # keep grades higher than 50% 
    drop_na() # remove rows with missing data

add_numbers <- function(number_1, number_2) { number_1 + number_2}
add_numbers(3, 8)
View(sci_data)

