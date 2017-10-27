RSpec.describe 10 do
    it { is_expected.to satisfy { |v| v > 5 } }
    it { is_expected.not_to satisfy { |v| v > 15 } }
  
    # deliberate failures
    #it { is_expected.not_to satisfy { |v| v > 5 } }
    #it { is_expected.to satisfy { |v| v > 15 } }
    #it { is_expected.to_not satisfy("be greater than 5") { |v| v > 5 } }
    #it { is_expected.to satisfy("be greater than 15") { |v| v > 15 } }
end