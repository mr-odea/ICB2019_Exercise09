library(ggplot2)

# Part 1
icecream <- read.table(file="Ice_cream_sales_vs_temperature.txt", header = TRUE, sep= "\t", fileEncoding="UTF-16LE") #loading a text file containing ice cream sales at an ice cream truck ($) versus temperature (C) data
ggplot(data=icecream, aes(x=Temperature, y=Sales)) + #makes ggplot object of ice cream data with x axis as temp and y axis as sales
  geom_point() + # makes a scatter plot
  geom_smooth(method = "lm") # adds a trendline

# Part 2
data2 <- read.table(file="data.txt", header = TRUE, sep = ",") # loading the text file as a data table; text file is comma delimited and the first row contains column names (header)

ggplot(data=data2, aes(x = region, y = observations)) + # setting up ggplot object with x axis representing region and y axis representing observation
  geom_bar(stat="summary", fun.y="mean") # creates a bar plot with the aforementioned parameters using the mean of each group 

ggplot(data=data2,aes(x = region, y = observations)) + # setting up ggplot object with x axis representing region and y axis representing observation
  geom_jitter() # creates a scatter plot with points slightly offset so that they can be more easily visualized 

# Yes, the bar graph tells as different story than the scatterplot, since the scatter plot shows variable distributions of the observations in each region whereas the bar graph just shows the mean values in each region, which appear to not be so different from one another 
