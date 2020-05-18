# rubocop:disable
require "./lib/winning.rb"
require "./lib/board.rb"

describe Winning do
  let(:winning_board) { Board.new }
  let(:empty_board) { Board.new }
  describe "finish_condition" do
    it "change grid to a winning condition" do
      expect(winning_board.change_grid(1, "X")).to eql(true)
      expect(winning_board.change_grid(2, "X")).to eql(true)
      expect(winning_board.change_grid(3, "X")).to eql(true)
    end

    it "Return true if someone win or board is full" do
      expect(winning_board.finish_condition("Name")).to eql(true)
    end

    it "Return false if no one win and board not full" do
      expect(finish_condition("Name")).to eql(false)
    end
  end
end
# rubocop:enable
