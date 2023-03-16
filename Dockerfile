FROM cypress/included:12.8.0

WORKDIR /app

COPY . .
RUN npm install

CMD ["npx", "run", "cypress"]
