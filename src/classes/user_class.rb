# frozen_string_literal: true

# Sample of a User class
class User
  @son = nil

  def initialize(name, age, son = nil)
    @name = name
    @age = age
    @son = son
  end

  # Ruby way to create getters
  attr_reader :age, :son

  # Ruby way to create a getter & setter at the same time
  def name(name = nil)
    @name = name if name
  end

  def greet
    "Hello, I am #{@name}, and I am #{@age} years old."
  end

end

# Sample of a Son class
class Son < User
  def initialize(name, age)
    super name, age, nil
  end

  def say_hello
    greet
  end
end
