# Modules, it provides a namespace an prevent name clashes

module My_New_Module # declaring a module
  A_MODULE_CONSTANT = 1 # Local variable inside the module

  def a_module_function # local function
    puts "This is a function of #{My_New_Module.name}"
  end
end


