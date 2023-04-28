# frozen_string_literal: true

# ---------------------------------------------------------------------------------------------------------------------
# Strings
# ---------------------------------------------------------------------------------------------------------------------

# General delimited Strings
puts %{This is another way to create a string}
puts %Q{ This is another way to create a string as well. }
puts %q[ This is also another way to create a string. ]
puts %x!ls! # This is a way to execute the ls command on the project root a get the string result



# ---------------------------------------------------------------------------------------------------------------------
# String literals
# ---------------------------------------------------------------------------------------------------------------------

# Simple quotes, it does not allow using string interpolations or backslash notation
puts 'Using a escaped backslash \\'


# Double quotes, it allows using string interpolation and backlash notation
puts "Using backslash directly \n "
interpolated_string = 'Interpolated string'
puts "Using string interpolation #{interpolated_string}"



# ---------------------------------------------------------------------------------------------------------------------
# String object
# ---------------------------------------------------------------------------------------------------------------------

my_string = String.new('This is a way to create an string through the String object.')

# ---------------------------------------------------------------------------------------------------------------------
# String object operations
# ---------------------------------------------------------------------------------------------------------------------

# upcase
my_upcase_string = my_string.upcase

# downcase
my_string.downcase

# include? - checks whether a string contains another string
my_string.include? 'is a way to create' # compares against a string
my_string.upcase.include? my_upcase_string  # compares against a variable which stores a string


# to_s - parse another type to a String
my_number = 33
my_number.to_s # converts a number 33 to a string "33"
