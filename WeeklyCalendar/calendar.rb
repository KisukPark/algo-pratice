$weeks = [:Sunday, :Monday, :Tuesday, :Wednesday, :Thursday, :Friday, :Saturday]
$daysOfMonth = [-1, 31, 28, 31, 30, 31, 30, 31, 31, 30, 31, 30, 31]

def getNextDay(month, date)
	m = 0
	d = 0
	isLastDate = $daysOfMonth[month] == date

	if date < 0
		m = month == 1 ? 12 : month - 1
		d = $daysOfMonth[m] + date + 1
	elsif isLastDate
		m = month == 12 ? 1 : month + 1
		d = 1
	else
		m = month
		d = date + 1
	end

	return m, d
end

gets.to_i.times {
	args = gets.split(" ")
	month = args[0].to_i
	date = args[1].to_i
	day = args[2].to_sym
	date -= ($weeks.index(day) + 1)

	dates = []

	r = month, date
	7.times {
		r = getNextDay(r[0], r[1])
		dates.push(r[1])
	}

	puts dates.join(" ")
}
