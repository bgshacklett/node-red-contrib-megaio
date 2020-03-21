module.exports = (RED) => {
  function RelayOn(config) {
    RED.nodes.createNode(this, config);
    const node = this;
    node.on('input', (msg) => {
      node.send(msg.payload.toLowerCase());
    });
  }
  RED.nodes.registerType('relay-on', RelayOn);
};
