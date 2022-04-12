\name{calcfit2Diffrep}
\alias{calcfit2Diffrep}
%- Also NEED an '\alias' for EACH other topic documented here.
\title{ Empirical Bayes statistics from limma analysis with unpaired data }
\description{
  Computes empirical Bayes statistics from limma analysis with only one group effect. 
}
\usage{
calcfit2Diffrep(C1, C2)
}
%- maybe also 'usage' for other objects documented here.
\arguments{
  \item{C1}{ Gene expression data of the arrays in the first condition. Each row of \code{C1} corresponds to one spot, each column to one replicate. }
  \item{C2}{ Gene expression data of the arrays in the second condition. Each row of \code{C2} corresponds to one spot, each column to one replicate. }
}
\details{
  Returns fit2 described in limma vignette. To be used with unpaired data.
}
\value{
  fit2
}
\note{ 

  see Bioconductor limma vignette  
}
\keyword{ methods }
\keyword{ models }% __ONLY ONE__ keyword per line

