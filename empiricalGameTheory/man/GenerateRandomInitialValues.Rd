\name{GenerateRandomInitialValues}
\alias{GenerateRandomInitialValues}
%- Also NEED an '\alias' for EACH other topic documented here.
\title{
Generate random initial values by drawing from  a Dirchlett distribution.
}
\description{
%%  ~~ A concise (1-5 lines) description of what the function does. ~~
}
\usage{
GenerateRandomInitialValues(n = 100, dim = 3, alpha = rep(1, dim))
}
%- maybe also 'usage' for other objects documented here.
\arguments{
  \item{n}{
%%     ~~Describe \code{n} here~~
}
  \item{dim}{
%%     ~~Describe \code{dim} here~~
}
  \item{alpha}{
%%     ~~Describe \code{alpha} here~~
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
function (n = 100, dim = 3, alpha = rep(1, dim)) 
{
    values.matrix <- rdirichlet(n, alpha)
    values.list <- list()
    for (i in 1:n) {
        values.list[[i]] <- values.matrix[i, ]
    }
    values.list
  }
}
% Add one or more standard keywords, see file 'KEYWORDS' in the
% R documentation directory.
\keyword{ ~kwd1 }
\keyword{ ~kwd2 }% __ONLY ONE__ keyword per line
