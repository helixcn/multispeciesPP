\name{linear}
\alias{linear}
%- Also NEED an '\alias' for EACH other topic documented here.
\title{
  Linear "family" for rows.
}
\description{
  Allows us to encode a GLM with an extra
  linear term as a GLM.
}
\usage{
linear(tol = 1e-10)
}
%- maybe also 'usage' for other objects documented here.
\arguments{
  \item{tol}{
    Numerical tolerance.  Should be small.
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
  William Fithian
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
function (tol = 1e-10)
{
    structure(list(family = "linear", linkfun = function(mu) mu/tol,
        linkinv = function(eta) eta * tol, variance = function(mu) rep(tol,
            length(mu)), dev.resids = function(y, mu, wt) -2 *
            wt * y * mu/tol, mu.eta = function(eta) rep(tol,
            length(eta)), validmu = function(mu) TRUE, valideta = function(eta) TRUE,
        class = "family"))
  }
}
% Add one or more standard keywords, see file 'KEYWORDS' in the
% R documentation directory.
\keyword{ ~kwd1 }
\keyword{ ~kwd2 }% __ONLY ONE__ keyword per line
