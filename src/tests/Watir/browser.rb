# frozen_string_literal: true

require 'watir'
# ---------------------------------------------------------------------------------------------------------------------
# Browser
# ---------------------------------------------------------------------------------------------------------------------

# ------------------------------------
# Creating a browser
# ------------------------------------

browser_opts = {
  accept_insecure_certs: true,
  args: ['--disable-site-isolation-trials']
}

browser = Watir::Browser.new(:chrome, options: browser_opts) # instances the browser


# ------------------------------------
# Browser common operations
# ------------------------------------

browser.goto('https://www.wikipedia.org/') # navigates through URLs

current_url = browser.url # returns the current URL
