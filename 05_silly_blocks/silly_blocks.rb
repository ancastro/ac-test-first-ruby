def reverser
  words = yield.split
  
  result = []
  
  words.each do |word|
    result << word.reverse
  end
  
  return result.join(' ')
end

def adder(num = 1, &a_block)
  
  result = a_block.call + num
  
  result
  
end

def repeater(num = 1, &a_block)
  num.times(&a_block)
end

