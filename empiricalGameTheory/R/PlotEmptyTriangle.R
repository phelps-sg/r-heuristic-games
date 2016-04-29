PlotEmptyTriangle <-
function(labels = c()) {
    par(mar = c(0.1, 0.1, 0.1, 0.1))
    plot(0, 0, type = "n", xlim = c(-0.8, 0.8), ylim = c(-0.6, 
                    1), xlab = "", ylab = "", xaxt = "n", yaxt = "n", asp = 1, 
            frame.plot = F)
    vertices = diag(3)
    vertices <- rbind(vertices, vertices[1,])
    v <- SimplexProjection(vertices)
    lines(v)
    positions <- c(1, 3, 1)
    for (i in seq(1, length(labels))) {
        text(v[i,1], v[i,2], pos=positions[i], labels[i], offset=1.0)    
    }
}
