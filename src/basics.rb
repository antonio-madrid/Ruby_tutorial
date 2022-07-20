# Comments

# Block of comments
=begin
This is a block
of comments
to be ignored
=end

# Execute Ruby code: ruby myFile

# Ruby ignores whitespaces

# BEGIN executes code at the beginning of the runtime such as before hook.
BEGIN {
  print "First message without new line."
}

5 + 5 # This is another comment after an statement

# Print console messages
puts "This is a message"

# Document here, Ruby allows that feature
# print allows printing console messages through objects without new lines by default
print <<EOF
  This is the first way of creating
  here document ie. multiple line string.
EOF

print <<"EOF"
  This is the second way of creating
  here document ie. multiple line string.
EOF


# Methods
def my_no_arguments_method
  puts "Method without arguments."
end

my_no_arguments_method # executing method without arguments

def my_args_method(name)
  puts "Hello, my name is #{name}"
end

MY_NAME = "Antonio"
my_args_method(MY_NAME)

my_args_method MY_NAME # Methods with args can be called without ()

def my_multi_args_method(name, age)
  puts "Hello, I am #{name} and I am #{age}"
end

my_multi_args_method(MY_NAME, 33)

def my_default_params_method(name = "Anonymous", age = "unknown") # Methods accept default parameters values
  my_multi_args_method(name, age)
end

my_default_params_method


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
def my_variable_parameters(*args) # you can pass an undetermined number of params
  puts "The number of parameters is #{args.length}"
  args.each { |arg| puts "One of the parameters value is: #{arg}"}
end

my_variable_parameters "Mac", "Windows", "Linux", "Unix"

# undef statement, it allow to cancel a method definition

undef my_args_method # It is not a recommended practice, worse in a class

begin
  my_args_method "an" # Calling an undefined method will throw an error
rescue
  puts "my_args_method was undefined"
end

# Blocks of code on methods, it will allow to introduce extra code on an specific function

def mutant_function
  puts "This is the function message 1"
  yield # this keyword invokes a block of code passed to the function
  puts "This is the function message 2"
  yield 2 # yield keyword can accept parameters to be passed to the block of code invoke, even more than one parameter can be passed
  puts "This is the function message 3"
end

mutant_function { |i = 1| puts "This is the block message #{i}"} # blocks of code accept parameters and it can be set with a default value

# Print executed commands
print <<`EOF`
  echo Hi there
  echo ${HOME}
  pwd
EOF

# END executes code at the end of the runtime such as after hook.
END {
  puts "Finalizing execution."
}
