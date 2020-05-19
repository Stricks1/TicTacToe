# rubocop:disable
require "./lib/winning.rb"
require "./lib/board.rb"
require "./lib/messages.rb"

describe Winning do
  let(:winning_board) { Board.new }
  let(:empty_board) { Board.new }

  describe "finish_condition" do
    it "Return true if someone win or board is full" do
      winning_board.change_grid(1, "X")
      winning_board.change_grid(2, "X")
      winning_board.change_grid(3, "X")
      expect(winning_board.finish_condition("PlayerName")).to eql(true)
    end

    it "Return true if no one win and board is full" do
      winning_board.change_grid(1, "X")
      winning_board.change_grid(2, "O")
      winning_board.change_grid(3, "O")
      winning_board.change_grid(4, "O")
      winning_board.change_grid(5, "X")
      winning_board.change_grid(6, "X")
      winning_board.change_grid(7, "X")
      winning_board.change_grid(8, "X")
      winning_board.change_grid(9, "0")
      expect(winning_board.finish_condition("PlayerName")).to eql(true)
    end

    it "Return false if no one win and board not full" do
      winning_board.change_grid(1, "X")
      winning_board.change_grid(2, "O")
      winning_board.change_grid(3, "O")
      winning_board.change_grid(4, "O")
      winning_board.change_grid(5, "X")
      winning_board.change_grid(6, "X")
      winning_board.change_grid(7, "X")
      winning_board.change_grid(8, "X")
      expect(winning_board.finish_condition("PlayerName")).to eql(false)
    end
  end
end

describe Board do
  let(:board) { Board.new }
  describe "change_grid" do
    it "Return false if the user give wrong parameter (not between 1 and 9) to change board" do
      expect(board.change_grid("wrong", "X")).to eql(false)
    end
  end
end
# rubocop:enable
