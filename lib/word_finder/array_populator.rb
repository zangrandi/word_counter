class ArrayPopulator
	attr_accessor :array
	
	def initialize length
		@length = length.to_i
		@array = Array.new(@length, [])
		populate
	end

	def populate
		@length.times do |i|
			@length.times do |j|
				@array[i][j] = ("A".."Z").to_a.sample
			end
		end
	end
end