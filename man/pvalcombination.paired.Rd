\name{pvalcombination.paired}
\alias{pvalcombination.paired}
%- Also NEED an '\alias' for EACH other topic documented here.
\title{ P-value combination for paired data }
\description{
Calculates differential expression p-values from paired data either from classical or moderated
t-tests (Limma, SMVar) for each study and combines these p-values by the inverse normal method.
}
\usage{
pvalcombination.paired(logratios, moderated = c("limma", "SMVar", "t")[1], BHth = 0.05)
}
%- maybe also 'usage' for other objects documented here.
\arguments{
  \item{logratios}{ List of matrices. Each matrix has one row per gene and one column per replicate and gives the logratios of one study. All studies must have the same genes.}
  \item{moderated}{ Method to calculate the test statistic inside each study from which the effect size is computed. \code{moderated} has to be chosen between "limma", "SMVar" and "t". }
  \item{BHth}{ Benjamini Hochberg threshold. By default, the False Discovery Rate is controlled at 5\%. }
}
\value{
  List
  \item{Study1}{Vector of indices of differentially expressed genes in study 1. Similar names are given for the other individual studies.}
  \item{AllIndStudies}{Vector of indices of differentially expressed genes found by at least one of the individual studies.}
  \item{Meta }{Vector of indices of differentially expressed genes in the meta-analysis.}
  \item{TestStatistic}{Vector with test statistics for differential expression in the meta-analysis.} 
}
\note{
While the invisible object resulting from this function contains 
the values described previously, other quantities of interest are printed: 
DE,IDD,Loss,IDR,IRR.
All these quantities are defined in function \code{IDDIDR} and in (Marot et al., 2009) 
}
\references{
Marot, G., Foulley, J.-L., Mayer, C.-D., Jaffrezic, F. Moderated effect size and p-value combinations for microarray meta-analyses. Submitted. }
\author{ Guillemette Marot }
\examples{
data(Singhdata)
#create artificially paired data:
artificialdata=lapply(Singhdata$esets,FUN=function(x) (x[,1:10]-x[,11:20]))
#Meta-analysis
res=pvalcombination.paired(artificialdata)
#Number of differentially expressed genes in the meta-analysis
length(res$Meta)
#To plot an histogram of raw p-values from the meta-analysis
rawpval=2*(1-pnorm(abs(res$TestStatistic)))
hist(rawpval,nclass=100)
}
% Add one or more standard keywords, see file 'KEYWORDS' in the
% R documentation directory.
\keyword{ methods }
\keyword{ models }% __ONLY ONE__ keyword per line
