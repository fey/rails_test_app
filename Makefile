start:
	bundle exec puma -t 5:5 -p ${PORT:-3000} -e ${RACK_ENV:-development}

setup:
	bin/setup
	bin/rails db:fixtures:load

build:
	bundle install --without test development && \
	bundle exec rake assets:precompile && \
	bundle exec rake assets:clean && \
	bundle exec rake db:migrate
