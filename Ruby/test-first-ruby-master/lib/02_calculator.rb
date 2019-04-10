def add(num1,num2)
  return num1 + num2
end

def subtract(num1,num2)
  return num1 - num2
end

def sum(arr)
  sum_of_arr = 0
  count = 0
  while count < arr.length
    sum_of_arr += arr[count]
    count += 1
  end
  return sum_of_arr
end

# def multiply(num1,num2)
#   return num1 * num2
# end

def multiply(*num)
  result = 1
  num.each {|n| result *= n}
  result
end

def power(num1,num2)
  result = 1
  i = 0
  while i < num2
    result *= num1
    i += 1
  end
  result
end

def factorial(num)
  result = 1
  if num == 1 || num == 0
    return 1
  else
    result = num * factorial(num-1)
  end
  result
end
