% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/SeqOpen.R
\name{SeqOpen}
\alias{SeqOpen}
\title{Open the gds file in SeqSQC objects.}
\usage{
SeqOpen(seqfile, readonly = TRUE, allow.duplicate = FALSE)
}
\arguments{
\item{seqfile}{SeqSQC object, which has been merged with benchmark
data.}

\item{readonly}{whether to open the gds file in read-only mode. If
"FALSE", it is allowed to write data to the file. The default
is TRUE.}

\item{allow.duplicate}{whether to allow to open a GDS file with
read-only mode when it has been opened in the same R
session. The default is FALSE.}
}
\value{
a gds file with the filepath in the input SeqSQC object.
}
\description{
Function to open the gds file inside the SeqSQC object.
}
\examples{
library(gdsfmt)
load(system.file("extdata", "example.seqfile.Rdata", package="SeqSQC"))
gfile <- system.file("extdata", "example.gds", package="SeqSQC")
seqfile <- SeqSQC(gdsfile = gfile, QCresult = QCresult(seqfile))
dat <- SeqOpen(seqfile)
dat
closefn.gds(dat)
}
\author{
Qian Liu \email{qliu7@buffalo.edu}
}
