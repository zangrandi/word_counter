require 'spec_helper'

describe WordFinder do    
  it "should find one word from left to right" do
  	Dictionary.stub_chain(:new, :entries).and_return([
      { word: "AA", explanation: "explanation one" },
      { word: "AB", explanation: "explanation two" },
    ])
    ArrayPopulator.stub_chain(:new, :array).and_return([["A","B"], ["A, C"]])
  	word_finder = WordFinder.new 2, "example.txt"
    word_finder.horizontal_words_from_left_to_right.should == [{ 
    	word: "AB", explanation: "explanation two"
    }]
  end
end