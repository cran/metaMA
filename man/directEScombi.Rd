\name{directEScombi}
\alias{directEScombi}
%- Also NEED an '\alias' for EACH other topic documented here.
\title{ Direct effect size combination }
\description{
  Combines effect sizes already calculated.
}
\usage{
directEScombi(ES, varES, BHth = 0.05, useREM = TRUE)
}
%- maybe also 'usage' for other objects documented here.
\arguments{
  \item{ES}{Matrix of effect sizes. Each column of \code{ES} corresponds to one study and each row to one gene. }
  \item{varES}{ Matrix of effect size variances. Each column of \code{varES} corresponds to one study and each row to one gene. }
  \item{BHth}{ Benjamini Hochberg threshold. By default, the False Discovery Rate is controlled at 5\%. }
  \item{useREM}{ A logical value indicating whether or not to include the between-study variance into the model. }
}
\details{
  Combines effect sizes with the method presented in (Choi et al., 2003).
}
\value{
List
  \item{DEindices}{ Indices of differentially expressed genes at the chosen Benjamini Hochberg threshold.} 
  \item{TestStatistic}{Vector with test statistics for differential expression in the meta-analysis.} 
}
\references{ Choi, J. K., Yu, U., Kim, S., and Yoo, O. J. (2003). Combining multiple microarray
studies and modeling interstudy variation. Bioinformatics, 19 Suppl 1. }
% Add one or more standard keywords, see file 'KEYWORDS' in the
% R documentation directory.
\keyword{ methods }
\keyword{ models }% __ONLY ONE__ keyword per line
