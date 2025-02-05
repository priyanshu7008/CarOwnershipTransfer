const path = require("path");

module.exports = {
  // Specify the compiler version, if needed
  compilers: {
    solc: {
      version: "0.8.0", // Specify your Solidity version
    },
  },
  networks: {
    development: {
      host: "127.0.0.1",     // Localhost (default: none)
      port: 7545,            // Ganache port (default: none)
      network_id: "5777",       // Any network (default: none)
    },
  },
  // Other configurations...
};