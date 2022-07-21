# Iterators, methods supported by Collections. Objects that store a group of data

# each, iteration method, it has to equal way to perform it
ary = [1, 2, 3, 4, 5, 6]

ary.each do |i|
  # do version
  puts "Iterating a collection (Array) with do, current value is: #{i}"
end

# brackets version
ary.each { |i| puts "Iterating a collection (Array) with brackets, current value is: #{i}" }

# Collect Iterator, it creates an iterator from a group of data
my_ary = [1, 2, 3, 4]
my_enumerator = my_ary.collect # creates an iterable enumerator

puts "First enumerator value is: #{my_enumerator.next}" # the enumerable can be iterate
puts "Second enumerator value is: #{my_enumerator.next}"
puts "Third enumerator value is: #{my_enumerator.next}"



my_ary = [1, 2, 3, 4]
my_enumerator = my_ary.collect { |x| 10 * x } # a collection can be operated resulting in a new array

puts my_enumerator

