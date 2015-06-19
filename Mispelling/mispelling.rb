gets.to_i.times do |i|
  pos, word = gets.split(" ")
  pos = pos.to_i
  word = word.strip
  puts "#{i+1} #{word[0, pos-1] + word[pos, word.length]}"
end
