def FizzBuzz(number)
  number.each do |j|
    if j % 15 == 0
      puts "FizzBuzz"
    elsif j % 5 == 0
      puts "Buzz"
    elsif j % 3 == 0
      puts "Fizz"
    else
      puts "#{j}"
    end
  end
end

FizzBuzz(1..100)
