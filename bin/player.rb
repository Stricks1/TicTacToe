# Player class to store X or O and his name
class Player
  attr_reader :character, :player

  def initialize(character, player)
    @character = character
    @player = player
  end
end
