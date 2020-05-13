class Moves
  def change_grid(number, char)
    if @grid[number - 1].nil? || number.zero?
      error_out_range
      return false
    elsif @grid[number - 1] == "X" || @grid[number - 1] == "O"
      error_place_taken
      return false
    elsif @grid[number - 1].between?(1, 9)
      @grid[number - 1] = char
      return true
    end
    false
  end
end
