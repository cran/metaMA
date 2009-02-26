\name{row.ttest.statp}
\alias{row.ttest.statp}
%- Also NEED an '\alias' for EACH other topic documented here.
\title{ Row paired t-tests }
\description{
  Performs t-tests for paired data row by row.
}
\usage{
row.ttest.statp(mat)
}
%- maybe also 'usage' for other objects documented here.
\arguments{
  \item{mat}{ Matrix with data to be tested (for example, log-ratios in microarray experiments). }
}
\details{
  This function is much faster than employing apply with FUN=t.test.
}
\value{
  Vector with t-test statistics.
}
\examples{
## The function is currently defined as
function(mat){ 
m<-rowMeans(mat,na.rm=TRUE) 
sd<-rowSds(mat,na.rm=TRUE)  
tstat<-m/(sd*sqrt(1/dim(mat)[2])) 
return(tstat)}
}
% Add one or more standard keywords, see file 'KEYWORDS' in the
% R documentation directory.
\keyword{ methods }
\keyword{ models }% __ONLY ONE__ keyword per line
