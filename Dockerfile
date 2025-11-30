FROM ubuntu:24.04

RUN apt update && apt-get install ruby-full build-essential zlib1g-dev -y

RUN gem i jekyll bundler

ENTRYPOINT ["bash", "-c", "/home/ubuntu/app/entrypoint.sh"] 

