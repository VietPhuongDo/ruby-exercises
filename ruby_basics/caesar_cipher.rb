def caesar_cipher(message, shift)
  message.chars.map do |char|
    base = char.ord<91 ?65 :97
    if char.ord.between?(65,90) || char.ord.between?(97,122)
      ((char.ord - base + shift )%26 + base).chr
    else
      char
    end
  end.join
end

puts caesar_cipher('ABC',2)