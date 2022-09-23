# ---------------------------------------------------------------------------------------------------------------------
# Comments
# ---------------------------------------------------------------------------------------------------------------------

# Block of comments
=begin
This is a block
of comments
to be ignored
=end


# Ruby ignores whitespaces



# ---------------------------------------------------------------------------------------------------------------------
# BEGIN executes code at the beginning of the runtime such as before hook.
# ---------------------------------------------------------------------------------------------------------------------

BEGIN {
  print 'First message without new line.'
}

5 + 5 # This is another comment after an statement

# Print console messages
puts 'This is a message'



# ---------------------------------------------------------------------------------------------------------------------
# Document here, Ruby allows that feature
# ---------------------------------------------------------------------------------------------------------------------

# print allows printing console messages through objects without new lines by default
print <<EOF
  This is the first way of creating
  here document ie. multiple line string.
EOF

print <<"EOF"
  This is the second way of creating
  here document ie. multiple line string.
EOF



# ---------------------------------------------------------------------------------------------------------------------
# Strings
# ---------------------------------------------------------------------------------------------------------------------

# General delimited Strings
puts %{This is another way to create a string}
puts %Q{ This is another way to create a string as well. }
puts %q[ This is also another way to create a string. ]
puts %x!ls! # This is a way to execute the ls command on the project root a get the string result

# String object
my_string = String.new('This is a way to create an string through the String object.')

# Print executed commands
print <<`EOF`
  echo Hi there
  echo ${HOME}
  pwd
EOF



# ---------------------------------------------------------------------------------------------------------------------
# END executes code at the end of the runtime such as after hook.
# ---------------------------------------------------------------------------------------------------------------------

END {
  puts 'Finalizing execution.'
}
