## ---- eval = FALSE-------------------------------------------------------
#  install.packages("devtools")

## ---- eval = FALSE-------------------------------------------------------
#  devtools::install_github(repo = "thiph169/ARP-lab-6/",
#                           build_vignette = TRUE)

## ------------------------------------------------------------------------
library(knapsack)

## ------------------------------------------------------------------------
set.seed(42)
n <- 2000
knapsack_objects <-
data.frame(
w=sample(1:4000, size = n, replace = TRUE),
v=runif(n = n, 0, 10000)
)

## ------------------------------------------------------------------------
brute_force_knapsack(x = knapsack_objects[1:8,], W = 3500)

## ------------------------------------------------------------------------

knapsack_dynamic(x = knapsack_objects[1:8,], W = 3500)

## ------------------------------------------------------------------------
greedy_knapsack(x = knapsack_objects[1:800,], W = 3500)

