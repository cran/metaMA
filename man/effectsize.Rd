\name{effectsize}
\alias{effectsize}
\title{ Calculates effect sizes from given t or moderated t statistics }
\description{
  Function not to be used separately.
}
\usage{
effectsize(tstat, ntilde, m)
}
\arguments{
  \item{tstat}{ Vector of test statistics and effect sizes. }
  \item{ntilde}{ Proportion factor between a test statistic and its corresponding effect size. }
  \item{m}{ Number of degrees of freedom. }
}
\value{
Matrix with one row per gene, and in column:
  \item{d}{Commonly used effect size (which is biased)}
  \item{vard}{ Variance of the commonly used effect size}
  \item{dprime}{ Unbiased effect size }
  \item{vardprime}{ Variance of the unbiased effect size}
}
\references{
Marot, G., Foulley, J.-L., Mayer, C.-D., Jaffrezic, F. Moderated effect size and p-value combinations for microarray meta-analyses. Submitted. }
\author{ Guillemette Marot }
\examples{
#for SMVar: 
#stati$TestStat[order(stati$GeneId)],length(classes[[i]]),stati$DegOfFreedom[order(stati$GeneId)])
#for Limma
#effectsize(fit2i$t,length(classes[[i]]),(fit2i$df.prior+fit2i$df.residual))
}
\keyword{ methods }
\keyword{ models }

