\name{PlotTrajectory}
\alias{PlotTrajectory}
%- Also NEED an '\alias' for EACH other topic documented here.
\title{
Plot a single trajectory.
}
\description{
%%  ~~ A concise (1-5 lines) description of what the function does. ~~
}
\usage{
PlotTrajectory(trajectory, max.values)
}
%- maybe also 'usage' for other objects documented here.
\arguments{
  \item{trajectory}{
%%     ~~Describe \code{trajectory} here~~
}
  \item{max.values}{
%%     ~~Describe \code{max.values} here~~
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
function (trajectory, max.values) 
{
    try({
        n <- if (is.nan(max.values)) 
            nrow(trajectory)
        else min(max.values, nrow(trajectory))
        trajectory.params <- SimplexProjection(trajectory[1:n, 
            ])
        xy <- trajectory.params
        lines(xy)
        last.position <- xy[n, ]
        points(last.position[1], last.position[2])
    })
  }
}
% Add one or more standard keywords, see file 'KEYWORDS' in the
% R documentation directory.
\keyword{ ~kwd1 }
\keyword{ ~kwd2 }% __ONLY ONE__ keyword per line
