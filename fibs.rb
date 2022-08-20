def fibs(n)
  output = [0, 1]
  return [0] if n == 1
  return output if n == 2

  i = 2
  while i < n
    output << output[-1] + output[-2]
    i += 1
  end

  output
end
p fibs(8)
