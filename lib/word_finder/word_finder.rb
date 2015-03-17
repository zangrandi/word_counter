class WordFinder
	attr_accessor :array, :dictionary

	def initialize length, dictionary
		@array = ArrayPopulator.new(length).array
		@dictionary_entries = Dictionary.new(dictionary).entries
	end
	
	def horizontal_words_from_left_to_right
		entries_found = []
		@array.each do |array_of_letters|
			word = array_of_letters.join("")
			@dictionary_entries.each do |entry|
				entries_found << entry if entry[:word] == word
			end
		end
		entries_found
	end

	def horizontal_words_from_right_to_left
		entries_found = []
		@array.each do |array_of_letters|
			word = array_of_letters.reverse.join("")
			@dictionary_entries.each do |entry|
				entries_found << entry if entry[:word] == word
			end
		end
		entries_found
	end

	def vertical_words_from_top_to_bottom
		entries_found = []
		@array.transpose.each do |array_of_letters|
			word = array_of_letters.join("")
			@dictionary_entries.each do |entry|
				entries_found << entry if entry[:word] == word
			end
		end
		entries_found
	end

	def vertical_words_from_bottom_to_top
		entries_found = []
		@array.transpose.each do |array_of_letters|
			word = array_of_letters.reverse.join("")
			@dictionary_entries.each do |entry|
				entries_found << entry if entry[:word] == word
			end
		end
		entries_found		
	end

	def diagonal_words_from_left_to_right
	end

	def diagonal_words_from_right_to_left
	end
end