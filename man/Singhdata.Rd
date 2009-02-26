\name{Singhdata}
\alias{Singhdata}
\docType{data}
\title{ Singh dataset}
\description{Publicly available microarray dataset artificially split in 5 studies }
\usage{data(Singhdata)}
\format{
List of 3 elements:
\describe{
 \item{ esets }{List of 5 data frames corresponding to 5 artificial studies, each with 12625 genes and 20 replicates (10 normal samples and 10 tumoral samples)}
 \item{ classes }{List of 5 numeric vectors with class memberships, one per study} 
 \item{ geneNames }{Factor with 12625 levels corresponding to gene names}
}
}
\source{ These data are available on the website \url{http : //www.bioinf.ucd.ie/people/ian/}. We considered 50 normal samples and 50 tumoral samples, leaving out the 2 last tumoral samples.
Data are already normalized. }
\references{Singh, D., Febbo, P. G., Ross, K., Jackson, D. G., Manola, J., Ladd, C., Tamayo, P.,
Renshaw, A. A., D'Amico, A. V., Richie, J. P., Lander, E. S., Loda, M., Kantoff,
P.W., Golub, T. R., and Sellers,W. R. (2002). Gene expression correlates of clinical prostate cancer behavior. Cancer Cell, 1(2). 203:209.
}
\examples{
data(Singhdata)
}
\keyword{datasets}
