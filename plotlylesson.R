###Installing the Plotly package and add it to your library.
install.packages("plotly")
library("plotly")

setwd("") #add your directory!

#This loads the csv file into RStudio. You're assigning the csv file to a variable.
pizza<-read.csv("pizza.csv")

#Creating a scatter plot. We're assigning the plot to a variable.
p<- plot_ly(pizza, x = ~Name) %>% #loading the data into plot_ly. We want to see the number of pizza slices eaten per person 
#by name so it is assigned X.

  layout(title = "Number of Pizza Slices Eaten per Person") %>% #Every good plot needs a title!
  add_trace(y = ~PizzaSlice, name = "Slices of Pizza", type = 'scatter', mode = 'markers') #adding the actual plots to the plot 
  #it is assigned to be a scatter plot and will just show the markers

#will display your plot.
p

#For more information, go here: https://plot.ly/r/line-and-scatter/


#Let's make a pie chart!!!

#Again, assigning a plot to a variable...but this time we're making a pie chart. 
q<- plot_ly(pizza, labels = ~Name, values = ~PizzaSlice, type = 'pie') %>%
  layout(title = "Number of Pizza Slices Eaten per Person") %>% #Needs a title!
  layout(xaxis = list(showgrid = FALSE, zeroline = FALSE, showticklabels = FALSE), 
         yaxis = list(showgrid = FALSE, zeroline = FALSE, showticklabels = FALSE))

q  

#For more information, go here: https://plot.ly/r/pie-charts/
