start:
	bundle exec puma -C config/puma.rb

setup:
	bin/setup
	bin/rails db:fixtures:load

build:
	bundle install --without test development && \
	bundle exec rake assets:precompile && \
	bundle exec rake assets:clean && \
	bundle exec rake db:migrate
