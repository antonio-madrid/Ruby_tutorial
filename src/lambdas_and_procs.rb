# Blocks of code {} can have arguments between | |
[1, 2, 3].each { |number| puts "Printing number: #{number}" }

# Blocks of code on methods, it will allow to introduce extra code on an specific function

def mutant_function
  puts 'This is the function message 1'
  yield # this keyword invokes a block of code passed to the function
  puts 'This is the function message 2'
  yield 2 # yield keyword can accept parameters to be passed to the block of code invoke, even more than one parameter can be passed
  puts 'This is the function message 3'
end

mutant_function { |i = 1| puts "This is the block message #{i}" } # blocks of code accept parameters and it can be set with a default value


# yield keyword calls a block of code when execute it
def print_once
  yield # executes the code block without arguments
  yield 1 # an argument can be passed to yield which will be passed to the code block
  yield 2 # yield can execute the same code block multiple times
  yield 3
end

# yield keyword will execute the passed block code
# Implicit code blocks, anonymous code blocks
print_once { puts 'This is a block of code.' } # this is an implicit code block

print_once { |block_argument| puts "This is a block of code with an argument: #{block_argument}" }

# explicit code blocks are the same than implicit but with a name
def yell(&message)
  message.call # Similar to yield, but executes the code in the function
  yield 'Antonio' # yield always execute the block code after having the variables defined
end

yell { puts 'I am the strongest!' }
yell { |name| puts "#{name} is the strongest!" }


def execute_code_block
  return 'No block given' unless block_given?

  yield # only execute the given code block
end

execute_code_block do # do end is similar than { }
  puts "234545345 + 24231454215 = #{234_545_345 + 24_231_454_215}"
end

execute_code_block # safe call, it is not executing yield without a block code

# Lambdas - It is a anonymous function without outside context
my_lambda = -> { puts 'This is a lambda.' } # defining a lambda
# Ways of executing a lambda
my_lambda.call
my_lambda.()
my_lambda[]
my_lambda.===

times_two_lambda = ->(x) { x * 2 }
puts "Times two of 3: #{times_two_lambda.call 3}"

# Proc object
# Similar to a Lambda but Procs will carry the current context with its values like local variables

my_proc = proc { |name| puts "#{name} is my name." if name }
my_proc.call 'Antonio'
my_proc.call # non argument safe

begin
  another_lambda = ->(x, y) { puts 'Lambda is not using its arguments' }
  another_lambda.call
rescue StandardError
  puts 'Lambdas with arguments cannot miss their arguments when calling them.'
end

another_proc = proc { |x, y| puts 'I do not care arguments, I will run anyway.' }
another_proc.call

# &:symbol
# Pass a piece of code (Proc object) to a function
def printer(message = nil)
  puts message || 'Default message.'
end


# & applied to a :symbol = &:
$LOAD_PATH << '.'
require '../src/classes/user_class'

antonio = User.new 'Antonio', 33
lorena = User.new 'Lorena', 33
users = [
  antonio,
  lorena
]

# &: convert an object to a proc if isn't already, it calls to_proc
# And it will execute the element method called
puts users.collect(&:greet) # it executes greet method of the given user
puts users.collect { |user | user.greet } # It is the same, &: transforms a block of code to a proc
