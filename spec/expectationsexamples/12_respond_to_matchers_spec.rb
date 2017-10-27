RSpec.describe "a string" do
    it { is_expected.to respond_to(:length) }
    it { is_expected.to respond_to(:hash, :class, :to_s) }
    it { is_expected.not_to respond_to(:to_model) }
    it { is_expected.not_to respond_to(:compact, :flatten) }
  
    # fallas deliberadas
    #it { is_expected.to respond_to(:to_model) }
    #it { is_expected.to respond_to(:compact, :flatten) }
    #it { is_expected.not_to respond_to(:length) }
    #it { is_expected.not_to respond_to(:hash, :class, :to_s) }
  
    # ejemplos mixtos--String responds to :length pero no a :flatten
    #it { is_expected.to respond_to(:length, :flatten) }
    #it { is_expected.not_to respond_to(:length, :flatten) }
end