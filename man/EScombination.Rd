\name{EScombination}
\alias{EScombination}
%- Also NEED an '\alias' for EACH other topic documented here.
\title{ Effect size combination for unpaired data  }
\description{
  Calculates effect sizes from unpaired data either from classical or moderated
t-tests (Limma, SMVar) for each study and combines these effect sizes.
}
\usage{
EScombination(esets, classes, moderated = c("limma", "SMVar", "t")[1], BHth = 0.05)
}
%- maybe also 'usage' for other objects documented here.
\arguments{
  \item{esets}{ List of matrices (or data frames), one matrix per study. Each matrix has one row per gene and one column per replicate and gives the expression data for both conditions with the order specified in the \code{classes} argument. All studies must have the same genes.
If the data are already stored as ExpressionSets objects (cf. Bioconductor project), then \code{exprs(yourdata)} will give an appropriate element of the list \code{esets} used for this function. }
  \item{classes}{ List of class memberships, one per study. Each vector or factor of the list can only contain two levels which correspond to the two conditions studied. }
  \item{moderated}{ Method to calculate the test statistic inside each study from which the effect size is computed. \code{moderated} has to be chosen between "limma", "SMVar" and "t". }
  \item{BHth}{ Benjamini Hochberg threshold. By default, the False Discovery Rate is controlled at 5\%. }
}
\value{
  List
  \item{Study1}{Vector of indices of differentially expressed genes in study 1. Similar names are given for the other individual studies.}
  \item{AllIndStudies}{Vector of indices of differentially expressed genes found by at least one of the individual studies.}
  \item{Meta }{Vector of indices of differentially expressed genes in the meta-analysis.}
  \item{TestStatistic}{Vector with test statistics for differential expression in the meta-analysis. }
}
\note{
While the invisible object resulting from this function contains 
the values described previously, other quantities of interest are printed: 
DE,IDD,Loss,IDR,IRR.
All these quantities are defined in function \code{IDDIDR} and in (Marot et al., 2008) 
}
\references{ Marot, G., Foulley, J.-L., Mayer, C.-D., Jaffrezic, F. (2009) Moderated effect size and p-value combinations for microarray meta-analyses. Bioinformatics. 25 (20): 2692-2699. }
\author{ Guillemette Marot }
\examples{
data(Singhdata)
#Meta-analysis
res=EScombination(esets=Singhdata$esets,classes=Singhdata$classes)
#Number of differentially expressed genes in the meta-analysis
length(res$Meta)
#To plot an histogram of raw p-values
rawpval=2*(1-pnorm(abs(res$TestStatistic)))
hist(rawpval,nclass=100)
}
% Add one or more standard keywords, see file 'KEYWORDS' in the
% R documentation directory.
\keyword{ methods }
\keyword{ models }% __ONLY ONE__ keyword per line
