ARG CHROME_VERSION='107.0.5304.121-1'
ARG EDGE_VERSION='100.0.1185.29-1'
ARG FIREFOX_VERSION='107.0'

FROM cypress/factory:2.0.0

WORKDIR /app

COPY . .

RUN npm i cypress 

ENTRYPOINT ["npm","run", "cypress:test:chrome"]

