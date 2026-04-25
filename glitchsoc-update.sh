#!/bin/bash
#echo "====================> Changing to LIVE dir."
#cd live
echo "====================> Stashing customizations."
git stash
echo "====================> Pulling new code."
git fetch glitch-soc
git pull glitch-soc main
echo "====================> Restoring customizations."
git stash pop
echo "====================> Performing bundle and yarn installs."
bundle install && yarn install
echo "====================> Performing DB migrate."
RAILS_ENV=production SKIP_POST_DEPLOYMENT_MIGRATIONS=true bundle exec rails db:migrate
echo "====================> Precompiling assets."
RAILS_ENV=production bundle exec rails assets:precompile
echo "=========================================="
echo "Execute 'postupdate.sh' to complete the upgrade."
echo "=========================================="
