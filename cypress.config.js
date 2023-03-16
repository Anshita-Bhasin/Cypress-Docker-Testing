const { defineConfig } = require("cypress");

module.exports = defineConfig({
  e2e: {
    setupNodeEvents(on) {
      /* block iamge load
      on('before:browser:launch', (browser = {}, launchOptions) => {
        console.log(launchOptions.args)
        if (browser.family === 'chromium' && browser.name !== 'electron') {
          launchOptions.args.push('--blink-settings=imagesEnabled=false')
          return launchOptions
        }

      })
      */
    },
  },
});
