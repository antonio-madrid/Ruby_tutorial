# if..else Statement
option = 1

if option == 1
  puts 'Option one displayed'
elsif option == 2
  puts "Option two won't be displayed"
else
  puts "Default option won't be displayed"
end

# Ruby if modifier, it executes the previous code if the conditional is true
display = true
print 'display this message if display is true' if display

# Ruby unless Statement, its the opposite an if statement, that means is an if not
option = false

unless option
  puts 'Option is false'
else
  puts 'Option is true'
end

# Ruby unless modifier
puts 'It will be displayed unless option is true' unless option

# Ruby case Statement
$age = 33
case $age
when 0..2
  puts 'Baby'
when 3..6
  puts 'Little child'
when 7..12
  puts 'Child'
when 13..18
  puts 'Youth'
else
  puts 'Adult'
end
