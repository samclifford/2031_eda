#       _/_/      _/_/    _/_/_/      _/   
#    _/    _/  _/    _/        _/  _/_/    
#       _/    _/    _/    _/_/      _/     
#    _/      _/    _/        _/    _/      
# _/_/_/_/    _/_/    _/_/_/    _/_/_/   

library(tidyverse)

# Activity 1 - Quick look at the data
library(mosaicData)

data(Gestation)

count(Gestation)

count(Gestation, race)

Gestation_n_race_ed <- count(Gestation, ...)

# Activity 2 - Further summary statistics

summarise(Gestation, ... )

summarise(Gestation, `...` = ...)

summarise(Gestation, `...` = ..., `...` = ...) 

# Activity 3 - Grouped summaries

Gestation_age_race <-select(Gestation, id, age, race)

summarise(.., ...)

# Activity 4

## Activity 4a - Correlation

summarise(Gestation, r = ...)

summarise(...)

## Activity 4b - Multiple summary statistics

...

## Activity 4c - Pivoting wider

pivot_wider(...)

## Activity 4d - Multiple summary statistics

summarise(...)
# or
summarise_at(...)


