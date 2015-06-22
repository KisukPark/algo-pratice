# https://algospot.com/judge/problem/read/WEIRD
def getDividors (number)
  dividors = []
  div_sum = 0

  start = number / 2
  start.downto(2) do |i|
    if number % i == 0
      dividors.push(i)

      if div_sum <= number
        div_sum += i
      end
    end
  end
  dividors.push(1)

  isBigger = div_sum > number

  return dividors, isBigger
end

def isWeirdNumber(number, dividors)
  sum = 0

  for d in dividors do
    tmp = sum + d
    return false if tmp == number

    if tmp > number
      next
    else
      sum = tmp
    end
  end
end


gets.to_i.times {
  n = gets.to_i
  r1 = getDividors(n)

  # condition 1.
  if !r1[1]
    puts "not weird"
    next
  end

  # condition 2.
  r2 = isWeirdNumber(n, r1[0])

  if r2
    puts "weird"
  else
    puts "not weird"
  end
}
