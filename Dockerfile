FROM alpine:3.4

ADD hugo /bin/hugo
ADD LICENSE.md /LICENSE.md

# Generated output from hugo will be stored here
RUN mkdir /hugo

# Source files
VOLUME ["/content"]

EXPOSE 1313

ENTRYPOINT ["/bin/hugo"]
