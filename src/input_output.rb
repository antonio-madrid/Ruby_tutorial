# $LOAD_PATH << '.'
# IO class methods, all the IO methods derived from the IO class

# puts, prints the output, finish with a new line
message = "Print a message"
puts message
puts "Print an operation: #{2 + 2}"

# print, prints the output without any new line
print "Hello"
print " there\n"

# putc, prints just one character at a time
putc message

# gets, takes any input from the STDIN
# puts "\nEnter your name"
# name = gets
# puts "Your name is #{name}"

# File object

MY_LETTER_PATH = "support/my_letter.txt"

# Open a file
my_letter = File.open(MY_LETTER_PATH)
puts my_letter.gets # reads the content
my_letter.close # close any file stream opened

my_letter = File.open(MY_LETTER_PATH)

my_letter_content = my_letter.sysread(100) # gets an arbitrary part of the content
puts my_letter_content
my_letter.close

my_letter = File.open(MY_LETTER_PATH)
lines = my_letter.readlines # storing all document's lines in an array
puts lines.at 0

# Write a file
MY_NEW_FILE_PATH = "support/my_new_letter.txt"
my_new_letter = File.new(MY_NEW_FILE_PATH, "w+")
my_new_letter.syswrite "Hello there" # writes data on a file
my_new_letter.close

# Renaming a file
MY_NEW_FILE_RENAMED_PATH = "support/my_new_letter"
File.rename MY_NEW_FILE_PATH, MY_NEW_FILE_RENAMED_PATH if File::exists?(MY_LETTER_PATH)

# Deleting a file
File.delete MY_NEW_FILE_RENAMED_PATH if File::exists?(MY_NEW_FILE_RENAMED_PATH)

# Check if a file is a file
if File.file?(MY_LETTER_PATH)
  puts "My letter is a file"
else
  puts "My letter is not a file"
end

# Check if a file is a directory
if File.directory?(MY_LETTER_PATH)
  puts "My letter is a directory"
else
  puts "My letter is not a directory"
end

# Check if a file is readable
if File.readable?(MY_LETTER_PATH)
  puts "My letter is readable"
else
  puts "My letter is not readable"
end

# Check if a file is readable
if File.writable?(MY_LETTER_PATH)
  puts "My letter is writable"
else
  puts "My letter is not writable"
end

# Check if a file is executable
if File.executable?(MY_LETTER_PATH)
  puts "My letter is executable"
else
  puts "My letter is not executable"
end

# Check if a file has zero size and its size
if File.zero?(MY_LETTER_PATH)
  puts "My letter is zero size"
else
  puts "My letter is not zero size, it is #{File.size?(MY_LETTER_PATH) if File.exist?(MY_LETTER_PATH)}"
end

# Check what type is a file
file_type = File::ftype MY_LETTER_PATH
puts "my_letter.txt type is: #{file_type}"

# Dir object, allows to change ruby current directory and manipulating them
puts Dir.pwd # writes current working directory
Dir.chdir("..") # change to the indicated path
puts Dir.pwd

# Create a directory
Dir.mkdir("my_new_directory", 755) # creating a directory with permissions

# Delete a directory
Dir.delete "my_new_directory"

