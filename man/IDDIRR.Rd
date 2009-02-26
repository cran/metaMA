\name{IDDIRR}
\alias{IDDIRR}
%- Also NEED an '\alias' for EACH other topic documented here.
\title{ Integration-driven Discovery and Integration-driven Revision Rates }
\description{
  Calculates the gain or the loss of differentially expressed genes due to meta-analysis
compared to individual studies.
}
\usage{
IDDIRR(finalde, deindst)
}
%- maybe also 'usage' for other objects documented here.
\arguments{
  \item{finalde}{ Vector of indices of differentially expressed genes after meta-analysis }
  \item{deindst}{ Vector of indices of differentially expressed genes found at least in one study }
}
\value{
  \item{DE }{Number of Differentially Expressed (DE) genes }
  \item{IDD }{Integration Driven Discoveries: number of genes that are declared DE in
the meta-analysis that were not identified in any of
the individual studies alone.}
  \item{Loss}{Number of genes that are declared DE in individual studies but not in meta-analysis.}
  \item{IDR}{Integration-driven Discovery Rate: proportion of genes that are identified as DE in the meta-analysis that were not
identified in any of the individual studies alone.}
  \item{IRR}{Integration-driven Revision Rate: percentage of genes
that are declared DE in individual studies but not in meta-analysis.}
}
\references{
Marot, G., Foulley, J.-L., Mayer, C.-D., Jaffrezic, F. Moderated effect size and p-value combinations for microarray meta-analyses. Submitted. }
\author{ Guillemette Marot }
\examples{
data(Singhdata)
out=EScombination(esets=Singhdata$esets,classes=Singhdata$classes)
IDDIRR(out$Meta,out$AllIndStudies)

## The function is currently defined as
#function(finalde,deindst)
#{
#DE=length(finalde)
#gains=finalde[which(!(finalde \%in\% deindst))]
#IDD=length(gains)
#IDR=IDD/DE*100
#perte=which(!(deindst \%in\% finalde))
#Loss=length(perte)
#IRR=Loss/length(deindst)*100
#res=c(DE,IDD,Loss,IDR,IRR)
#names(res)=c("DE","IDD","Loss","IDR","IRR")
#res
#}
}
\keyword{ methods }
\keyword{ models }% __ONLY ONE__ keyword per line
