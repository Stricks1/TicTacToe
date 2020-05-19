# rubocop:disable
require './lib/player.rb'

describe Player do
  let(:test_player) { Player.new('O', 'Gabriel') }
  describe '#reader' do
    it 'Return O as character' do
      expect(test_player.character).to eql('O')
    end
    it 'Return player name' do
      expect(test_player.player).to eql('Gabriel')
    end
  end
end
# rubocop:enable
