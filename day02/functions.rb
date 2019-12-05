def computer(bytes)
  counter = 0
  loop do
    case bytes[counter]
    when 1
      a = bytes[counter+=1]
      b = bytes[counter+=1]
      o = bytes[counter+=1]
      bytes[o] = bytes[a] + bytes[b]
    when 2
      a = bytes[counter+=1]
      b = bytes[counter+=1]
      o = bytes[counter+=1]
      bytes[o] = bytes[a] * bytes[b]
    when 99
      return bytes
    end
    counter+=1
  end
  bytes
end

def bruteforce_computer_result(programm, expected_result)
  for noun in 0..100 do
    puts ""
    for verb in 0..100 do
      print '.'
      modded = programm.dup
      modded[1] = noun
      modded[2] = verb
      return [noun, verb] if computer(modded)[0] == expected_result
    end
  end
  return [-1, -1]
end
