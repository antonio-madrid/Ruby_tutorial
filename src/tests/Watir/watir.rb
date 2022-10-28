# ---------------------------------------------------------------------------------------------------------------------
# Import all gems (libraries) in use to this script
# ---------------------------------------------------------------------------------------------------------------------

require 'byebug'
require 'watir'
require 'webdrivers'

# Watir is a UI testing library similar to WebdriverIO or Playwright


# ---------------------------------------------------------------------------------------------------------------------
# Browser
# ---------------------------------------------------------------------------------------------------------------------

# ------------------------------------
# Creating a browser
# ------------------------------------

browser = nil

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




# ---------------------------------------------------------------------------------------------------------------------
# Watir use
# ---------------------------------------------------------------------------------------------------------------------

# ------------------------------------
# Test elements dynamically
# ------------------------------------

# Use Byebug or a breakpoint to activate the debugger and use Watir while testing
# browser object can be used in the debugger, just call it methods inside the debugger to test them
browser.div(id: 'header').click if browser.div(id: 'header').present? # Clicks an element if it is presented



# ------------------------------------
# Get/Assign HTML elements by Selectors
# ------------------------------------

# Use browser object to access different HTML elements by its name tag, e.g. browser.div (Selectors)
# And they key attribute that identifies that element, e.g. its id
body = browser.element(id: 'www-wikipedia-org')

# Or use the default object element to point any element
# And identify the element by its attribute
browser.span(text: 'Wikipedia').wait_until(&:visible?) # It executes span.visible? until true

link = browser.a(id: 'js-link-box-en') # Assigning an anchor element to a variable



# ------------------------------------
# Check element status or operate it
# ------------------------------------

# Status
body.present? # checks whether the element is presented

puts 'Wikipedia page is present.' if browser.span(text: 'Wikipedia').present?


# Operations
body.click # clicks the element
body.send_keys 'hello world' # inserts some data

link_html_stringify = link.html # this returns the HTML content of an element as a String
regex_result = link.html[/English/] # it applies a RegEx to the stringify HTML element
link_html_stringify.include? 'English' # It returns a boolean value, RegEx returns matches

puts '"English" word found in the Link element' unless regex_result.nil?



# ------------------------------------
# Waits
# ------------------------------------

# Use wait_until or wait_while functions to wait until certain condition
browser.wait_until { browser.url.include? 'wikipedia' } # wait until a URL page is reached

body.wait_until(&:visible?)

body.wait_until do # It is the same than the line above but using a block of code
  body.visible? # this is the condition returned to the wait_until method
end

browser.wait_while do # Using a wait with a block of code
  !link.text.include? 'English' # It waits while link text will not contain 'English'
end


# Common waits attributes
# timeout:, message:, built-in condition functions &:

body.wait_until timeout: 40, message: 'Body element not found', &:present?

body.wait_until(&:visible?)

link.wait_until timeout: 40, message: 'Link element not found', &:present?

browser.a(id: 'js-link-box-en').wait_while(&:hidden?) # Waits while the element is still hidden



# ------------------------------------
# Other Selectors
# ------------------------------------

# CSS selector

# Watir allows to use a CSS Selector instead of an id, text or any other attribute
is_body_present_by_css = browser.element(css: '#www-wikipedia-org').present?
puts 'Body element accessed through a CSS Selector' if is_body_present_by_css


# XPath selector

is_body_present_by_xpath = browser.element(xpath: '//*[@id="www-wikipedia-org"]').present?
puts 'Body element accessed through a Xpath' if is_body_present_by_xpath




# ------------------------------------
# DOM navigation
# ------------------------------------

# Chaining elements

# allows to navigate through children elements
# In order to access to Shadow DOM elements, chaining is essential
browser.element(class: 'central-textlogo').img(class: 'central-featured-logo').present? # img is a children of this div


# Parents & Siblings

# allows to access adjacent elements
browser.element(class: 'central-textlogo').parent # returns the element parent
browser.element(class: 'central-textlogo').siblings # returns an array with the sibling elements
