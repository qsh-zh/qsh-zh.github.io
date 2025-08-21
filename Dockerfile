FROM ruby:3.1-slim

# Install system dependencies
RUN apt-get update -qq && \
    apt-get install -y --no-install-recommends \
    build-essential \
    git \
    && rm -rf /var/lib/apt/lists/*

# Set working directory
WORKDIR /srv/jekyll

# Configure bundler to install gems globally, not in local path
RUN bundle config set --global path '/usr/local/bundle'
RUN bundle config set --global without 'development test'

# Copy Gemfile first for better Docker layer caching
COPY Gemfile Gemfile.lock ./

# Install gems
RUN bundle install

# Expose port
EXPOSE 4000

# Create entrypoint script that handles runtime bundle install
RUN echo '#!/bin/bash\n\
set -e\n\
echo "Checking and installing any missing gems..."\n\
bundle check || bundle install\n\
echo "Starting Jekyll server..."\n\
exec "$@"' > /usr/local/bin/entrypoint.sh && \
chmod +x /usr/local/bin/entrypoint.sh

ENTRYPOINT ["/usr/local/bin/entrypoint.sh"]

# Default command
CMD ["bundle", "exec", "jekyll", "serve", "--host", "0.0.0.0", "--livereload", "--incremental"]
