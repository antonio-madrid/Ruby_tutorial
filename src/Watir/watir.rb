# Import all gems (libraries) in use to this script
require 'byebug'
require 'watir'
require 'webdrivers'

# Watir is a UI testing library similar to WebdriverIO or Playwright

# Create a browser
browser = nil

browser_opts = {
  accept_insecure_certs: true,
  args: ['--disable-site-isolation-trials']
}

browser = Watir::Browser.new(:chrome, options: browser_opts)

browser.goto('https://www.wikipedia.org/')

# byebug # use byebug keyword to activate the debugger and use Watir while testing
# browser object can be used in byebug debugger, just call it methods inside the debugger
# browser.div(id: 'header').wait_until(&:present?).click

# A way to wait until a URL page is reached
browser.wait_until { browser.url.include? 'wikipedia' }

# Use browser object to access different HTML elements by its name tag, e.g. browser.div
# Pass as parameter the attribute you want to use to determinate what specific element you want
browser.span(text: 'Wikipedia').wait_until(&:visible?)

# Pass id attribute to find an specific element by its ID
browser.body(id: 'www-wikipedia-org').wait_until(&:visible?)




puts 'Wikipedia page is present.' if browser.span(text: 'Wikipedia').present?

