# There is no need to indicate variable types, it is optional as Python

# Ruby pseudo-variables
self
true
false
nil # Represents undefined
__FILE__ # Represents the name of the current file
__LINE__ # Represents the current line number

# Ruby basic literals

# Integers
Integer my_number = 123
my_other_integer = 45

# Floats
Float my_float = 1.234
my_science_float = 1.0e6

# String literals
# Simple quotes, it does not allow using string interpolations or backslash notation
puts 'Using a scaped backslash \\'

# Double quotes, it allows using string interpolation and backlash notation
puts "Using backslash directly \n "
interpolated_string = 'Interpolated string'
puts "Using string interpolation #{interpolated_string}"

# Array type
my_array = ['Antonio', 33, 'UK', 2017, 'Development']
puts "My name is #{my_array[0]}"

my_array.each { |i| puts "Array value: #{i}" }

# Array object
my_other_array = Array.new(20) # Defining the array size
puts "Array size is: #{my_other_array.size}"

my_other_array[0] = 0 # assigning a value to the first position of the array

fourth_array_position_value = my_other_array.at(4)
puts "Fourth array position value: #{fourth_array_position_value}"

my_other_array.push(3) # Adds a value at the end of the array

my_other_array.append 1 # Also adds a value at the end of the array

my_other_array.fill { |previous_number| previous_number = previous_number * 2 } # it fills an array with the given value or the given block of code

# Hashes on Ruby
my_hash = { 'red' => 0xf00, 'green' => 0x0f0, 'blue' => 0x00f }
puts "Red color code is #{my_hash['red']}"

my_hash.each { |key, value| print key, ' is ', value, "\n" }

# Hash object
my_other_hash = Hash["key1": 'First value', "key2": 'Second value'] # creating a hash with Hash object
puts "First key is: #{my_other_hash[:key1]}"

my_other_hash[:key3] = 'Third value' # Add a new value to the hash

# Ruby ranges, it allows to create an interval
(1..10).each { |n| print n, ' ' }