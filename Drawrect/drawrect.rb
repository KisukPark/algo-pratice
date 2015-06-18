#https://algospot.com/judge/problem/read/DRAWRECT

gets.to_i.times {
	x1, y1 = gets.split(" ")
	x2, y2 = gets.split(" ")
	x3, y3 = gets.split(" ")

	xs = [x1, x2, x3].sort!
	ys = [y1, y2, y3].sort!

	rx = xs[0] == xs[1] ? xs[2] : xs[0]
	ry = ys[0] == ys[1] ? ys[2] : ys[0]

	puts "#{rx} #{ry}"
}
