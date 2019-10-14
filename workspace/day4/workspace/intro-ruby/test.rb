puts "Hello World"

name = "Tom"
puts name

# puts number
number = 100
puts number

content = "モンハンやりたい"
puts content

car = 'Honda'
puts '車と行ったら' + car

age = 22
puts "#{age}歳になります"
puts '#{age}歳になります'

if age < 20
  puts "未成年飲酒万歳！"
end

puts(age<20)

if age < 20 # trueを返却する条件式
  puts "あなたは未成年です(1)" # 処理が実行される
end

if true # trueという値そのもの
  puts "あなたは未成年です(2)" # 処理が実行される
end

if age > 20  # falseを返却する条件式
  puts "あなたは未成年です(3)" # 処理は実行されない
end

if false # falseという値そのもの
  puts "あなたは未成年です(4)" # 処理は実行されない
end

age = 20
puts (age < 20)


puts "---14------------"

age = 22
unless age < 20
  puts "僕は未成年ではありません"
end
