---
title       : Developing Data Products
subtitle    : Hiring from Bureau of Labor Statisitcs
author      : DNRL
job         : Data specialist
framework   : io2012        # {io2012, html5slides, shower, dzslides, ...}
highlighter : highlight.js  # {highlight.js, prettify, highlight}
hitheme     : tomorrow      # 
widgets     : []            # {mathjax, quiz, bootstrap}
mode        : selfcontained # {standalone, draft}
knit        : slidify::knit2slides
---

## Data being displayed

1. Data is from the Burea of Labor statistics.
2. from 2001 through 2014 broken down by year, month and series_id.
3. Source: http://download.bls.gov/pub/time.series/jt/jt.data.3.Hires

---
## DATA Structure

1. Serial_id  = BLS job classifications.
2. Year       = year in which data was collected
3. Period     = month which data was collected (January = M01...)
4. Value      = Rate of increase for the month.

--- 

## Purpose

Data was collect from  Bureau of Labor statistics and only includes the rates for each series_id code.
Data is plotted by  year, month(period) and series_id.

--- 

## Application

This application will allow the user to select the basic plot format for the "plot" feature of R.  Users will see a default plot, with a description of each choice in the radio button at the bottom of the data/plot presentation

---

## User interface

The user interface is a basic radio button with the choices that will be passed to a function that returns the same data in different plot types.

To run applications click on link: https://dnrl1.shinyapps.io/dev_data_prod

Make sure you hit the <<SUBMIT BUTTON>>!!!

--- 
```{r echo=TRUE}

```

```{r, echo=FALSE}

```

Note that the `echo = FALSE` parameter was added to the code chunk to prevent printing of the R code that generated the plot.
