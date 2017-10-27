require 'spec_helper'

RSpec.describe "different syntax" do
    #la syntax should es obsoleta, pero sigue funcionando para rspec 3.6
    it "should allow the should syntax" do
        3.should eq(3)
        3.should_not eq(4)
        lambda { raise "boom"}.should raise_error("boom")
        lambda{}.should_not raise_error("boom")
    end

    it "should allow the expect syntax" do
        expect(3).to eq(3)
        expect(3).not_to eq(4)
        expect {raise "boom"}.to raise_error("boom")
        expect{}.not_to raise_error
    end
end