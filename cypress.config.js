const { defineConfig } = require("cypress");

module.exports = defineConfig({
  e2e: {
    setupNodeEvents(on) {
      cypressSplit(on, config)
      return config

    },
  },


});
