def play_again(input)
  if %w[Y y].include?(input)
    true
  else
    false
  end
end
