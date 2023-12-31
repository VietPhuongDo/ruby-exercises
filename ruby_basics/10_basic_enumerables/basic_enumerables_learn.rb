#
# friends = ['Sharon', 'Leo', 'Leila', 'Brian', 'Arun']
# friends.select { |friend| friend != 'Sharon' }
#
# friends.reject { |friend| friend == 'Sharon'  }
#
# friends.each { |friend| p "hello #{friend}"}
#
#
#
# my_hash = { "one" => 1, "two" => 2 }
# my_hash.each { |key,value| p "#{key} is #{value}" }
#
# friends.each { |friend| friend.upcase! }
#
# fruits = ["apple", "banana", "strawberry", "pineapple"]
# fruits.each_with_index { |fruit, index| p fruit if index.even?}

# friends.map { |friend| friend.upcase!}
# p friends

# my_order = ['medium Big Mac', 'medium fries', 'medium milkshake']
# my_order.map { |item| item.gsub!("medium", "big")  }
# p my_order
#
# responses = { 'Sharon' => 'yes', 'Leo' => 'no', 'Leila' => 'no', 'Arun' => 'yes' }
# responses.select!{|person,response| response == 'yes'  }
#
#
# my_numbers = [5, 6, 7, 8]
# my_numbers.reduce(1000){|sum,index| sum += index}
#
# votes = ["Bob's Dirty Burger Shack", "St. Mark's Bistro", "Bob's Dirty Burger Shack"]
# votes.reduce(Hash.new(0)) do
#   |result,vote|
#   result[vote] += 1
#   result
# end
#
# friends = ['Sharon', 'Leo', 'Leila', 'Brian', 'Arun']
# friends.map! { |friend| friend.upcase }
p ["orange", "apple", "banana"].map(&:class)