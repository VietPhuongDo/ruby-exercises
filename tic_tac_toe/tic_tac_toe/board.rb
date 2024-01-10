class Board
  attr_reader :board

  def initialize
    @board = Array.new(9){ |n| n + 1 }
  end

  def display_board
    puts 'Current board:'
    puts '--------------'
    @board.each_slice(3) { |row| puts row.join(' | ') }
    puts '--------------'
  end

  def update_board(symbol,location)
    location = location.to_i
    board[location-1] = symbol
    puts location
    display_board
  end

  def row_win?(symbol)
    board[0..2].all? { |sym| sym == symbol } || board[3..5].all? { |sym| sym == symbol } || board[6..8].all? { |sym| sym == symbol }
  end

  def column_win?(symbol)
    board.values_at(0,3,6).all? { |sym| sym == symbol} || board.values_at(1,4,7).all? { |sym| sym == symbol} || board.values_at(2,5,8).all? { |sym| sym == symbol}
  end

  def diagonal_win?(symbol)
    board.values_at(0,4,8).all? {|sym| sym == symbol} ||  board.values_at(2,4,6).all? {|sym| sym == symbol}
  end

  def legal_move?(location)
    true if board[location - 1].is_a?(Numeric)
  end
end

