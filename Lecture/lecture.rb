gets.to_i.times {
	str = gets.strip
	arr = []

	while str.length > 0
		piece = str[0, 2]
		arr.push(piece)
		str = str[2, str.length]
	end

	puts arr.sort!.join
}
