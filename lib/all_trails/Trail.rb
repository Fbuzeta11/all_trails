class Trail

	attr_accessor :name, :diff, :info, :description

@@all = []

	def initialize(name, diff, info, description)
	@name = name
	@diff = diff
	@info = info
	@description = description
	
	end

	def display
		puts @name
		puts @info
		puts @diff
		puts @description
 	end




end
