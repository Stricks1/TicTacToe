# rubocop:disable Metrics/CyclomaticComplexity, Metrics/PerceivedComplexity
class Winning
  def finish_condition(player)
    if [@grid[0], @grid[1], @grid[2]].uniq.length == 1 ||
       [@grid[3], @grid[4], @grid[5]].uniq.length == 1 ||
       [@grid[6], @grid[7], @grid[8]].uniq.length == 1 ||
       [@grid[0], @grid[3], @grid[6]].uniq.length == 1 ||
       [@grid[1], @grid[4], @grid[7]].uniq.length == 1 ||
       [@grid[2], @grid[5], @grid[8]].uniq.length == 1 ||
       [@grid[0], @grid[4], @grid[8]].uniq.length == 1 ||
       [@grid[2], @grid[4], @grid[6]].uniq.length == 1
      message_won(player)
      return true
    end
    message_draw
    i = 0
    while i < @grid.size
      return false if @grid[i].is_a? Numeric

      i += 1
    end
    message_board_full
    true
  end
end

# rubocop:enable Metrics/CyclomaticComplexity, Metrics/PerceivedComplexity
