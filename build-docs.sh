#!/bin/sh
(cd doc; make)
cp -vr doc/index.html /tmp/index.html;
cp -vr doc/static /tmp/static
git checkout gh-pages;
rm -rf *
mv -fv /tmp/index.html .
mv -fv /tmp/static .
git add --all index.html
git commit -a -m "Update doc"