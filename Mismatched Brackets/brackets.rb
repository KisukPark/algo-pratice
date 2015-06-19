openBracketMap = {
  "(" => ")",
  "{" => "}",
  "[" => "]"
}

closeBracketMap = {
  ")" => "(",
  "}" => "{",
  "]" => "["
}

gets.to_i.times {
  brackets = gets.strip
  bracketStack = []

  r = true

  brackets.length.times.each do |i|
    if (openBracketMap.has_key?(brackets[i]))
      bracketStack.push(brackets[i])
    else
      if bracketStack.last == closeBracketMap[brackets[i]]
        bracketStack.delete_at(bracketStack.size-1)
      else
        r = false
        puts "NO"
        break
      end
    end
  end

  if bracketStack.size == 0 and r == true
    puts "YES"
  end
}
