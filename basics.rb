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

# Print executed commands
print <<`EOF`
  echo Hi there
  echo ${HOME}
  pwd
EOF

# Global variables
$mi_global_variable = "I am global"
print $mi_global_variable

# Local variables, its scope corresponds to a block of code or a module
_mi_local_variable = "I am local"
print _mi_local_variable

# END executes code at the end of the runtime such as after hook.
END {
  puts "Finalizing execution."
}
