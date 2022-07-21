# Handling exceptions

# every code that can raise an error must be tested in a begin block of code
begin
  file = open("/unexistant_file")
  if file
    puts "File open successfully"
  end
  # rescue catch any error that occurs after begin keyword
rescue StandardError => error
  puts error
  file = nil
rescue Exception
  puts "Other kind of error"
rescue
  puts "Simplified error catching"
end

puts "File thrown an error, null was store in file variable: #{file}"

# Retry a code that has failed
file_name = "/unexistant_file"

begin
  file = open(file_name)
  if file
    puts "File opened successfully"
  end
rescue
  puts "File was not found"
  file_name = "support/my_letter.txt" # an existing file
  retry # this will execute the begin code again
end

# Raise errors
begin
  puts "This code will raise an error"
  raise "An wild error appeared"
  puts "This code never will be reached"
rescue Exception => error
  puts error.message
  puts "The error was caught."
  puts "Error trace: #{error.backtrace.inspect}"
end

# Ensure statement, will executes a piece of code after a try catch
begin
  raise "Another exception"
rescue Exception => error
  puts error.message
ensure
  puts "This code will be executed anyways"
end