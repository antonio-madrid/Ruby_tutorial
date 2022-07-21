# makes Ruby aware that included files must be searched in the current directory
$LOAD_PATH << '.'

# require_relative 'modules' # importing a module to use it

# Root project path import
require 'src/modules/modules' # importing a module to use it from a root project path

# makes accessible the imported module code to this script
include My_New_Module

My_New_Module.a_module_function # using a function of an imported module without ambiguity
a_module_function # using a module function with ambiguity

# Relative path import
require_relative '../classes' # When importing a class is not necessary to "include" the code explicitly

my_new_box = Box.new(50, 60) # imported classes can be called directly
puts "My new box area is: #{my_new_box.get_area} "
