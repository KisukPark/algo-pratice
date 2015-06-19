encodingMap = {
  "0" => " ",
  "1" => "!",
  "4" => "$",
  "5" => "%",
  "8" => "(",
  "9" => ")",
  "a" => "*"
}

gets.to_i.times {
  uri = gets.strip
  decoded = ""

  jump = 0;

  for i in 0...uri.length
    if jump > 0
      jump -= 1
      next
    end

    if uri[i] == "%" and uri[i+1] == "2" and encodingMap.has_key?(uri[i+2])
      decoded += encodingMap[uri[i+2]]
      jump = 2
    else
      decoded += uri[i]
    end
  end

  puts decoded
}
