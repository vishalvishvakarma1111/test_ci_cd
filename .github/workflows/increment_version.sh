#!/bin/bash

current_version=$1
# Add your logic to increment the version number based on your requirements
# For example, you can use regex matching or string manipulation to modify the version number

# Assuming the version number follows the format "x.y.z"
# Increment the last segment (z) by 1
new_version=$(echo $current_version | awk -F. -v OFS=. '{$NF++; print}')
gem 'fastlane'

echo "$new_version"
