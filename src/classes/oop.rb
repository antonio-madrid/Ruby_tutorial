# frozen_string_literal: true

require './src/classes/super_class' # Uses the root path of the project
require_relative 'sub_class' # Uses the path from the file

# ---------------------------------------------------------------------------------------------------------------------
# Object Oriented Programming
# ---------------------------------------------------------------------------------------------------------------------

# declare script variables
age = 33

# create a new object
box = Box.new(10, 20)

# get private attribute values of an object
width = box.width # Getter & Setter at the same time
height = box.height

# set values of object private attributes
box.width 30 # Getter & Setter at the same time
box.set_height = 50

# Ruby string interpolation
puts "Width of the box is: #{width}"
puts "Height of the box is: #{height}"

puts "Area of the box: #{box.area}"

# create a new subclass
big_box = BigBox.new(20, 40)

big_box.print_area

# using override method
big_box.area

# using operator overloading

# # summing classes through + method
# new_bigger_box = box + box
# puts "Bigger box area: #{new_bigger_box.get_area}"

# negating class attributes
negative_box = -box
puts "Negative box area: #{negative_box.area}"

# performing a class attributes scalar multiplication
scalar_box = box * 13
puts "Scalar box area: #{scalar_box.area}"

# Freezing objects turns an object to a constant object, it cannot be modified
box.freeze
if box.frozen?
  puts 'Box object is a frozen object'
else
  puts 'Box object is a normal object'
end

# Accessing to class constants

normal_box_company = Box::BOX_COMPANY
puts "Normal box company: #{normal_box_company}"

# Accessing to override subclass constant
# big_box_company = BigBox::BOX_COMPANY
# PUT "Big box company: #{big_box_company}"

# Creating not initialized objects using allocate() instead of using its constructor method
uninitialized_box = Box.allocate

puts box.height
