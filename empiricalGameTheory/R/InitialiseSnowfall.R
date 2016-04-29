InitialiseSnowfall <-
function(num.cpus) {
    sfInit(parallel=T, cpus = num.cpus) # , type='MPI')
    sfExportAll()
    sfExport('ode', namespace='deSolve')
}
