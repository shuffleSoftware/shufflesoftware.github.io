FROM jekyll/jekyll
ENV BASE=/usr/local/jekyll
WORKDIR ${BASE}
COPY . ${BASE}
RUN apk update
RUN chown -R jekyll:jekyll ${BASE}/Gemfile.lock
EXPOSE 4000
CMD ["jekyll","serve"]