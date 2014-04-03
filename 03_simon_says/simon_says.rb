def echo(str)
  str
end

def shout(str)
  str.upcase
end

def repeat(str, num = 2)
  result = []
  
  num.times do 
    result << str
  end
  
  return result.join(' ')
end

def start_of_word(str, index)
  str_array = str.split('')
  
  str_array[0...index].join
end

def first_word(str)
  str_array = str.split(' ')
  
  str_array.first
end

def titleize(str)
  str_array = str.split(' ')
  little_words = ['the', 'and', 'over']
  result = []
  
  str_array.each do |word|
    if little_words.include?(word) == false
      result << word.capitalize
    else
      result << word
    end
  end
  
  result.first.capitalize!
  
  return result.join(' ')
  
end



