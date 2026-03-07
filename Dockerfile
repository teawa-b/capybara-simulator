FROM node:18-alpine
RUN npm install -g serve
WORKDIR /app
COPY . .
EXPOSE 3000
CMD ["sh", "-c", "serve -s . -l ${PORT:-3000}"]
