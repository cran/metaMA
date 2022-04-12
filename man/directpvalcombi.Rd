\name{directpvalcombi}
\alias{directpvalcombi}
%- Also NEED an '\alias' for EACH other topic documented here.
\title{ Direct p-value combination }
\description{
  Combines one sided p-values with the inverse normal method.
}
\usage{
directpvalcombi(pvalonesided, nrep, BHth = 0.05)
}
%- maybe also 'usage' for other objects documented here.
\arguments{
  \item{pvalonesided}{ List of vectors of one sided p-values to be combined. }
  \item{nrep}{ Vector of numbers of replicates used in each study to calculate the previous one-sided p-values. }
  \item{BHth}{ Benjamini Hochberg threshold. By default, the False Discovery Rate is controlled at 5\%. }
}
\value{
List
  \item{DEindices}{ Indices of differentially expressed genes at the chosen Benjamini Hochberg threshold.} 
  \item{TestStatistic}{Vector with test statistics for differential expression in the meta-analysis.} 
}
\references{ Hedges, L. and Olkin, I. (1985). Statistical Methods for Meta-Analysis. Academic
Press. }
\author{ Guillemette Marot }
\note{ One-sided p-values are required to avoid directional conflicts. Then a two-sided test is performed
to find differentially expressed genes. 
}
\keyword{ methods }
\keyword{ models }% __ONLY ONE__ keyword per line

