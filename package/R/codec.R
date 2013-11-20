## Copyright 2013 Data Tactics Corporation
##
## Licensed under the Apache License, Version 2.0 (the "License");
## you may not use this file except in compliance with the License.
## You may obtain a copy of the License at
##
##     http://www.apache.org/licenses/LICENSE-2.0
##
## Unless required by applicable law or agreed to in writing, software
## distributed under the License is distributed on an "AS IS" BASIS,
## WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
## See the License for the specific language governing permissions and
## limitations under the License.
require(rJava)

codec.defaults <- function(arg){
  if(missing(arg)){
    as.list(.codecEnv)
  } else rCodec:::.codecEnv[[arg]]
}

codec.doubleMetaphone <- function(input, maxlen=as.integer(4),alternate=FALSE){
  ## Calculates the double metaphone for the input strings
  ## input = a vector of strings to calculate the double metaphone for
  ## maxlen = the maximum length for the returned codes
  ## alternate = indicates whether or not to use alternate encoding
  ## return: a vector of strings containing the metaphones
  if (missing(input)) stop("No input specified")
  dmjo <- codec.defaults("double_metaphone")
  if (class(dmjo) == "NULL"){
    dmjo <- .jnew("org/apache/commons/codec/language/DoubleMetaphone")
    assign("double_metaphone",dmjo,envir=rCodec:::.codecEnv)
  }
  .jcall(dmjo,"V", "setMaxCodeLen", as.integer(maxlen))
  idx <- 1;
  y <- vector()
  length(y) <- length(input)
  while (idx <= length(input))
  {
    y[[idx]] <- .jcall(dmjo,"S", "doubleMetaphone", as.character(input[[idx]]), as.logical(alternate))
    idx <- idx + 1
  }
  names(y) <- input
  y
}

codec.metaphone <- function(input, maxlen=as.integer(4)){
  ## Calculates the metaphone for the input strings
  ## input = a vector of strings to calculate the metaphone for
  ## maxlen = the maximum length for the returned codes
  ## return: a vector of strings containing the metaphones
  if (missing(input)) stop("No input specified")
  mjo <- codec.defaults("metaphone")
  if (class(mjo) == "NULL"){
    mjo <- .jnew("org/apache/commons/codec/language/Metaphone")
    assign("metaphone",mjo,envir=rCodec:::.codecEnv)
  }
  .jcall(mjo,"V", "setMaxCodeLen", as.integer(maxlen))
  idx <- 1;
  y <- vector()
  length(y) <- length(input)
  while (idx <= length(input))
  {
    y[[idx]] <- .jcall(mjo,"S", "metaphone", as.character(input[[idx]]))
    idx <- idx + 1
  }
  names(y) <- input
  y
}

codec.caverphone <- function(input){
  ## Calculates the Caverphone 2.0 value for the input strings
  ## input = a vector of strings to calculate the Caverphone for
  ## return: a vector of strings containing the Caverphones
  if (missing(input)) stop("No input specified")
  c2jo <- codec.defaults("caverphone2")
  if (class(c2jo) == "NULL"){
    c2jo <- .jnew("org/apache/commons/codec/language/Caverphone2")
    assign("caverphone2",c2jo,envir=rCodec:::.codecEnv)
  }
  idx <- 1;
  y <- vector()
  length(y) <- length(input)
  while (idx <= length(input))
  {
    y[[idx]] <- .jcall(c2jo,"S", "encode", as.character(input[[idx]]))
    idx <- idx + 1
  }
  names(y) <- input
  y
}

codec.caverphone1 <- function(input){
  ## Calculates the Caverphone 1.0 value for the input strings
  ## input = a vector of strings to calculate the Caverphone for
  ## return: a vector of strings containing the Caverphones
  if (missing(input)) stop("No input specified")
  c1jo <- codec.defaults("caverphone1")
  if (class(c1jo) == "NULL"){
    c1jo <- .jnew("org/apache/commons/codec/language/Caverphone1")
    assign("caverphone1",c1jo,envir=rCodec:::.codecEnv)
  }
  idx <- 1;
  y <- vector()
  length(y) <- length(input)
  while (idx <= length(input))
  {
    y[[idx]] <- .jcall(c1jo,"S", "encode", as.character(input[[idx]]))
    idx <- idx + 1
  }
  names(y) <- input
  y
}

codec.colognePhonetic <- function(input){
  ## Calculates the Cologne Phonetic value for the input strings
  ## input = a vector of strings to calculate the Cologne Phonetic for
  ## return: a vector of strings containing the Cologne Phonetic values
  if (missing(input)) stop("No input specified")
  cpjo <- codec.defaults("colognephonetic")
  if (class(cpjo) == "NULL"){
    cpjo <- .jnew("org/apache/commons/codec/language/ColognePhonetic")
    assign("colognephonetic",cpjo,envir=rCodec:::.codecEnv)
  }
  idx <- 1;
  y <- vector()
  length(y) <- length(input)
  while (idx <= length(input))
  {
    y[[idx]] <- .jcall(cpjo,"S", "colognePhonetic", as.character(input[[idx]]))
    idx <- idx + 1
  }
  names(y) <- input
  y
}

