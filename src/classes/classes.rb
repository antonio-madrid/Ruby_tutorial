# ---------------------------------------------------------------------------------------------------------------------
# Classes
# ---------------------------------------------------------------------------------------------------------------------

# Define a class
class Box

  # --------------------------------------------------------------------------------------------------------------------
  # Constant variables
  # --------------------------------------------------------------------------------------------------------------------
  BOX_SIZE = 'Normal'
  BOX_COMPANY = 'Amazon'

  # --------------------------------------------------------------------------------------------------------------------
  # Static (class) variables
  # --------------------------------------------------------------------------------------------------------------------
  @@count = 0

  # --------------------------------------------------------------------------------------------------------------------
  # Constructor, private by default
  # --------------------------------------------------------------------------------------------------------------------
  def initialize(w, h)
    # Private (instance) variables
    @width, @height = w, h
    @branch = 'Hacendado'

    # Operating a static (class) variable
    @@count += 1
  end

  # --------------------------------------------------------------------------------------------------------------------
  # Methods
  # --------------------------------------------------------------------------------------------------------------------

  # Static (class) methods, public by default
  # to access a static method you have to name this as self
  def self.print_count
    puts "Box count is: #@@count"
  end

  # Instance methods, public by default

  # Getters for private (instance) variables
  # Ruby way to create only getters
  attr_reader :height, :branch

  # Setters for private (instance) variables
  def set_height=(value)
    @height = value
  end

  # Getter & Setter at the same time
  def width(value = nil)
    @width = value if value
    @width
  end

  # Normal instance method
  def area
    @width * @height
  end

  # Private methods

  # Firstly we need to declare methods and after that make them private
  def mi_private_method
    @width * @height
  end

  def mi_other_private_method
    @height
  end

  # After declaring them, we have to make them private in a separate statement
  private :mi_private_method, :mi_other_private_method

  # toString() method, any class should include it
  def to_s
    "(width: #{@width}, height: #{@height}"
  end

  # Operator overloading, it allows class object arithmetic operations

  # # Define + to do a vector addition
  # def +@(other)
  #   Box.new(@width + other.width, @height + other.height)
  # end

  # Define unary minus to negate the constructor
  def -@
    Box.new(-@width, -@height)
  end

  # To perform a scalar multiplication
  def *(scalar)
    Box.new(@width * scalar, @height * scalar)
  end

end

# ---------------------------------------------------------------------------------------------------------------------
# Subclasses
# ---------------------------------------------------------------------------------------------------------------------

# Inheritance, subclasses
class BigBox < Box

  # Constant variables
  BOX_COMPANY = 'Flex'
  BOX_SIZE = 'Big'

  # New subclass instance method
  def print_area
    @area = self.area
    puts "Big box area is: #{@area}"
  end

  # Method override
  def area
    @area = @width * @height
    puts "Big box area is: #{@area}"
  end

end

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


