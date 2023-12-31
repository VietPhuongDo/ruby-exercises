#  nested collection/hash is matrix
test_scores = [
  [97, 76, 79, 93],
  [79, 84, 76, 79],
  [88, 67, 64, 76],
  [94, 55, 67, 81]
]

teacher_mailboxes = [
  ["Adams", "Baker", "Clark", "Davis"],
  ["Jones", "Lewis", "Lopez", "Moore"],
  ["Perez", "Scott", "Smith", "Young"]
]
# accessing element
p teacher_mailboxes[0][-3]
p teacher_mailboxes.dig(3,0)

# new mutable array
mutable = Array.new(3, Array.new(2))
#=> [[nil, nil], [nil, nil], [nil, nil]]
mutable[0][0] = 1000
#=> 1000
#=> [[1000, nil], [1000, nil], [1000, nil]]
#
#new immutable array
immutable = Array.new(3) { Array.new(2) }
#=> [[nil, nil], [nil, nil], [nil, nil]]
immutable[0][0] = 1000
#=> 1000
#=> [[1000, nil], [nil, nil], [nil, nil]]

# adding element
test_scores << [100, 99, 98, 97]
#=> [[97, 76, 79, 93], [79, 84, 76, 79], [88, 67, 64, 76], [94, 55, 67, 81], [100, 99, 98, 97]]
test_scores[0].push(100)
#=> [97, 76, 79, 93, 100]
#=> [[97, 76, 79, 93, 100], [79, 84, 76, 79], [88, 67, 64, 76], [94, 55, 67, 81], [100, 99, 98, 97]]

# delete element
test_scores.pop
#=> [100, 99, 98, 97]
test_scores[0].pop
#=> 100
#=> [[97, 76, 79, 93], [79, 84, 76, 79], [88, 67, 64, 76], [94, 55, 67, 81]]

#iterating over a nested array
# row -> column -> element
teacher_mailboxes.each_with_index do |row,row_index|
  row.each_with_index  do |column,column_index|
    puts "row #{row_index} column #{column_index} is #{column}"
  end
end
# -> element
teacher_mailboxes.flatten.each do |teacher|
  puts "#{teacher} is amazing!"
end


