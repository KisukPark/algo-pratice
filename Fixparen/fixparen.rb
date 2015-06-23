$left = {"(" => ")", "{" => "}", "[" => "]", "<" => ">"}
$right = {")" => "(", "}" => "{", "]" => "[", ">" => "<"}
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

def parens2str(parens)
    r = nil
    o = parens.first
    c = parens.last

    if getPriority(o) <= getPriority($right[c])
        r = [$right[c]] + parens[1..parens.length-2] + [c]
    else
        r = [o] + parens[1..parens.length-2] + [$left[o]]
    end

    return r.join
end


gets.to_i.times {
  args = gets.strip.split(" ")
  mismatched = args[0]
  initPriorityArray(args[1])

  parens = []

  mismatched.length.times do |i|
      paren = mismatched[i]

      if ($left.has_key? paren)
          #left
          parens.push(paren)
      else
          #right
          parens.reverse.each_with_index do |pa, i|
              if pa.length == 1 && $left.has_key?(pa)

                  ei = parens.length - 1
                  si = ei - i
                  r = parens2str(parens[si..ei].push(paren))
                  parens[si..ei] = r
                  break
              end
          end
      end
  end

  puts parens.join
}
