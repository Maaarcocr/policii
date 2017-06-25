#!/bin/sh
setup_git() {
  cd dist
  git init
  git config --global user.email "travis@travis-ci.org"
  git config --global user.name "Travis CI"
}

commit_website_files() {
  git checkout -b gh-pages
  git add . 
  git commit --message "Travis build: $TRAVIS_BUILD_NUMBER"
}

upload_files() {
  git remote add origin-pages https://${GH_TOKEN}@github.com/Maaarcocr/policii 
  git push -f --quiet --set-upstream origin-pages gh-pages 
}

setup_git
commit_website_files
upload_files