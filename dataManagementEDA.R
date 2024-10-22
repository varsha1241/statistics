library(dplyr)
library(nycflights13)
data("flights")
flights

# 1. Had arrival delay of two or more hours
flights |> filter(dep_delay >= 2)

# 2. Flew to Houston 
flights |> filter(dest == "IAH" | dest == "HOU")

# 3. were operated by united , american or delta
flights |> filter(carrier == "UA" | carrier == "DL" )

# 4. departed in summer (July ,August and September)
flights |> filter(month == 7 | month == 8 | month == 9)

# 5. arrived more than 2 hours late but did not leave late
flights |> filter(arr_delay >2 & dep_delay == 0)
