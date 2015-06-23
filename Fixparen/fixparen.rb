$priority = []

def initPriorityArray(priorityStr)
  $priority.clear

  reversed = priorityStr.reverse
  reversed.length.times do |i|
    $priority.push(reversed[i])
  end
end

def getPriority(paren)
  return $priority.index(paren)
end

gets.to_i.times {
  args = gets.strip.split(" ")
  mismatched = args[0]
  initPriorityArray(args[1])

  parens = []


}
