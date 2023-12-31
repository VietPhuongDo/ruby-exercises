def substring(text,dictionary)
  result = Hash.new(0)
  lower_text = text.downcase
  dictionary.each do |word|
    matches = lower_text.scan(word).length
    result[word] = matches unless result[word] == 0
  end
  result
end

dictionary = ["below","down","go","going","horn","how","howdy","it","i","low","own","part","partner","sit"]

puts substring("Howdy partner, sit down! How's it going?", dictionary)
