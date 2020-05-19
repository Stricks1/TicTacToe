# rubocop:disable
require './lib/winning.rb'
require './lib/board.rb'
require './lib/messages.rb'

describe Board do
  let(:board) { Board.new }
  describe '#change_grid' do
    it 'Return false if the user give string as  parameter to fill the board' do
      expect(board.change_grid('wrong', 'X')).to eql(false)
    end
    it 'Return false if the user give a parameter not between 1 and 9 to fill the board' do
      expect(board.change_grid(12, 'X')).to eql(false)
    end
    it 'Return false if the user give a right parameter but the cell is already assigned' do
      board.change_grid(1, 'X')
      expect(board.change_grid(1, 'O')).to eql(false)
    end
  end
end
# rubocop:enable
