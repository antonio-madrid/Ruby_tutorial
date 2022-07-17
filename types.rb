# There is no need to indicate variable types, it is optional as Python

# Ruby pseudo-variables
self
true
false
nil # Represents undefined
__FILE__  # Represents the name of the current file
__LINE__ # Represents the current line number

# Ruby basic literals

# Integers
Integer my_number = 123

# Floats
Float my_float = 1.234
my_science_float = 1.0e6


# String literals
# Simple quotes, it does not allow using string interpolations or backslash notation
puts 'Using a scaped backslash \\'

# Double quotes, it allows using string interpolation and backlash notation
puts "Using backslash directly \n "
interpolated_string = "Interpolated string"
puts "Using string interpolation #{interpolated_string}"

# Array type
my_array = ["Antonio", 33, "UK", 2017, "Development"]
puts "My name is #{my_array[0]}"

my_array.each { |i| puts "Array value: #{i}" }

# Hashes on Ruby
my_hash = { "red" => 0xf00, "green" => 0x0f0, "blue" => 0x00f }
puts "Red color code is #{my_hash['red']}"

my_hash.each { |key, value| print key, " is ", value, "\n" }

# Ruby ranges, it allows to create an interval
(1..10).each { |n| print n, ' ' }