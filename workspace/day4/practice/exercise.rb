# 演習問題2
puts "DIVE INTO CODE"
puts "私は受講生です。"
puts "30歳です。"

# 演習問題３
puts 5 + 5 == 10
puts 8 - 3 == 5
puts 5 * 5 == 25
puts 40 / 5 == 8
puts 28 % 6 ==  4

puts "演習問題４"
puts 10 < 8
puts 30 > 25
puts 15 == 15
puts 20 > 30
puts 8 < 10

puts "演習問題６"
name = "山田太郎"
age = 18
puts name
puts age

puts "演習問題７"
puts "私の名前は#{name}です。年齢は#{age}歳です。"

puts "演習問題８"
season = ["春","夏","秋"]
season << "冬"
puts season[2]
p season

puts "演習問題９"
house = {:price => "2000万", :location => "東京都", :size => "100坪"}
p house[:location]

puts "演習問題１０"
house = [{price:"2000万",location: "東京都",size:"80坪"},
          {price:"1500万",location:"千葉県",size:"50坪"},
          {price:"800万",location:"埼玉県",size:"100坪"}]
p house[1][:location]
p house[0][:size]
print house[2][:price], house[2][:size]
house = [{price:"2000万",location: "東京都",size:"80坪"},{price:"1500万",location:"千葉県",size:"50坪"},{price:"800万",location:"埼玉県",size:"100坪"}]
