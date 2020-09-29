FROM arm32v7/node
ENV NODE_ENV production
WORKDIR /usr/src/app
COPY ["package.json", "package-lock.json*", "./"]
RUN npm install --production --silent
COPY hello-world.js ./
USER node
EXPOSE 3000
CMD ["node", "hello-world.js"]
