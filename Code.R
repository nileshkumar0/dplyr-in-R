####################################################### 
#### Created by Nilesh Kumar, IIM Raipur, India
#######################################################

#install required package
install.packages("dplyr")
install.packages("tidyverse") 

#use the installed package
library(dplyr) 
library(tidyverse)

#we will be using mtcars data set in this project
datasets::mtcars

#displays the data in a new tab.
View(mtcars) 

# Count number of columns
ncol(mtcars) 

# count number of rows
nrow(mtcars) 

#Select only the column: mpg, cyl, disp, gear, carb. Do not use the pipe operator.
select(mtcars, mpg, cyl, disp, gear, carb)

#Use the pipe operator (%>%) to select only the column: mpg, cyl, disp, gear, carb. 
mtcars %>%  select(mpg, cyl, disp, gear, carb)

#Filter for mpg greater than or equal to 20.0. Do not use the pipe operator.
filter(mtcars, mpg >= 20)

#Use the pipe operator (%>%) to filter for mpg greater than or equal to 20.0
mtcars  %>% filter(mpg >= 20)

#Select the column: mpg, cyl, gear. Then, "filter" cars with three gears only. without use the pipe operator.
selecteddata <- select(mtcars, mpg, cyl, gear)
selecteddata <- filter(selecteddata, gear == 3)
print(selecteddata)

#Use the pipe operator (%>%) to select the column: mpg, cyl, gear. Then, "filter" cars with three gears only. 
mtcars %>%  select(mpg, cyl, gear) %>% filter(gear == 3)

#Select the column: mpg, cyl, gear. Then, arrange the record in the increasing order of mpg values.
selecteddata <- select(mtcars, mpg, cyl, gear)
newdata <- selecteddata[order(mpg),]
print(newdata)

#Use the pipe operator (%>%) to select the column: mpg, cyl, gear. Then, place the record in the increasing order of mpg values.
mtcars %>%  select(mpg, cyl, gear) %>% arrange(mpg)

# Select all the column except mpg from the mtcars dataset.
mtcars[-1] #method 1
mtcars[,c(2:11)] #method 2

# Create a variable namely "kpg". Hint: use mutate funciton. 1 mpg = 1.609 kpg
mtcars %>% mutate(kpg = mpg / 1.609) 

# Calculate the mean, and median for the variable mpg. Hint use summarize() function.
summarize(mtcars, Avearge_mpg = mean(mtcars$mpg), Median_mpg = median(mtcars$mpg))


#Count the total rows, and calculate the mean and median for the variable "mpg" grouped by gear.

mtcars %>% 
  group_by(gear) %>%
  summarise(Total_rows = n(), Avearge_mpg = mean(mtcars$mpg), Median_mpg = median(mtcars$mpg))














