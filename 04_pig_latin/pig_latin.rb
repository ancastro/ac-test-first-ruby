def translate(str)
  str_array = str.split(' ')
  result = []
  
  str_array.each do |word|
    result << translate_word(word)
  end
  
  return result.join(' ')
end

def translate_word(str)
  vowels = ['a','e','i','o','u']
  
  result = ""
  first_letter = ""
  i = 0

  while !vowels.include?(str[i])
    first_letter += str[i]
    puts first_letter
    i += 1
  end 
  
  if vowels.include?(str[0])
    result = "#{str}ay"
  elsif str.include?("qu") 

    if str.index("qu") > 0
      temp_str = str.split("qu")
      result = temp_str[1] + temp_str[0] + "quay"
    else
      temp_str = str.split('qu').join + "quay"
      result = "#{temp_str}"
    end
    
  else
    result = "#{str[i..-1]}#{first_letter}ay"
  end
  
  return result
end