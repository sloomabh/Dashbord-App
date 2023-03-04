FROM node:19-alpine

COPY package.json package.json 
RUN npm install
ADD src/ src/
ADD public/ public/
COPY tailwind.config.js tailwind.config.js
EXPOSE 3000
CMD ["npm", "start"]