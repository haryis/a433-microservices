# using image node 14
FROM node:14

# working directory
WORKDIR /app

# copy source code to working directory
COPY . .

# define environment in production mode 
ENV NODE_ENV=production DB_HOST=item-db

# install dependencies for production and build app
RUN npm install --production --unsafe-perm && npm run build

# run app from start script
CMD [ "npm", "start" ]   

# expose port 8080
EXPOSE 8080