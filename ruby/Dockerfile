FROM theconversation/base

# Install ruby and postgres client.
RUN apk --no-cache add ruby-dev ruby-full ruby-bundler

# Disable rdoc.
RUN echo "install: --no-rdoc --no-ri" > /etc/gemrc
