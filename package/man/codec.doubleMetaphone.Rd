\name{codec.doubleMetaphone}
\alias{codec.doubleMetaphone}
\title{
codec.doubleMetaphone: Calculate double metaphone code for character vectors.
}
\description{
  Calculates the double metaphone code for each string represented in the input
  character vector.
}
\usage{
codec.doubleMetaphone(input, maxlen=as.integer(4), alternate=FALSE)
}
\arguments{
  \item{input}{
The vector of strings to calculate double metaphone codes for.
}
  \item{maxlen}{
The maximum length of the resulting codes.  Default is 4.
}
  \item{alternate}{
Whether or not to use alternate coding (See Commons Codec documentation).
}
}
\value{
   A vector of strings containing the resulting double metaphone codes.
}
\author{
Philip A Grim II (pgrim@data-tactics.com)
}

\examples{
  library(rCodec)
  codec.doubleMetaphone(c("twelve","seventeen"),6,FALSE)
}

