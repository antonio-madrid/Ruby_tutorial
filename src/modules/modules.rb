# frozen_string_literal: true

# Modules, it provides a namespace an prevent name clashes

# declaring a module
module MyNewModule
  A_MODULE_CONSTANT = 1 # Local variable inside the module

  # local function
  def a_module_function
    puts "This is a function of #{MyNewModule.name}"
  end
end


