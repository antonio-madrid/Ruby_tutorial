# Modules, it provides a namespace an prevent name clashes

# declaring a module
module My_New_Module
  A_MODULE_CONSTANT = 1 # Local variable inside the module

  # local function
  def a_module_function
    puts "This is a function of #{My_New_Module.name}"
  end
end


