\name{PlotEmptyTriangle}
\alias{PlotEmptyTriangle}
%- Also NEED an '\alias' for EACH other topic documented here.
\title{
Plot the unit simplex.
}
\description{
%%  ~~ A concise (1-5 lines) description of what the function does. ~~
}
\usage{
PlotEmptyTriangle(labels = c())
}
%- maybe also 'usage' for other objects documented here.
\arguments{
  \item{labels}{
%%     ~~Describe \code{labels} here~~
}
}
\details{
%%  ~~ If necessary, more details than the description above ~~
}
\value{
%%  ~Describe the value returned
%%  If it is a LIST, use
%%  \item{comp1 }{Description of 'comp1'}
%%  \item{comp2 }{Description of 'comp2'}
%% ...
}
\references{
%% ~put references to the literature/web site here ~
}
\author{
%%  ~~who you are~~
}
\note{
%%  ~~further notes~~
}

%% ~Make other sections like Warning with \section{Warning }{....} ~

\seealso{
%% ~~objects to See Also as \code{\link{help}}, ~~~
}
\examples{
##---- Should be DIRECTLY executable !! ----
##-- ==>  Define data, use random,
##--	or do  help(data=index)  for the standard data sets.

## The function is currently defined as
function (labels = c()) 
{
    par(mar = c(0.1, 0.1, 0.1, 0.1))
    plot(0, 0, type = "n", xlim = c(-0.8, 0.8), ylim = c(-0.6, 
        1), xlab = "", ylab = "", xaxt = "n", yaxt = "n", asp = 1, 
        frame.plot = F)
    vertices = diag(3)
    vertices <- rbind(vertices, vertices[1, ])
    v <- SimplexProjection(vertices)
    lines(v)
    positions <- c(1, 3, 1)
    for (i in seq(1, length(labels))) {
        text(v[i, 1], v[i, 2], pos = positions[i], labels[i], 
            offset = 1)
    }
  }
}
% Add one or more standard keywords, see file 'KEYWORDS' in the
% R documentation directory.
\keyword{ ~kwd1 }
\keyword{ ~kwd2 }% __ONLY ONE__ keyword per line
