require_relative 'word_finder/array_populator'
require_relative 'word_finder/word_finder'
require_relative 'word_finder/dictionary'

word_finder = WordFinder.new gets, "dict.txt"
puts word_finder.horizontal_words_from_right_to_left