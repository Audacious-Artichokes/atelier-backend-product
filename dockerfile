# Pick the OS to run the server
FROM node:18-alpine

WORKDIR user/app

# Copy files from the local to image
COPY server/app.js ./server/app.js
COPY server/index.js ./server/index.js
COPY server/routes ./server/routes
COPY server/controllers ./server/controllers
COPY server/database/db.js ./server/database/db.js
COPY package.json ./package.json
COPY .env ./.env


RUN npm install


# ENV
ENV NODE_ENV production
ENV PGHOST host.docker.internal
ENV PGPORT 5432
ENV PGDATABASE sdcproduct
ENV PGUSER thanghnguyen

#EXPOSE PORT
# EXPOSE 3000

#CMD to run at start
CMD ["node", "server/app.js"]