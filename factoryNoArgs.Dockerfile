FROM cypress/factory

COPY . /opt/app
WORKDIR /opt/app
RUN npm install --save-dev cypress