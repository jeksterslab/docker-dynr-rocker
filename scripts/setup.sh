#!/bin/bash

set -e

bash ubuntu_sys_pkg.sh
bash ubuntu_cran_pkg.sh
bash custom.sh
bash mpdemo.sh
bash post.sh
