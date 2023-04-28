# frozen_string_literal: true

# / allows to create a RegEx
# =~ evaluates the first match position of a RegEx
first_position = '10:00 AM' =~ /\d{2}:\d{2}/

p "First match position is #{first_position}"

third_position = /a/ =~ 'pomada'
p "Third match position is #{third_position}"

# RegEx match method returns a Match object with coincidences found in a string
match_object = /tack/.match('haystack')
p "Match object: #{match_object}"
