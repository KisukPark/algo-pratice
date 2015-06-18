mask = 255 << 24

gets.to_i.times {
  after_endian = 0
  before_endian = gets.to_i

  # for 4 bytes
  4.times do |i|
    tmp = before_endian & mask
    after_endian = after_endian ^ tmp
    before_endian = before_endian << 8

    if i < 3
      after_endian = after_endian >> 8
    end
  end

  puts after_endian
}
