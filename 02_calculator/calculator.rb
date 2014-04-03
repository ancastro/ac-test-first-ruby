def add(num1, num2)
  num1 + num2
end

def subtract(num1, num2)
  num1 - num2
end

def sum(arr)
  result = 0
  
  arr.each { |num| result += num }
  
  return result
end

def multiply(*nums)
  result = 1
  
  nums.each { |num| result *= num}
  
  return result
end

def power(base, power)
  base**power
end

def factorial(num)
  return 1 if num == 0
  
  result = 0
  result = num * factorial(num - 1)
  
  return result
end










