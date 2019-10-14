class School
  attr_accessor :name, :adress
  def initialize(name, adress)
    @name = name
    @adress = adress
  end
end

a_school = School.new("A学校","渋谷区")
puts(a_school.name)
puts(a_school.adress)
puts(a_school.instance_variables)

b_school = School.new("B学校")
puts(b_school.name)
