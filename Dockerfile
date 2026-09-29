FROM node:20-alpine
WORKDIR /app
COPY package.json package-lock.json ./
RUN npm ci --omit=dev
COPY server.js index.html manifest.webmanifest sw.js .env.example ./
COPY data ./data
COPY public ./public
EXPOSE 3000
ENV NODE_ENV=production
CMD ["npm", "start"]
