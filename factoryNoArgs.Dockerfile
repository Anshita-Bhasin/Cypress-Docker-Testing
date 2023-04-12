FROM cypress/factory

WORKDIR /app

COPY . .

RUN npm install --save-dev cypress