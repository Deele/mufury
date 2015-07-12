#!/bin/bash

lessc dist/css/main.less --source-map=dist/css/main.less.map --source-map-basepath=/vagrant/dist --source-map-rootpath=/ --source-map-url=/css/main.less.map --clean-css > dist/css/main.css