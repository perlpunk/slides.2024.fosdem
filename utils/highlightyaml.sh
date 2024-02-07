#!/bin/bash

yamltidy yaml/data/useless-quotes.yaml >yaml/data/useless-quotes-tidied.yaml
for i in ansible-example1.yaml \
  github-example1.yaml \
  resolving1.yaml \
  useless-quotes.yaml \
  useless-quotes-tidied.yaml \
  yamltidy.yaml \
  ys-data.yaml \
  ys-places.yaml \
  ys-example.ys \
  ys-output.txt
do
    perl utils/yaml2html.pl yaml/data/$i >yaml/data/$i.html
done
