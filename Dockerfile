FROM nodered/node-red

# Copy package.json to the WORKDIR so npm builds all
# of your added modules for Node-RED
COPY test/fixtures/default/package.json .
COPY *.js ./test-node/
COPY *.html ./test-node/
COPY package.json ./test-node/
RUN npm install --only=production
