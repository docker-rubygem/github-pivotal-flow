FROM ruby:2.4

MAINTAINER thinkbot@outlook.de

ENV VERSION=1.3

RUN gem install github-pivotal-flow --version ${VERSION} --no-format-exec

WORKDIR /tmp

ENTRYPOINT ["git-finish"]
CMD ["--help"]
