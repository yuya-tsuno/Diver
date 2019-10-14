puts "リピートワードアルゴリズム"
def repeat_string(str)
  length = str.length
 if length <= 4
    puts str * 3
 else
    shorten = str.slice(0..3)
    puts shorten * 3
 end
end
repeat_string('Python')
repeat_string('Go')
repeat_string('C++')
repeat_string('JavaScript')
repeat_string('abcdefg')

puts "HogeHogeアルゴリズム"
def puts_hoge(number)
  number.each do |j|
    if j % 3 == 0 ||  j.to_s.include?("3")
      puts "Hoge"
    else
      puts "#{j}"
    end
  end
end

puts_hoge(1..40)
