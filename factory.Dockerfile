# Args are defined in the Dockerfile before the FROM command.
# Using these args will cause an image to be created with node (default version is 16.18.1), chrome, firefox and edge.
ARG CHROME_VERSION='107.0.5304.121-1'
ARG EDGE_VERSION='100.0.1185.29-1'
ARG FIREFOX_VERSION='107.0'

FROM cypress/factory
WORKDIR /app

COPY . .
RUN npm install --save-dev cypress