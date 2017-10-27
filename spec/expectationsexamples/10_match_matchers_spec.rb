RSpec.describe "a string" do
    it { is_expected.to match(/str/) }
    it { is_expected.not_to match(/foo/) }
  
    # deliberate failures
    #it { is_expected.not_to match(/str/) }
    #it { is_expected.to match(/foo/) }
end

# expresion regular
RSpec.describe /foo/ do
    it { is_expected.to match("food") }
    it { is_expected.not_to match("drinks") }
  
    # deliberate failures
    #it { is_expected.not_to match("food") }
    #it { is_expected.to match("drinks") }
end