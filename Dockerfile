FROM ruby:2.7
RUN apt-get -y update && apt-get -y install libicu-dev cmake git nfs-common && rm -rf /var/lib/apt/lists/*
RUN gem install github-linguist
RUN gem install gollum
RUN gem install org-ruby
WORKDIR /wiki
ENTRYPOINT ["gollum", "--port", "80"]
EXPOSE 80