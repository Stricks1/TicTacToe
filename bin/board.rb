# Board class to store the grid and prints on the screen
class Board
  @grid = []

  def initialize
    @grid = [1, 2, 3, 4, 5, 6, 7, 8, 9]
  end

  def error_out_range
    puts "That number is not on the Board!"
  end

  def error_place_taken
    puts "That place is already taken!"
  end

  def message_won(player)
    puts "Congratulations #{player} you won!"
  end

  def message_board_full
    puts "Board full with no winner"
  end

  def write_grid
    @grid.each_with_index do |item, index|
      if ((index + 1) % 3).zero?
        puts "#{item} |"
        puts "============="
      else
        print " #{item} |"
      end
    end
  end
end
