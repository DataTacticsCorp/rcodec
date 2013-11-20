\name{codec.refined.soundex.difference}
\alias{codec.refined.soundex.difference}
\title{
codec.refined.soundex.difference: Calculate Refined Soundex difference for two strings.
}
\description{
  Calculates the Refined Soundex difference for two input strings.
}
\usage{
codec.refined.soundex.difference(input1, input2)
}
\arguments{
  \item{input1}{
The first string.
}
  \item{input}{
The second string.
}
}
\value{
   An integer representing the Refined Soundex difference.
}
\author{
Philip A Grim II (pgrim@data-tactics.com)
}

\examples{
  library(rCodec)
  codec.refined.soundex.difference("twelve","seventeen")
}

