FROM cypress/included:12.8.1

WORKDIR /app

COPY . .

RUN npm install

# Install ffmpeg for video recording
RUN apt-get update && apt-get install -y ffmpeg

# Set environment variables for video recording
ENV CYPRESS_VIDEO_RECORDING=true
ENV CYPRESS_VIDEO_COMPRESSION=30


CMD ["npm", "run", "npx cypress run"] 