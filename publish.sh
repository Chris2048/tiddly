#!/bin/bash

tiddlywiki ./wiki/ --build
pushd ./wiki/output/ || exit 1
git add .
git commit -m "Deploy to GitHub Pages $(date)"
git push "git@github.com:Chris2048/tiddly.git" master:gh-pages
popd

