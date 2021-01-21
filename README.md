## :warning: This repo is no longer actively maintained.

# Overview
 This image [jackton1/bitbucket-ecr](https://hub.docker.com/r/jackton1/bitbucket-ecr/) extends the [atlassian/default-image:2](https://hub.docker.com/r/atlassian/default-image/) provided by [Bitbucket Pipelines](https://confluence.atlassian.com/bitbucket/use-docker-images-as-build-environments-792298897.html)

The packages are also upgraded since the default image provided aren't to minimize issues with compatibility.

### Platform: ubuntu 16.04
Packages available out-of-the-box:
- wget
- xvfb
- curl
- ssh
- git: 2.17.0
- gitflow: 1.11.0 (AVH Edition)
- mercurial: 3.7.3
- java: Open-JDK 1.8u151
- maven: 3.3.9
- node: 8.9.4
- npm: 5.6.0
- nvm: 0.33.8
- python: 2.7.12, 3.5.2, 3.6.3
- pip: 10.0.1
- gcc: 5.4.0
- ant: 1.9.6
- jq: 1.5-1


### Python packages:
- botocore: 1.10.2
- awscli: 1.15.2

More details about the contents:
https://confluence.atlassian.com/bitbucket/using-docker-images-as-build-environments-792298897.html

# Versioning
The latest tag matches the most recent release, so jackton1/bitbucket-ecr:latest
 will use the newest stable version available.


# Usage
Use like you would any other base image:
```
FROM jackton1/bitbucket-ecr:latest
RUN python3.6 -m pip install -U Django
```
