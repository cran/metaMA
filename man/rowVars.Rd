\name{rowVars}
\alias{rowVars}
%- Also NEED an '\alias' for EACH other topic documented here.
\title{ Row variance of an array }
\description{
  Calculates variances of each row of an array
}
\usage{
rowVars(x, na.rm = TRUE)
}
%- maybe also 'usage' for other objects documented here.
\arguments{
  \item{x}{ Array of two or more dimensions, containing numeric, complex, integer or logical values, or a numeric data frame. }
  \item{na.rm}{ Logical. Should missing values (including NaN) be omitted from the calculations? }
}
\details{ This function is the same as applying apply with FUN=var but is a lot faster.}
\value{
A numeric or complex array of suitable size, or a vector if the result is one-dimensional. The dimnames (or names for a vector result) are taken from the original array.}
\examples{
## The function is currently defined as
function (x,na.rm = TRUE) 
{
    sqr = function(x) x * x
    n = rowSums(!is.na(x))
    n[n <= 1] = NA
    return(rowSums(sqr(x - rowMeans(x,na.rm = na.rm)), na.rm = na.rm)/(n - 1))
  }
}
% Add one or more standard keywords, see file 'KEYWORDS' in the
% R documentation directory.
\keyword{ methods }
\keyword{ models }% __ONLY ONE__ keyword per line
