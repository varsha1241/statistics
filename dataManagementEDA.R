library(ProjectTemplate)
library(dplyr)
library(nycflights13)
data("flights")
glimpse(flights)

flights
# 1. Had arrival delay of two or more hours
flights |> filter(dep_delay >= 120)

# 2. Flew to Houston 
flights |> filter(dest %in% c("IAH" ,"HOU"))

# 3. were operated by united , american or delta
flights |> filter(carrier %in% c("UA" ,"DL", "AA" ))

# 4. departed in summer (July ,August and September)
flights |> filter(month %n% c(7 , 8 , 9))

# 5. arrived more than 2 hours late but did not leave late
flights |> filter(arr_delay >=120 & dep_delay <= 0) |> View()

?flights


flights |> distinct(year , month , day) |> filter(year %in% c(2013)) |> nrow()
