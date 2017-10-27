RSpec.describe "throw" do
  specify { expect { throw :foo    }.to     throw_symbol }
  specify { expect { throw :bar, 7 }.to     throw_symbol }
  specify { expect { 5 + 5         }.not_to throw_symbol }

  # fallas deliberadas
  #specify { expect { throw :foo    }.not_to throw_symbol }
  #specify { expect { throw :bar, 7 }.not_to throw_symbol }
  #specify { expect { 5 + 5         }.to     throw_symbol }
end

RSpec.describe "calling a missing method" do
    it "raises" do
      expect { Object.new.foo }.to raise_error
    end

    it "raises specific" do
      expect { Object.new.foo }.to raise_error(NameError)
    end
end

RSpec.describe "matching error message with string" do
    it "matches the error message" do
      expect { raise StandardError, 'this message exactly'}.
        to raise_error('this message exactly')
 
      expect { raise StandardError, "my message" }.
        to raise_error(StandardError, /my mess/)
    end
end

RSpec.describe "matching error message with regex" do
    it "matches the error message" do
      expect { raise StandardError, "my message" }.
        to raise_error(/my mess/)
        
      expect { raise StandardError, "my message" }.
        to raise_error.with_message(/my mess/)

    end
end

RSpec.describe "#to_s" do
    it "does not raise" do
      expect { Object.new.to_s }.not_to raise_error
    end
  end