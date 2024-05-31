FROM node:20.14.0
WORKDIR /app
ENV PORT 3000
ENV MODEL_URL 'https://storage.googleapis.com/modell-storage/model-in-prod/model.json'
COPY . .
RUN npm install
EXPOSE 3000
CMD [ "npm", "run", "start"]
