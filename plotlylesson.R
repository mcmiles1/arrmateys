install.packages("plotly")
library("plotly")

setwd("C:\\Users\\Dorris\\Documents\\R stuff\\RMateys") #add your directory!

pizza<-read.csv("pizza.csv")

p<- plot_ly(pizza, x = ~Name) %>%
  layout(title = "Number of Pizza Slices Eaten per Person") %>%
  add_trace(y = ~PizzaSlice, name = "Slices of Pizza", type = 'scatter', mode = 'markers+lines')

p


q<- plot_ly(pizza, labels = ~Name, values = ~PizzaSlice, type = 'pie') %>%
  layout(title = "Number of Pizza Slices Eaten per Person") %>%
  layout(xaxis = list(showgrid = FALSE, zeroline = FALSE, showticklabels = FALSE),
         yaxis = list(showgrid = FALSE, zeroline = FALSE, showticklabels = FALSE))

q  