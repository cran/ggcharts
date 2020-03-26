## ---- include = FALSE---------------------------------------------------------
knitr::opts_chunk$set(
  comment = "#>",
  warning = FALSE,
  fig.width = 5.5,
  fig.height = 5.5
)

## ----setup, message=FALSE-----------------------------------------------------
library(ggcharts)
library(dplyr)
data("biomedicalrevenue")
revenue2018 <- biomedicalrevenue %>%
  filter(year == 2018)

## ---- warning=FALSE-----------------------------------------------------------
bar_chart(
  revenue2018,
  company,
  revenue,
  limit = 10,
  highlight = "Roche"
)

## -----------------------------------------------------------------------------
bar_chart(
  revenue2018,
  company,
  revenue,
  limit = 10,
  highlight = "Roche",
  bar_color = "darkorange"
)

## -----------------------------------------------------------------------------
lollipop_chart(
  revenue2018,
  company,
  revenue,
  limit = 10,
  highlight = "Roche",
  line_color = "darkgreen"
)

## -----------------------------------------------------------------------------
bar_chart(
  revenue2018,
  company,
  revenue,
  limit = 10,
  highlight = c("Roche", "Novartis")
)

## -----------------------------------------------------------------------------
lollipop_chart(
  revenue2018,
  company,
  revenue,
  limit = 10,
  highlight = c("Roche", "Novartis"),
  line_color = c("steelblue", "darkorange")
)

## ---- fig.width=8, fig.height=8-----------------------------------------------
biomedicalrevenue %>%
  filter(year %in% c(2012, 2014, 2016, 2018)) %>%
  bar_chart(
    company,
    revenue,
    facet = year,
    limit = 12,
    highlight = "Bayer",
    bar_color = "darkgreen"
  )

