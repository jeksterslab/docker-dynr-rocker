FROM jeksterslab/rocker

# gsl
RUN wget https://ftp.gnu.org/gnu/gsl/gsl-2.7.tar.gz \
    && tar -zxvpf gsl-2.7.tar.gz \
    && cd gsl-2.7 \
    && ./configure \
    && make \
    && make install

# install R packages
# dynr dependencies
# other useful packages
RUN install2.r --error \
        MASS           \
        Matrix         \
        numDeriv       \
        xtable         \
        latex2exp      \
        grid           \
        reshape2       \
        plyr           \
        mice           \
        magrittr       \
        methods        \
        fda            \
        car            \
        stringi        \
        tibble         \
        deSolve        \
        Rdpack         \
        testthat       \
        roxygen2       \
        knitr          \
        rmarkdown      \
        RcppGSL        \
        lavaan         \
        OpenMx

# dynr
RUN wget https://github.com/mhunter1/dynr/archive/refs/tags/v0.1.16.tar.gz \
    && tar -vxjf v0.1.16.tar.gz \
    && cd v0.1.16 \
    && ./configure \
    && make install

# author
MAINTAINER "Ivan Jacob Agaloos Pesigan <learn.jeksterslab@gmail.com>"

# extra metadata
LABEL description="dynr-rocker container."
