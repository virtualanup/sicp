FROM alpine:3.6

# Install Packages
RUN apk update && apk --no-cache --update add guile
