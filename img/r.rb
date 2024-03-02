inputs = [
  ["9", "5", "4"],
  ["20", "40", "60"],
  ["1", "3", "19"]
]
numbers = inputs.sample
pp numbers
# write your program below


puts "Numbers: #{numbers.join(", ")}"

oddNumbers = numbers.find_all { |x| x % 2 != 0 }
puts "Odd Numbers: #{oddNumbers.join(", ")}"

puts 

puts "V1 - sum odd: #{oddNumbers.inject(0, :+)}"
puts "V2 - sum odd: " + 
    "#{numbers.inject(0) { |acc, x| acc + if x % 2 != 0 then x else 0 end }}"
