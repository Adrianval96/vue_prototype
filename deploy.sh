#!/usr/bin/env sh

cd src

# if you are deploying to a custom domain
# echo 'www.example.com' > CNAME
yarn --max_old_space_size=390 build

yarn --max_old_space_size=390 start

cd -