## ------------------------------------------------------------------------
library(knapsack)

## ------------------------------------------------------------------------
library(rbenchmark)

## ---- cache = TRUE-------------------------------------------------------
knapsack_objects <- knapsack:::create_knapsack(2000)
bm <- benchmark(
  knapsack:::knapsack_dynamic(knapsack_objects[1:500, ], W = 5000),
  columns = c("replications", "elapsed", "user.self", "sys.self"),
  replications = 10
)
print(bm)

## ---- cache = TRUE-------------------------------------------------------
knapsack_objects <- knapsack:::create_knapsack(1000000)
bm <- benchmark(
  knapsack:::greedy_knapsack(knapsack_objects[1:1000000, ], W = 5000),
  
  columns = c("replications", "elapsed", "user.self", "sys.self"),
  replications = 10
)
print(bm)

## ---- cache = TRUE-------------------------------------------------------
knapsack_objects <- knapsack:::create_knapsack(2000)
bm <- benchmark(
  knapsack:::brute_force_knapsack(knapsack_objects[1:10, ], W = 5000),
  knapsack:::brute_force_knapsack(knapsack_objects[1:10, ], W = 5000), 
  columns = c("replications", "elapsed", "user.self", "sys.self"),
  replications = 10
)
print(bm)

## ---- cache = TRUE-------------------------------------------------------
knapsack_objects <- knapsack:::create_knapsack(2000)
bm <- benchmark(
knapsack:::brute_force_knapsack(knapsack_objects[1:16, ], W = 5000),
knapsack:::brute_force_knapsack_parallel(knapsack_objects[1:16, ], W = 5000), 
columns = c("replications", "elapsed", "user.self", "sys.self"),
replications = 10
)
print(bm)

