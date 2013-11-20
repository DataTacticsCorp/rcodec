\name{codec.nysiis}
\alias{codec.nysiis}
\alias{codec.nysiis.unstrict}
\title{
codec.nysis: Encode character vectors with NYSIIS algorithm.
}
\description{
  Encodes each string represented in the input character vector
  using the NYSIIS algorithm. In normal mode, the resulting encoded
  strings have a max length of 6.  In unstrict mode, the resulting
  strings can have arbitrary length.
}
\usage{
codec.nysiis(input)
codec.nysiis.unstrict(input)
}
\arguments{
  \item{input}{
The vector of strings to encode.
}
}
\value{
   A vector of strings containing the resulting NYSIIS codes.
}
\author{
Philip A Grim II (pgrim@data-tactics.com)
}

\examples{
  library(rCodec)
  codec.nysiis(c("twelve","seventeen"))
}

