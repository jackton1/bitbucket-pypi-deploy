FROM atlassian/default-image:2

MAINTAINER Tonye Jack <jtonye@ymail.com>

RUN add-apt-repository ppa:jonathonf/python-3.6
RUN add-apt-repository ppa:git-core/ppa
RUN curl -sL https://deb.nodesource.com/setup_8.x | bash -
RUN apt-get update && apt-get -y upgrade && apt-get install -y --no-install-recommends \
    git \
    jq \
    nodejs \
    software-properties-common \
    python-software-properties \
    python3.6-dev \
    python3.6-venv \
    && curl https://bootstrap.pypa.io/get-pip.py | python3.6
RUN pip3.6 install -U awscli numpy pandas
RUN ln -fs /usr/bin/python3.6 /usr/bin/python && ln -fs /usr/bin/pip3.6 /usr/bin/pip
RUN wget --no-check-certificate -q  https://raw.githubusercontent.com/petervanderdoes/gitflow-avh/develop/contrib/gitflow-installer.sh \
    && bash gitflow-installer.sh install stable; rm gitflow-installer.sh
