#       _/_/      _/_/    _/_/_/      _/   
#    _/    _/  _/    _/        _/  _/_/    
#       _/    _/    _/    _/_/      _/     
#    _/      _/    _/        _/    _/      
# _/_/_/_/    _/_/    _/_/_/    _/_/_/   

library(tidyverse)

# Activity 2
# load in the data set, ensuring that `id` is read as a factor
fev1 <- read_csv("fev1.csv", col_types = cols(id = 'factor'))

# sample individuals who have more than 6 observations

fev1_sampled <- count(fev1, id) %>%
    filter(n > 6) %>%
    sample_n(20) 

... <- merge(fev1, fev1_sampled)

# Activity 3

# 3a
ggplot(data = ...,
       aes(x = age, y = FEV1)) + 
    geom_...()

fev1_plot3a

# 3b

... + 
    xlab(...) + 
    ... +
    theme_...()

fev1_plot3b

# 3c

...

# Activity 4a

...

# Activity 4b

... # count number of times id appears

# Activity 4c

ggplot(data = ...,
       aes(x = ..., y = ...)) +
    geom_...(aes(... = ...)) +
    ...

# Activity 4d

library(mgcv)
model <- gamm(data = ..., FEV1 ~ ...)

pred  <- data.frame(age = seq(min(...$age),
                              max(...$age),
                              length.out = 101))

pred  <- mutate(pred, FEV1 = predict(model$gam, pred))
