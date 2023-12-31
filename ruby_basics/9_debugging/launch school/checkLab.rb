# frozen_string_literal: true

# def check_word(word)
#   if /lab/ =~ word
#     puts "In"
#   else
#     puts "Out"
#   end
# end
#
# check_word(gets.chomp())

def execute(&block)
  block.call
end

execute { puts "Hello from inside the execute method!" }