FROM bitnami/redmine:4.1.0-debian-10-r25

RUN apt-get update

RUN apt-get install -yqq \
       gcc \
       make \
       pkg-config \
       libxml2 \
       default-libmysqlclient-dev \
       libpq-dev \
       imagemagick \
       libmagickcore-dev\
       libmagickwand-dev


WORKDIR /opt/bitnami/redmine

COPY redmine_agile /opt/bitnami/redmine/plugins/redmine_agile
#CMD ["/bin/bash", "-ec", "while :; do echo '.'; sleep 5 ; done"]
RUN bundle install --no-deployment
#RUN bundle exec rake redmine:plugins:migrate RAILS_ENV=production
CMD ["/bin/bash", "-ec", "while :; do echo '.'; sleep 5 ; done"]
