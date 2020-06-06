#!/bin/bash

# Change directories to the directory that contains this file
cd "$( dirname "${BASH_SOURCE[0]}" )"

# Start the app / do something else
bundle exec jekyll serve --trace
