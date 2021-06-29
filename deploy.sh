#!/usr/bin/env sh

# abort on errors
set -e

cd src

# if you are deploying to a custom domain
# echo 'www.example.com' > CNAME
yarn generate

yarn start

cd -