# ---------------------------------------------------------------------------------------------------------------------
# Import all gems (libraries) in use to this script
# ---------------------------------------------------------------------------------------------------------------------

require 'byebug'
require 'watir'
require 'webdrivers'

# Watir is a UI testing library similar to WebdriverIO or Playwright

# ---------------------------------------------------------------------------------------------------------------------
# Create a browser
# ---------------------------------------------------------------------------------------------------------------------
browser = nil

browser_opts = {
  accept_insecure_certs: true,
  args: ['--disable-site-isolation-trials']
}

browser = Watir::Browser.new(:chrome, options: browser_opts)

browser.goto('https://www.wikipedia.org/')

# ---------------------------------------------------------------------------------------------------------------------
# Watir use
# ---------------------------------------------------------------------------------------------------------------------

# byebug # use byebug keyword to activate the debugger and use Watir while testing
# browser object can be used in byebug debugger, just call it methods inside the debugger
# browser.div(id: 'header').wait_until(&:present?).click

# A way to wait until a URL page is reached
browser.wait_until { browser.url.include? 'wikipedia' }


browser.element(id: 'www-wikipedia-org').present? # links the body element by its id and checks whether the element is presented

# Use browser object to access different HTML elements by its name tag, e.g. browser.div
# Or use the default object element to point any element
# Pass as parameter the attribute you want to use to determinate what specific element you want
browser.span(text: 'Wikipedia').wait_until(&:visible?) # It executes span.visible? until true
# Pass id attribute to find an specific element by its ID
browser.body(id: 'www-wikipedia-org').wait_until(&:visible?)

link = browser.a(id: 'js-link-box-en') # Assigning an anchor element to a variable

browser.wait_while do # The general way to insert a wait in Watir
  !link.text.include? 'English' # It while link text will not contain 'English'
end

browser.a(id: 'js-link-box-en').wait_while(&:hidden?) # Waits while the element is still hidden

puts 'Wikipedia page is present.' if browser.span(text: 'Wikipedia').present?

link_html_stringify = link.html # this returns the HTML content of an element as a String
regex_result = link.html[/English/] # it applies a RegEx to the stringify HTML element
link_html_stringify.include? 'English' # It returns a boolean value, RegEx returns matches

puts '"English" word found in the Link element' unless regex_result.nil?


# Common waits attributes
link.wait_until timeout: 40, message: 'Link element not found', &:present?


# CSS selector
# Watir allows to use a CSS Selector instead of an id, text or any other attribute
is_body_present_by_css = browser.element(css: '#www-wikipedia-org').present?
puts 'Body element accessed through a CSS Selector' if is_body_present_by_css

is_body_present_by_xpath = browser.element(xpath: '//*[@id="www-wikipedia-org"]').present?
puts 'Body element accessed through a Xpath' if is_body_present_by_xpath

# Chaining elements allows to navigate through children elements
# In order to access to Shadow DOM elements, chaining is essential
browser.element(class: 'central-textlogo').img(class: 'central-featured-logo').present? # img is a children of this div

# Parents & Siblings
browser.element(class: 'central-textlogo').parent # returns the element parent
browser.element(class: 'central-textlogo').siblings # returns an array with the sibling elements
