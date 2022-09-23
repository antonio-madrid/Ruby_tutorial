# Methods
def my_no_arguments_method
  puts 'Method without arguments.'
end

my_no_arguments_method # executing method without arguments

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

def my_default_params_method(name = 'Anonymous', age = 'unknown')
  # Methods accept default parameters values
  my_multi_args_method(name, age)
end

my_default_params_method


def my_optional_arguments_method(optional_arg = nil)
  if optional_arg
    puts "Optional argument given: #{optional_arg}"
  else
    puts 'Optional argument was not given.'
  end
end

my_optional_arguments_method 'This is the optional argument.'
my_optional_arguments_method

# Return values from methods
def my_sum(number1, number2)
  number1 + number2 # Ruby returns a value by default, which is the result of its last statement
end

puts "2 + 2 is: #{my_sum 2, 2}"

def return_my_data(name, age)
  [name, age] # Ruby allows to return more than one value in a form an array
end

puts "My data is: #{return_my_data MY_NAME, 33}"

# Variable number of method parameters
def my_variable_parameters(*args)
  # you can pass an undetermined number of params
  puts "The number of parameters is #{args.length}"
  args.each { |arg| puts "One of the parameters value is: #{arg}" }
end

my_variable_parameters 'Mac', 'Windows', 'Linux', 'Unix'

# undef statement, it allow to cancel a method definition

undef my_args_method # It is not a recommended practice, worse in a class

begin
  my_args_method 'an' # Calling an undefined method will throw an error
rescue
  puts 'my_args_method was undefined'
end
