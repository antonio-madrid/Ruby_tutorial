# frozen_string_literal: true

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
