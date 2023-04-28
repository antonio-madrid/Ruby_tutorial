# frozen_string_literal: true

# ---------------------------------------------------------------------------------------------------------------------
# Arithmetic Operators
# ---------------------------------------------------------------------------------------------------------------------

3 + 4
3 - 5
3 * 5
9 / 3
3 % 2
3 ** 3 # exponent, 3 to the power 3



# ---------------------------------------------------------------------------------------------------------------------
# Comparison operators
# ---------------------------------------------------------------------------------------------------------------------

'Antonio' == 'Tony' # equality
'Antonio' != 'Tony' # not equality
33 > 32 # greater than
32 < 33 # less than
50 >= 45 # greater than or equal to
25 <= 31 # less than or equal to
3 <=> 2 # combined operator, return 0 if equals, 1 if first operand is greater o -1 if first operand is less than the second



# ---------------------------------------------------------------------------------------------------------------------
# Assignment operators
# ---------------------------------------------------------------------------------------------------------------------

variable = 'value'

my_num = 5
my_num += 1
my_num -= 1
my_num *= 5
my_num /= 5
my_num %= 2
my_num **= 2



# ---------------------------------------------------------------------------------------------------------------------
# Bitwise operators, it allows performing bit by bit operations
# ---------------------------------------------------------------------------------------------------------------------

a = 60
b = 13
# a = 0011 1100
# b = 0000 1101
# ------------------
# a&b = 0000 1100
# a|b = 0011 1101
# a^b = 0011 0001
# ~a = 1100 0011

a << 2 # it moves all its bits two position left
a >> 2 # it moves all its bits two position right



# ---------------------------------------------------------------------------------------------------------------------
# Logical operators
# ---------------------------------------------------------------------------------------------------------------------

true and true # true
true or false # true
false && true # false
false || true # true

!true # false
not true # false



# ---------------------------------------------------------------------------------------------------------------------
# Ternary operator
# ---------------------------------------------------------------------------------------------------------------------

true ? true : false # if Condition true ? then value : otherwise value2



# ---------------------------------------------------------------------------------------------------------------------
# Range operator
# ---------------------------------------------------------------------------------------------------------------------

1..10 # Create a range from 1 to 10 - inclusive
1...9 # Create a range from 1 to 9 - excluding highest value



# ---------------------------------------------------------------------------------------------------------------------
# defined? operator, it determines whether or not the passed variable, or method is defined
# ---------------------------------------------------------------------------------------------------------------------

puts "What is my_num: #{defined? my_num}" # "local-variable"

$mi_global_variable = 'I am global'
puts "What is $mi_global_variable: #{defined? $mi_global_variable}" # "global-variable"

puts "What is defined? 'hello: '#{defined? 'hello'}" # expression

def my_function
  'Hello there'
end

puts "What is defined? my_function: #{defined? my_function}" # method



# ---------------------------------------------------------------------------------------------------------------------
# Double colon operator, it allows to access outside modules or classes constants
# ---------------------------------------------------------------------------------------------------------------------

module MY_MODULE
  MY_CONST = 0
end

puts "MY_MODULE::MY_CONST value: #{MY_MODULE::MY_CONST}"



# ---------------------------------------------------------------------------------------------------------------------
# Safe Navigation Operator &.
# ---------------------------------------------------------------------------------------------------------------------

require './src/classes/user_class'

antonio_jr = Son.new('Antonio junior', 10)
antonio = User.new('Antonio', 33, antonio_jr)
# Safe Navigation Operator call a method when is not nul
puts antonio&.greet
# Similar to JavaScript ? Optional chaining Operator ?.
puts antonio&.son&.say_hello

mary_carmen = User.new('Mary Carmen', 38)
# Safe Navigation operator avoids null errors
puts mary_carmen&.son&.say_hello
