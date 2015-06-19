gets.to_i.times {
  str = gets.strip

  evenStr = ""
  oddStr = ""

  str.length.times do |i|
    if i % 2 == 0
      evenStr += str[i]
    else
      oddStr += str[i]
    end
  end

  puts evenStr + oddStr
}
