# rubocop:disable Style/NestedParenthesizedCalls
require './lib/messages.rb'

describe '#error_out_range' do
  it 'Return out of range message' do
    expect(error_out_range).to eql(puts 'That number is not on the Board!')
  end
end

describe '#error_place_taken' do
  it 'Return message informing the place is already filled' do
    expect(error_place_taken).to eql(puts 'That place is already taken!')
  end
end

describe '#message_won' do
  it 'Return message informing who won the game' do
    expect(message_won('Rindra')).to eql(puts 'Congratulations Rindra you won!')
  end
end

describe '#message_board_full' do
  it 'Return message informing the game is tied and board is full' do
    expect(message_board_full).to eql(puts 'Its a draw! Board full with no winner')
  end
end

describe '#play_again' do
  it 'Return true if user type \'y\' to play again' do
    expect(play_again('Y')).to eql(true)
  end

  it 'Return false if don\'t type \'y\' to play again' do
    expect(play_again('n')).to eql(false)
  end
end

describe '#write_grid' do
  it 'Draws the grid' do
    expect(write_grid([1, 2, 3, 4, 'X', 'O', 7, 8, 9])).to eql([1, 2, 3, 4, 'X', 'O', 7, 8, 9])
  end
end

# rubocop:enable Style/NestedParenthesizedCalls
