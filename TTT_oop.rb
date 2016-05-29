class Board

  def initialize
    @data = {}
    (1..9).each {|position| @data[position] = Square.new(' ')}
  end

  def all_squared_marked?
    empty_squares.size == 0
    true/false
  end

  def empty_squares
    @data.select {|_,square| square.value == ' '}.values

    [square1, square2, square3]
  end

  def mark_square(postition, marker)
    @data[position].mark(marker)
  end

end

class Square
  attr_accessor :value

  def initialize(value)
    @value = value
  end

  def occupied?
    @value != ' '
  end
end

class Player
  def initialize(name, marker)
    @name = name
    @market = market
  end
end

class Game
  def initialize
    @board = Board.new
    @human = Player.new("Chris", "x")
    @computer = Player.new("R2D2", "0")
    @current_player = @human
  end

  def current_player_marks_square
    if @current_player == @human
      position
    else
      position = @board.empty_squares.sample
    end
    @board.mark_square(position, @current_player.marker)
  end


  def play
    @board.draw
    loop do
      current_player_marks_square

Game.new.play
board = Board.new

board.draw
