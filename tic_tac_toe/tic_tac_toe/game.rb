require './board'
require './player'

class Game
  attr_reader :game_board, :player_one, :player_two, :moves, :current_player

  def initialize
    @game_board = Board.new
    @moves = 1
  end

  def game_loop
    while @moves <=9
      move = game_move
      game_board.update_board(current_player.symbol,move)
      if current_player.player_win?(game_board)
        current_player.congratulate_winner
        break
      end
      @current_player = change_current_player
      @moves += 1
    end
  end

  def start_game
    puts "\nWelcome to Tic-Tac-Toe!\n\n"
    assign_player_one
    assign_player_two
    game_board.display_board
    game_loop
    tie_message if @moves == 10
  end

  def game_move
    move = current_player.player_move
    move = current_player.player_move until game_board.legal_move?(move)
    move
  end

  def assign_player_one
    puts 'Player one, enter your name: '
    @player_one = Player.new(gets.chomp,'X')
    @current_player = player_one
  end

  def assign_player_two
    puts 'Player two, enter your name: '
    @player_two = Player.new(gets.chomp,'O')
  end

  def change_current_player
    current_player == player_one ? player_two : player_two
  end

  def tie_message
  puts "It's a tie, no one won :("
  end

  def ask_for_new_game
    puts "\nWelcome to Tic-Tac-Toe!\n\n"
    answer = gets.chomp.downcase
    until ['y','n'].include?(answer)
      puts "Invalid input. Please enter 'Y' or 'N'."
      answer = gets.chomp.downcase
    end

    if answer == 'y'
      Game.new.start_game
    else
      puts 'Goodbye!'
    end
  end

end

game1 = Game.new
game1.start_game