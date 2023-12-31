def concatenate_example(string)
  # use concatenation to format the result to be "Classic <string>"
  "Classic " << string
end

def concatenate(string)
  # use concatenation to format the result to be "Hello <string>!"
  result1 = "Hello " << string << "!"
  return  result1
end

def substrings(word)
  # return the first 4 letters from the word using substrings
  result = word[0,4]
  return  result
end
def capitalize(word)
  # capitalize the first letter of the word
  first = word[0].upcase
  rest = word[1..-1].downcase
  result = first + rest
  return  result
end
def uppercase(string)
  # uppercase all letters in the string
  string = string.upcase
  return  string
end
puts(uppercase('make me bigger'))

def downcase(string)
  # downcase all letters in the strings
  string = string.downcase
  return string
end

def empty_string(string)
  # return true if the string is empty
  if string.empty
    return  true
  end
end

def string_length(string)
  # return the length of the string
  return string.length
end

def reverse(string)
  # return the same string, with all of its characters reversed
  string.reverse

end

def space_remover(string)
  # remove all the spaces in the string using gsub
  string.gsub(" ", "")
end
puts space_remover("Viet phuong Do")
