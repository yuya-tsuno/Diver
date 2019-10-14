num = gets.to_i
puts = num
if num >= 50
  puts "50以上だよ"
elsif num ==30
  puts "30ジャストだよ"
else
  puts "50未満だよ"
end

surplus = num % 2
if surplus = 0
  puts "numは偶数"
else
  puts "numは奇数"
end

puts "-------演習問題１３-------"

i = 0
while i < 10
  puts "おはよう！"
  i += 1
  puts i
end

for i in 1 .. 5
  puts "Hello"
end

10.times do
  puts "こんばんは"
end

puts "演習問題１６"
numbers = [1,2,3,4,5,6,7,8,9,10]
numbers.each do |n|
  puts n
end

puts "演習問題17"

def addition(x,y,z)
  return (x+y+z)/3
end

puts addition(2,3,7)

puts "演習問題１８"

def division(x,y)
  puts x / y
end

division(10,5)

puts "演習問題２０"

def doing(date, place, food)
  return "#{date}は#{place}で#{food}を食べる。"
end

puts doing("今日","渋谷","カレー")
puts doing("明日","池袋","オムライス")
