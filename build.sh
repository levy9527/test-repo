#!/bin/sh
yarn build

git config --global user.email "897895407@qq.com"
git config --global user.name "levy9527"

git remote add github https://$GITHUB_TOKEN@github.com/levy9527/test-repo.git > /dev/null 2>&1
git push github HEAD:master --follow-tags

