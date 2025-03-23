#!/bin/bash
#echo "====================> Changing to LIVE dir."
#cd live
echo "====================> Stashing customizations."
git stash
echo "====================> Pulling new code."
git pull glitch-soc main
echo "====================> Restoring customizations."
git stash pop
echo "====================> Performing bundle and yarn installs."
bundle install && yarn install
echo "====================> Performing DB pre-migrate."
RAILS_ENV=production SKIP_POST_DEPLOYMENT_MIGRATIONS=true bundle exec rails db:migrate
echo "====================> Precompiling assets."
RAILS_ENV=production bundle exec rails assets:precompile
echo "=========================================="
echo "Restart services with:  systemctl reload mastodon-web && systemctl restart mastodon-{sidekiq,streaming}"
echo "Then execute:           RAILS_ENV=production bin/tootctl cache clear"
echo "Finally migrate the DB: RAILS_ENV=production bundle exec rails db:migrate"
echo "=========================================="
