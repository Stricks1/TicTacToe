def error_out_range
  puts 'That number is not on the Board!'
end

def error_place_taken
  puts 'That place is already taken!'
end

def message_won(player)
  puts "Congratulations #{player} you won!"
end

def message_board_full
  puts 'Its a draw! Board full with no winner'
end

def play_again(input)
  if %w[Y y].include?(input)
    true
  else
    false
  end
end

def write_grid(grid)
  grid.each_with_index do |item, index|
    if ((index + 1) % 3).zero?
      puts " #{item} |"
      puts '============='
    else
      print " #{item} |"
    end
  end
end
