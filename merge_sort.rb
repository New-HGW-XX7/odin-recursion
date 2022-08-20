def helper(left, right, result = [])
  while left.empty? == false and right.empty? == false
    if left[0] < right[0]
      result << left.delete_at(0)
      result << right if left.empty?
    else
      result << right.delete_at(0)
      result << left if right.empty?
    end
  end
  result.flatten
end

def breakdown(arr, i = 0)
  return p arr if arr.length < 2
  
  arr_l = arr[0...arr.length / 2]
  arr_r = arr[arr.length / 2..-1]
  
  p helper(breakdown(arr_l), breakdown(arr_r))
end

p arr = [4, 3, 2, 1, 5, 8]
p breakdown(arr) == [1, 2, 3, 4, 5, 8]