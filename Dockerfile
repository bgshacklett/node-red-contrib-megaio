FROM nodered/node-red

# Copy package.json to the WORKDIR so npm builds all
# of your added modules for Node-RED
COPY test/fixtures/default/package.json .

# Copy the module under test to the container
COPY package*.json ./test-node/
COPY src ./test-node/


RUN npm install --only=production
