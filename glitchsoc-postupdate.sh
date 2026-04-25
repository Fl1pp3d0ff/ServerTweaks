#!/bin/bash
echo "========== Restarting services mastodon-web, mastodon-sidekiq, and mastodon-streaming"
systemctl reload mastodon-web && systemctl restart mastodon-{sidekiq,streaming}
echo "========== Clearing cache for DB migrate"
RAILS_ENV=production bin/tootctl cache clear
echo "========== Migrating DB."
RAILS_ENV=production bundle exec rails db:migrate
echo "========== If there were no errors, your upgrade is complete.
