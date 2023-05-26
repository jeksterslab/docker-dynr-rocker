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

# to build documentation
RUN Rscript -e "devtools::install_version(package = 'roxygen2',version = '5.0.1', repos = c(CRAN = 'https://cran.rstudio.com'))"

# dynr
RUN cd /home/rstudio \
    && git clone https://github.com/mhunter1/dynr.git \
    && cd dynr \
    && sed -i 's/, \"shortPathName\"//g' NAMESPACE
    && ./configure \
    && make clean install

# author
MAINTAINER "Ivan Jacob Agaloos Pesigan <learn.jeksterslab@gmail.com>"

# extra metadata
LABEL description="dynr-rocker container."
