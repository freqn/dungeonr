class Dungeon
	attr_accessor :player

	def initialize(player_name)
		@player = Player.new(player_name)
		@rooms = []
	end

	Player = Struct.new(:name, :location)
	Room = Struct.new(:reference, :name, :description, :connections)
end

#my_dungeon = Dungeon.new("Tom Spirk")
#puts my_dungeon.player.name