codec.nysiis <- function(input){
  ## Encodes the input strings using the strict NYSIIS algorithm.
  ## input = a vector of strings to calculate the NYSIIS values for
  ## return: a vector of strings containing the NYSIIS values
  if (missing(input)) stop("No input specified")
  jo <- codec.defaults("nysiis")
  if (class(jo) == "NULL"){
    jo <- .jnew("org/apache/commons/codec/language/Nysiis", TRUE)
    assign("nysiis",jo,envir=rCodec:::.codecEnv)
  }
  idx <- 1;
  y <- vector()
  length(y) <- length(input)
  while (idx <= length(input))
  {
    y[[idx]] <- .jcall(jo,"S", "nysiis", as.character(input[[idx]]))
    idx <- idx + 1
  }
  names(y) <- input
  y
}

codec.nysiis.unstrict <- function(input){
  ## Encodes the input strings using the non-strict NYSIIS algorithm.
  ## input = a vector of strings to calculate the NYSIIS values for
  ## return: a vector of arbitrary-length strings containing the NYSIIS values
  if (missing(input)) stop("No input specified")
  jo <- codec.defaults("nysiisunstrict")
  if (class(jo) == "NULL"){
    jo <- .jnew("org/apache/commons/codec/language/Nysiis", FALSE)
    assign("nysiisunstrict",jo,envir=rCodec:::.codecEnv)
  }
  idx <- 1;
  y <- vector()
  length(y) <- length(input)
  while (idx <= length(input))
  {
    y[[idx]] <- .jcall(jo,"S", "encode", as.character(input[[idx]]))
    idx <- idx + 1
  }
  names(y) <- input
  y
}

codec.soundex <- function(input){
  ## Calculates the Soundex for the input strings
  ## input = a vector of strings to calculate the Soundex for
  ## return: a vector of strings containing the Soundex codes
  if (missing(input)) stop("No input specified")
  jo <- codec.defaults("soundex")
  if (class(jo) == "NULL"){
    jo <- .jnew("org/apache/commons/codec/language/Soundex")
    assign("soundex",jo,envir=rCodec:::.codecEnv)
  }
  idx <- 1;
  y <- vector()
  length(y) <- length(input)
  while (idx <= length(input))
  {
    y[[idx]] <- .jcall(jo,"S", "soundex", as.character(input[[idx]]))
    idx <- idx + 1
  }
  names(y) <- input
  y
}

codec.soundex.difference <- function(input1, input2){
  ## Calculates the Soundex difference for the two input strings
  ## input1 = The first string
  ## input2 = The second string
  ## return: an integer value representing the Soundex difference
  if (missing(input1)) stop("First string not specified")
  if (missing(input2)) stop("Second string not specified")
  jo <- codec.defaults("soundex")
  if (class(jo) == "NULL"){
    jo <- .jnew("org/apache/commons/codec/language/Soundex")
    assign("soundex",jo,envir=rCodec:::.codecEnv)
  }
  y <- as.integer(.jcall(jo,"I", "difference", as.character(input1),as.character(input2)))
  y
}

codec.refined.soundex <- function(input){
  ## Calculates the Refined Soundex for the input strings
  ## input = a vector of strings to calculate the Refined Soundex for
  ## return: a vector of strings containing the Refined Soundex codes
  if (missing(input)) stop("No input specified")
  jo <- codec.defaults("refinedsoundex")
  if (class(jo) == "NULL"){
    jo <- .jnew("org/apache/commons/codec/language/RefinedSoundex")
    assign("refinedsoundex",jo,envir=rCodec:::.codecEnv)
  }
  idx <- 1;
  y <- vector()
  length(y) <- length(input)
  while (idx <= length(input))
  {
    y[[idx]] <- .jcall(jo,"S", "soundex", as.character(input[[idx]]))
    idx <- idx + 1
  }
  names(y) <- input
  y
}

codec.refined.soundex.difference <- function(input1, input2){
  ## Calculates the Refined Soundex difference for the two input strings
  ## input1 = The first string
  ## input2 = The second string
  ## return: an integer value representing the Refined Soundex difference
  if (missing(input1)) stop("First string not specified")
  if (missing(input2)) stop("Second string not specified")
  jo <- codec.defaults("refinedsoundex")
  if (class(jo) == "NULL"){
    jo <- .jnew("org/apache/commons/codec/language/RefinedSoundex")
    assign("refinedsoundex",jo,envir=rCodec:::.codecEnv)
  }
  y <- as.integer(.jcall(jo,"I", "difference", as.character(input1),as.character(input2)))
  y
}
