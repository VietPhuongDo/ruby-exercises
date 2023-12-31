friends = ['Sharon', 'Leo', 'Leila', 'Brian', 'Arun']

invited_list = friends.select { |friend| friend != 'Brian' }

invited_list.include?('Brian')

numbers = [21, 42, 303, 499, 550, 811]

numbers.any? do
  |number| number < 100
end

numbers.all? do
  |number| number < 100
end

numbers.none? do
|number| number < 100
end