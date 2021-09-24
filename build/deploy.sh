#!/usr/bin/env sh

set -e

npm run build

cd docs/.vuepress/dist

git init
git config user.name 'GuoUI'
git config user.email 'guoheiter@outlook.com'
git add -A
git commit -m 'deploy'

git push -f https://github.com/GuoUI/vue-design.git master:gh-pages

cd -