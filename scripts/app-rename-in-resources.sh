#!/bin/bash

find $1 -type f -name "strings.xml" -exec sed -i 's/LibreTube/FlexTube/g' {} +
