# frozen_string_literal: true

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
