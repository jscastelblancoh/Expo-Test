
# espectations con string
RSpec.describe "this string" do
    it { is_expected.to end_with "string" }
    it { is_expected.not_to end_with "stringy" }

    it { is_expected.to start_with "this" }
    it { is_expected.not_to start_with "that" }
  
    # fallas deliberadas
    #it { is_expected.not_to end_with "string" }
    #it { is_expected.to end_with "stringy" }

    #it { is_expected.not_to start_with "this" }
    #it { is_expected.to start_with "that" }   
end

# espectations con array
RSpec.describe [0, 1, 2, 3, 4] do
    it { is_expected.to end_with 4 }
    it { is_expected.to end_with 3, 4 }
    it { is_expected.not_to end_with 3 }
    it { is_expected.not_to end_with 0, 1, 2, 3, 4, 5 }
    
    it { is_expected.to start_with 0 }
    it { is_expected.to start_with(0, 1)}
    it { is_expected.not_to start_with(2) }
    it { is_expected.not_to start_with(0, 1, 2, 3, 4, 5) }
  
    # fallas deliberadas
    #it { is_expected.not_to end_with 4 }
    #it { is_expected.to end_with 3 }
    
    #it { is_expected.not_to start_with 0 }
    #it { is_expected.to start_with 3 }
end