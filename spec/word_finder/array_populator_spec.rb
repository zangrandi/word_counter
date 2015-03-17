require 'spec_helper'

describe ArrayPopulator do
	it "should populate array with length given" do
		array_populator = ArrayPopulator.new 5
		array_populator.array.length.should == 5
		array_populator.array.first.length.should == 5
	end
end