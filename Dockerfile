FROM nodered/node-red

# Configure the test fixture
COPY test/fixtures/default/package.json .
COPY test/fixtures/default/settings.js /data/

# Copy the module under test to the container
COPY package*.json ./test-node/
COPY src ./test-node/


RUN npm install --only=production
