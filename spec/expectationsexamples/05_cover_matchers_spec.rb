RSpec.describe (1..10) do
    it { is_expected.to cover(4) }
    it { is_expected.to cover(6) }
    it { is_expected.to cover(8) }
    it { is_expected.to cover(4, 6) }
    it { is_expected.to cover(4, 6, 8) }
    it { is_expected.not_to cover(11) }
    it { is_expected.not_to cover(11, 12) }
  
    # deliberate failures
    #it { is_expected.to cover(11) }
    #it { is_expected.not_to cover(4) }
    #it { is_expected.not_to cover(6) }
    #it { is_expected.not_to cover(8) }
    #it { is_expected.not_to cover(4, 6, 8) }
  
    # ambas deben fallar ya que cubre 5, pero no 11
    #it { is_expected.to cover(5, 11) }
    #it { is_expected.not_to cover(5, 11) }
end