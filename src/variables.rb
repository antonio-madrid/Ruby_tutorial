# Ruby is case sensitive
rAM = 'memory'
ram = 'other memory'

rAM == ram # they are different variables

# Parallel assignment, declare multiple variables at the same time
a, b, c = 10, 20, 30

# swap values
a, b = b, c

# Global variables
$mi_global_variable = "I am global"
print $mi_global_variable

# Local variables, its scope corresponds to a block of code or a module
_mi_local_variable = "I am local"
print _mi_local_variable