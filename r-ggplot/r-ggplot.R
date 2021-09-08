---
title: "test"
output: pdf_document
---

```{r setup, include=FALSE}
knitr::opts_chunk$set(echo = TRUE)
install.packages("tidyverse")
library(tidyverse)
library(plotly)

```
Let's plot the data

```{r}

cars = read.csv('cars-sample.csv', header=TRUE)


 #mutate(text = paste("Cars: ", Car)) %>%

g <- ggplot(data = cars, aes(x = Weight, y = MPG, size = Weight, color = Manufacturer, group = Car)) +
  geom_point(alpha = 0.5) +
  xlab('MPG') +
  ylab('Weight') +
  ggtitle('MPG vs. Weight') 
#if ("Manufacturer" == "ford") {
 # data <- rgb(1, 0, 0)
#}
# turn ggplot interactive with plotly
ggplotly(g, tooltip = c("Car"))
```

