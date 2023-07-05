#!/bin/bash

set -e

install2.r --error --skipinstalled -n -1 \
  car            \
  deSolve        \
  devtools       \
  fda            \
  fds            \
  ggplot2        \
  knitr          \
  languageserver \
  latex2exp      \
  magrittr       \
  MASS           \
  Matrix         \
  mice           \
  numDeriv       \
  plyr           \
  Rcpp           \
  RcppArmadillo  \
  RcppGSL        \
  Rdpack         \
  remotes        \
  reshape2       \
  rmarkdown      \
  Ryacas         \
  stringi        \
  testthat       \
  tibble         \
  tinytex        \
  xtable

# vscode project dependencies
install2.r --error --skipinstalled -n -1 \
  languageserver \
  httpgd         \
  styler         \
  lintr

# autoVAR dependencies
install2.r --error --skipinstalled -n -1 \
  qgraph \
  igraph \
  fclust
