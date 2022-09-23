# ---------------------------------------------------------------------------------------------------------------------
# Methods
# ---------------------------------------------------------------------------------------------------------------------

def my_no_arguments_method
  puts 'Method without arguments.'
end

my_no_arguments_method # executing method without arguments



# ---------------------------------------------------------------------------------------------------------------------
# Parametrized method
# ---------------------------------------------------------------------------------------------------------------------

def my_args_method(name)
  puts "Hello, my name is #{name}"
end

MY_NAME = 'Antonio'
my_args_method(MY_NAME)

my_args_method MY_NAME # Methods with args can be called without ()


def my_multi_args_method(name, age)
  puts "Hello, I am #{name} and I am #{age}"
end

my_multi_args_method(MY_NAME, 33)



# ---------------------------------------------------------------------------------------------------------------------
# Default method arguments
# ---------------------------------------------------------------------------------------------------------------------

def my_default_params_method(name = 'Anonymous', age = 'unknown')
  # Methods accept default parameters values
  my_multi_args_method(name, age)
end

my_default_params_method



# ---------------------------------------------------------------------------------------------------------------------
# Default method argument
# ---------------------------------------------------------------------------------------------------------------------

def my_optional_arguments_method(optional_arg = nil)
  if optional_arg
    puts "Optional argument given: #{optional_arg}"
  else
    puts 'Optional argument was not given.'
  end
end

my_optional_arguments_method 'This is the optional argument.'
my_optional_arguments_method



# ---------------------------------------------------------------------------------------------------------------------
# Keyword arguments, it allows to pass arguments in any order
# ---------------------------------------------------------------------------------------------------------------------
# argument: is the way to define a Keyword argument
def unordered_args_function(name:, age:, city:)
  p "I am #{name} and I am #{age} years old. Also, I am from #{city}"
end

# When calling a method, arguments must be passed as key-value objects
unordered_args_function age: 33, city: 'Malaga', name: 'Antonio'



# ---------------------------------------------------------------------------------------------------------------------
# Return values from methods
# ---------------------------------------------------------------------------------------------------------------------

def my_sum(number1, number2)
  number1 + number2 # Ruby returns a value by default, which is the result of its last statement
end

puts "2 + 2 is: #{my_sum 2, 2}"


def return_my_data(name, age)
  [name, age] # Ruby allows to return more than one value in a form an array
end

puts "My data is: #{return_my_data MY_NAME, 33}"


# ---------------------------------------------------------------------------------------------------------------------
# Variable number of method parameters
# ---------------------------------------------------------------------------------------------------------------------

def my_variable_parameters(*args)
  # you can pass an undetermined number of params
  puts "The number of parameters is #{args.length}"
  args.each { |arg| puts "One of the parameters value is: #{arg}" }
end

my_variable_parameters 'Mac', 'Windows', 'Linux', 'Unix'


# **args is the same than *args but for keyword arguments. It will be a hash instead of an array.
def my_variable_parameters_with_hash(**args)
  args.each { |argument| p "Hash arguments: #{argument}" }

  p 'Args contains a special message}' if args[:special_message] # The way to access a hash value
end

# The way to pass a hash values to a function
my_variable_parameters_with_hash name: 'Antonio', age: 33, special_message: 'This is a special message!'



# ---------------------------------------------------------------------------------------------------------------------
# undef keyword, it allows to cancel a method definition
# ---------------------------------------------------------------------------------------------------------------------

undef my_args_method # It is not a recommended practice, worse in a class

# Calling an undefined method will throw an error

begin
  my_args_method 'an'
rescue
  puts 'my_args_method was undefined'
end
