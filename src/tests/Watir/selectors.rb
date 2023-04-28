# frozen_string_literal: true

require 'watir'

browser_opts = {
  accept_insecure_certs: true,
  args: ['--disable-site-isolation-trials']
}

browser = Watir::Browser.new(:chrome, options: browser_opts) # instances the browser
browser.goto('https://www.wikipedia.org/') # navigates through URLs


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
