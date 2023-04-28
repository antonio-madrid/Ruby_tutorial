# frozen_string_literal: true

# ---------------------------------------------------------------------------------------------------------------------
#  LOAD_PATH
# ---------------------------------------------------------------------------------------------------------------------

# Makes Ruby aware that included files must be searched in the current directory
$LOAD_PATH << '.' # avoids the use of './' when typing a file path



# ---------------------------------------------------------------------------------------------------------------------
# require
# ---------------------------------------------------------------------------------------------------------------------

# require_relative 'modules' # importing a module to use it

# Root project path import
require 'src/modules/modules' # importing a module to use it from a root project path

# without $LOAD_PATH we should type './' like the following require
require './src/modules/modules'



# ---------------------------------------------------------------------------------------------------------------------
# include
# ---------------------------------------------------------------------------------------------------------------------

# makes accessible the imported module code to this script
include MyNewModule

MyNewModule.a_module_function # using a function of an imported module without ambiguity
a_module_function # using a module function with ambiguity



# Relative path import
require_relative '../classes/super_class' # When importing a class is not necessary to "include" the code explicitly

my_new_box = Box.new(50, 60) # imported classes can be called directly
puts "My new box area is: #{my_new_box.area} "
