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

def fibs_rec(n)
  return if n == 1
  output = [0, 1]

  output << fibs_rec(n - 1) + fibs_rec(n -2)
  output
end


def fibs_rec(n)
  return [0] if n == 1
  return [0, 1] if n == 2

  output = fibs_rec(n - 1)
  output << output[-2] + output[-1]
end

p fibs_rec(8)