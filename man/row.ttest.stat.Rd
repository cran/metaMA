\name{row.ttest.stat}
\alias{row.ttest.stat}
%- Also NEED an '\alias' for EACH other topic documented here.
\title{ Row t-tests }
\description{
   Performs t-tests for unpaired data row by row.
}
\usage{
row.ttest.stat(mat1, mat2)
}
%- maybe also 'usage' for other objects documented here.
\arguments{
  \item{mat1}{ Matrix with data for the first condition }
  \item{mat2}{ Matrix with data for the second condition }
}
\details{
  This function is much faster than employing apply with FUN=t.test

}
\value{
   Vector with t-test statistics
}
\examples{
## The function is currently defined as
function(mat1,mat2){ 
n1<-dim(mat1)[2]
n2<-dim(mat2)[2] 
n<-n1+n2 
m1<-rowMeans(mat1,na.rm=TRUE) 
m2<-rowMeans(mat2,na.rm=TRUE) 
v1<-rowVars(mat1,na.rm=TRUE) 
v2<-rowVars(mat2,na.rm=TRUE) 
vpool<-(n1-1)/(n-2)*v1 + (n2-1)/(n-2)*v2 
tstat<-sqrt(n1*n2/n)*(m1-m2)/sqrt(vpool) 
return(tstat)}
}
% Add one or more standard keywords, see file 'KEYWORDS' in the
% R documentation directory.
\keyword{ methods }
\keyword{ models }% __ONLY ONE__ keyword per line
