BoltzmannFn <-
function(x, temp, k=2) {
  exp(-x / k * temp)
}
