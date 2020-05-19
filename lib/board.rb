require_relative 'winning'
require_relative 'player'

class Board < Winning
  attr_reader :grid

  @grid = []

  def initialize
    @grid = [1, 2, 3, 4, 5, 6, 7, 8, 9]
  end

  def change_grid(number, char)
    if !number.is_a? Numeric
      number = number.to_i
    end
    if @grid[number - 1].nil? || number.zero?
      error_out_range
      return false
    elsif @grid[number - 1] == 'X' || @grid[number - 1] == 'O'
      error_place_taken
      return false
    elsif @grid[number - 1].between?(1, 9)
      @grid[number - 1] = char
      return true
    end
    false
  end
end
