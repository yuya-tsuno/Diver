def count_letter(str)
  count = 0
  str.split("").each do
    count += 1
  end
  return count
end

p count_letter("999999999")
