#!/bin/bash

# Source: http://erajasekar.com/posts/how-to-publish-blog-from-notion/
notablog generate .
rm -rf docs
cp -r public docs
git add .
git commit -m "$1"
git push origin master
