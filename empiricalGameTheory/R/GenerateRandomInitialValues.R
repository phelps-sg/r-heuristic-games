GenerateRandomInitialValues <-
function(n = 100, dim = 3, alpha = rep(1,dim)) {
    values.matrix <- rdirichlet(n, alpha)
    values.list <- list()
    for(i in 1:n) {
        values.list[[i]] <- values.matrix[i,]
    }
    values.list
}
