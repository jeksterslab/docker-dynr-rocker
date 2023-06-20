#!/bin/bash

git clone git@github.com:jeksterslab/docker-dynr-rocker.git
rm -rf "$PWD.git"
mv docker-dynr-rocker/.git "$PWD"
rm -rf docker-dynr-rocker
