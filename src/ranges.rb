# Ranges, it allows to make ranges as Sequences, Conditions or Intervals through the .. or ... operator

# .. operator, inclusive operator, includes the whole range
range_1_2 = 1..3
range_1_2.each { |i| puts "Inclusive range 1-2 value: #{i}" } # each method to iterate a range

# ... operator, excluding operator, excludes the higher value
range_1_2 = 1...3
range_1_2.each { |i| puts "Excluding range 1-2 value: #{i}" }

# character sequence, Ruby allows to create an ASCII character sequence
character_seq = 'a'..'d'
character_seq.each { |char| puts "Current character of character sequence: #{char}" }

# Ranges common methods

# converting a sequence to a list (Array)
number_list = (1...10).to_a
puts "Number list: #{number_list}"

character_list = ('baf'..'bat').to_a # it creates a sequence changing only the necessary characters
puts "Character list: #{character_list}"

# includes
puts "Range 1-2 includes 6?: #{range_1_2.include? 6}"

# min
puts "Range 1-2 min number: #{range_1_2.min}"

# max
puts "Range 1-2 max number: #{range_1_2.max}"

# reject, it checks what numbers fulfill a condition
rejected_numbers = range_1_2.reject { |i| i > 1 }
puts "Rejected numbers: #{rejected_numbers}"


# Ranges as conditions, ranges can be use as conditionals
score = 70

result = case score
         when 0..40 then 'Fail' # using a range to evaluate a condition
         when 41..60 then 'Pass'
         when 61..70 then 'Pass with Merit'
         when 71..100 then 'Pass with Distinction'
         else 'Invalid score'
         end

puts "By the score: #{score} then the result is: #{result}"


# Ranges as intervals, ranges can be use to see if some value falls within an interval

if (1..10) === 5 # to check if a range includes a value the equality operator is needed
  puts "5 lies in the range 1 to 10"
end

if ('a'..'j') === 'c'
  puts "c lies in the range a to j"
end

if ('a'..'j') === 'z'
  puts "z lies in the range a to j" # this code won't do
end
