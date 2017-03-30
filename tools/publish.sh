#!/bin/bash
if [ ! -d "public/.git" ]; then
	git clone --depth 1 --single-branch https://github.com/ukmc-web/ukmc.se -b gh-pages ../ukmc-web/public
fi
rm -rf public/*
hugo
pushd public
git add -A
git commit -m "$1"
git push -f
popd
