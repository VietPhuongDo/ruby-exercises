# one key have many value
vehicles = {
  alice: { year: 2019, make: 'Toyota', model: 'Corolla' },
  blake: { year: 2020, make: 'Volkswagen', model: 'Beetle' },
  caleb: { year: 2020, make: 'Honda', model: 'Accord' }
}

#accessing data in nestedhash
vehicles[:alice][:year]
vehicles[:caleb][:model]

# p vehicles[:zoe][:year]
#=> NoMethodError
vehicles.dig(:zoe, :year)
#=> nil
vehicles[:alice][:color]
#=> nil
vehicles.dig(:alice, :color)
#=> nil

#adding/removing data
# add new hash
vehicles[:dave] = { year: 2021, make: 'BMW', model: 'i8' }
# add new value in hash
vehicles[:dave][:color] = 'red'
#delete a hash
vehicles.delete(:blake)

#Methods
# vehicles.select do |name,data|
#   if data[:year] >= 2020
# end
# vehicles.collect { |name, data| name if data[:year] >= 2020 }
#=> [nil, :caleb, :dave]
#The #compact method returns an array (or hash) without nil values, so let’s chain it on the end of the block.
vehicles.collect do |name,data|
  name if data[:year] >= 2020
end.compact
#=> [:caleb, :dave]

# filter_map = collect + compact
vehicles.filter_map { |name, data| name if data[:year] >= 2020 }
#=> [:caleb, :dave]

data = [
  {"id"=>"1", "properties"=>{"name"=>"Google", "stock_symbol"=>'GOOG', "primary_role"=>"company"}},
  {"id"=>"2", "properties"=>{"name"=>"Facebook", "stock_symbol"=>'FB', "primary_role"=>"company"}}
]
# For each company, print out the name, ID, and the stock symbol (i.e. "Google - 1 - GOOG" and "Facebook - 2 - FB")
# Remove "primary role" key/value from Google and Facebook
# Assign a new "industry" key/value for Google and Facebook

data.each do |result|
  str1 = result.dig("properties",'name')
  str2 = result.dig('id')
  str3 = result.dig('properties','stock_symbol')
  str = str1 + " - " + str2 + " - " + str3
  puts str
end

data.each do |result|
  result['properties'].delete('primary_role')
  p result
end

data.each do |result|
  result['properties']['industry'] = "Social media"
  p result
end


