#problem 1

def tag(name, content)
    "<#{name}>#{content}</#{name}>"
  end
  
puts tag :p, "This is a paragraph."
puts tag :h1, "This is a header."  

puts "---------------------"
#problem 2

numbers = [1,2,3,4,5]

numbers.each do |number|
    number = number * 2
    puts number
end

triple = Proc.new { |x| x * 3 }
puts [1,2,3,4,5].map(&triple).inspect


puts "---------------------"
#problem 3

def safe_divide(num1, num2)
    begin
        result = num1 / num2
    rescue => e
        puts "Error: Division by zero is not allowed."
    end
end
    
puts safe_divide(10, 2)
puts safe_divide(5, 0)

puts "---------------------"
#problem 4

def reversed_file
    begin
        File.open('input.txt', 'r') do |input_file|
            reversed_file = input_file.read.reverse

            File.open('output.txt', 'w') do |output_file|
                output_file.write(reversed_file)
            end     
        end
    rescue => e
        puts "Error: #{e.message}"
    end
end

reversed_file

puts "---------------------"
#problem 5

class InvalidAgeError < StandardError;  end

def validate_age(age)
    if age < 0
        begin
            raise InvalidAgeError, "Age cannot be negative"
        rescue InvalidAgeError => e
            puts "#{e.class}: #{e.message}"
        end
    else
        puts "Age is valid."
    end
end

validate_age(-5)
validate_age(30)

puts "---------------------"
#problem 6

student = { name: "Alice", age: 20, grade: "A" }

puts "Name: #{student[:name]}"   
puts "Age: #{student[:age]}" 
puts "Grade: #{student[:grade]} "

puts "---------------------"
#problem 7

numbers = [1, 2, 3, 4, 5, 6]

even_numbers = numbers.select { |number| number.even? }

even_numbers.each do |even_number|
  puts even_number
end

puts "---------------------"
#problem 8

def warn_unless(condition, warning_message)
    puts warning_message unless condition
end
  
warn_unless(true, "This is a warning.")
warn_unless(false, "This is a warning.")

puts "---------------------"
#problem 9

def check_status
    puts "Status: #{$app_status}"
end

$app_status = "OK"
check_status
$app_status = "Error"
check_status

puts "---------------------"
#problem 10

5.times do |i|
    puts "Ruby is fun!"
end

puts "---------------------"
#problem 11

range_to_array = (1..5).to_a  
(1..5).each do |number|
    puts number
end

puts "---------------------"
#problem 12

i = 1
File.foreach('sample.txt') do |line|
    puts "#{i}: #{line}"
    i += 1
    break if i > 3
end

puts "---------------------"
#problem 13

ARGV.each do |arg|
  puts "Hello, #{arg}!"
end


puts "---------------------"
#problem 14

words = ["Ruby", "is", "awesome"]
lengths = words.map { |word| word.length }
puts lengths.inspect


puts "---------------------"
#problem 15

def divide_numbers(num1, num2)
    begin
        result = num1 / num2
    rescue ZeroDivisionError => e
        puts "Cannot divide by zero!"
    end
end

puts divide_numbers(10, 2)
puts divide_numbers(10, 0)