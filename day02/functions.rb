
def computer(bytes)
  (bytes.size / 4).times do |index|
    instruction, a, b, o = bytes[(index*4)..(index*4+3)]
    case instruction
    when 1
      bytes[o] = bytes[a] + bytes[b]
    when 2
      bytes[o] = bytes[a] * bytes[b]
    when 99
      break;
    end
  end
  bytes
end
