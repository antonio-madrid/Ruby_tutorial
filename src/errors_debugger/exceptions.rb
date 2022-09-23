# ---------------------------------------------------------------------------------------------------------------------
# Handling exceptions
# ---------------------------------------------------------------------------------------------------------------------

# every code that can raise an error must be tested in a begin block of code
begin
  file = open('/unexistant_file')
  if file
    puts 'File open successfully'
  end
  # rescue catch any error that occurs after begin keyword
rescue StandardError => error
  puts error
  file = nil
rescue Exception
  puts 'Other kind of error'
rescue
  puts 'Simplified error catching'
end

puts "File thrown an error, null was store in file variable: #{file}"



# ---------------------------------------------------------------------------------------------------------------------
# Retry a code that has failed
# ---------------------------------------------------------------------------------------------------------------------

file_name = '/unexistant_file'

begin
  file = open(file_name)
  if file
    puts 'File opened successfully'
  end
rescue
  puts 'File was not found'
  file_name = 'support/my_letter.txt' # an existing file
  retry # this will execute the begin code again
end



# ---------------------------------------------------------------------------------------------------------------------
# Raise errors
# ---------------------------------------------------------------------------------------------------------------------

begin
  puts 'This code will raise an error'
  raise 'An wild error appeared'
  puts 'This code never will be reached'
rescue Exception => error
  puts error.message
  puts 'The error was caught.'
  puts "Error trace: #{error.backtrace.inspect}"
end



# ---------------------------------------------------------------------------------------------------------------------
# Ensure statement, will executes a piece of code after a try catch
# ---------------------------------------------------------------------------------------------------------------------

begin
  raise 'Another exception'
rescue Exception => error
  puts error.message
ensure
  puts 'This code will be executed anyways'
end



# ---------------------------------------------------------------------------------------------------------------------
# else in exceptions, it only be execute if no errors are raised
# ---------------------------------------------------------------------------------------------------------------------

begin
  puts 'No exception is going to be raise here.'
rescue Exception => error
  puts error.message
  puts error.backtrace.inspect
else
  puts 'No exception has been raised, so this code has been executed.'
ensure
  puts 'Ensuring the execution, this piece of code is always executed.'
end



# ---------------------------------------------------------------------------------------------------------------------
# Ruby catch & throw, catch execute a piece of code y throw is not called
# ---------------------------------------------------------------------------------------------------------------------

def prompt_and_get(prompt)
  print prompt
  res = readline.chomp # read a line from standard input/output
  throw :quiteRequested if res == '!' # condition to call to throw
  res
end

# catch & throw helps to jump out when a piece of code goes wrong
catch :quiteRequested do
  # catch will execute the block code unless throw condition is true
  name = prompt_and_get 'Name: ' # these lines will be execute while "!" is not typed into the keyboard
  age = prompt_and_get 'Age: '
  sex = prompt_and_get 'Sex: '
end



# ---------------------------------------------------------------------------------------------------------------------
# Ruby exception types
# ---------------------------------------------------------------------------------------------------------------------

Exception # Exception type is at the top of the hierarchy
StandardError # For input/output errors
SystemExit
Interrupt
NoMemoryError
SignalException
