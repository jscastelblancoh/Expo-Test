require "counter" # ./lib/counter.rb

RSpec.describe Counter, "#increment" do
  it "should increment the count" do
    expect { Counter.increment }.to change { Counter.count }.from(0).to(1)
  end

  # deliberate failure
  #it "should increment the count by 2" do
  #  expect { Counter.increment }.to change { Counter.count }.by(2)
  #end
end