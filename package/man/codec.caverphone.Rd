\name{codec.caverphone}
\alias{codec.caverphone}
\alias{codec.caverphone2}
\title{
codec.caverphone: Calculate Caverphone code for character vectors.
}
\description{
  Calculates the Caverphone code for each string represented in the input
  character vector. The Caverphone 2.0 algorithm is used by default.
}
\usage{
codec.caverphone(input)
codec.caverphone1(input)
}
\arguments{
  \item{input}{
The vector of strings to calculate Caverphone codes for.
}
}
\value{
   A vector of strings containing the resulting Caverphone codes.
}
\author{
Philip A Grim II (pgrim@data-tactics.com)
}

\examples{
  library(rCodec)
  codec.caverphone(c("twelve","seventeen"))
}

