\name{metaMA-package}
\alias{metaMA-package}
\alias{metaMA}
\docType{package}
\title{ Meta-analysis for MicroArrays }
\description{
Combines either p-values or moderated effect sizes from different studies to find differentially expressed genes.}
\details{
\tabular{ll}{
Package: \tab metaMA\cr
Type: \tab Package\cr
Version: \tab 1.1\cr
Date: \tab 2009-02-26\cr
License: \tab GPL \cr
LazyLoad: \tab yes\cr
}
\code{pvalcombination} and \code{EScombination} are the most important functions to combine unpaired data.

\code{pvalcombination} combines p-values from individual studies. 

\code{EScombination} combines effect sizes from individual studies.

\code{pvalcombination.paired} and \code{EScombination.paired} are to be used for paired data.

\code{IDDIDR} can help in the interpretation of gain and loss of information due to meta-analysis.
}
\author{
Guillemette Marot <guillemette.marot@jouy.inra.fr>
}
\references{
Marot, G., Foulley, J.-L., Mayer, C.-D., Jaffrezic, F. Moderated effect size and p-value combinations for microarray meta-analyses. Submitted. }
\keyword{ package }
\examples{
library(metaMA)
data(Singhdata)
EScombination(esets=Singhdata$esets,classes=Singhdata$classes)
pvalcombination(esets=Singhdata$esets,classes=Singhdata$classes)
}
