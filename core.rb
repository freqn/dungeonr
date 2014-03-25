class Dungeon
	attr_accessor :player

	def initialize(player_name)
		@player = Player.new(player_name)
		@rooms = []
	end

	def add_room(reference, name, description, connections)
		@room << Room.new(reference, name, description, connections)
	end

	Player = Struct.new(:name, :location)
	Room = Struct.new(:reference, :name, :description, :connections)


end

x = Dungeon.new("Tom Spirk")
puts x.player.name

x.add_room(:largecave, "Large Cave", "a large cavernous cave", {:west => :smallcave})

