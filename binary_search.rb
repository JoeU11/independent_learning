def binary_search(array, target)
  max = array.length - 1
  min = 0

  while min <= max
    mid = (min + max) / 2
    # p "min is " + array[min].to_s
    # p "max is " + array[max].to_s
    # p "testing " + array[mid].to_s
    if array[mid] == target
      return array[mid]
    elsif array[mid] > target
      max = mid - 1
    else 
      min = mid + 1
    end
  end

  return nil
end


# Test Case 1
array = (1..100).to_a
target = 5
if binary_search(array, target) == target
  p "pass"
else
  p "fail"
end

# Test Case 2
target = 60
if binary_search(array, target) == target
  p "pass"
else
  p "fail"
end

# Test Case 3
target = 99
if binary_search(array, target) == target
  p "pass"
else
  p "fail"
end

# Test Case 4
target = 1
if binary_search(array, target) == target
  p "pass"
else
  p "fail"
end

# Test Case 5
target = 59
if binary_search(array, target) == target
  p "pass"
else
  p "fail"
end

# Test Case 6
target = 100
if binary_search(array, target) == target
  p "pass"
else
  p "fail"
end