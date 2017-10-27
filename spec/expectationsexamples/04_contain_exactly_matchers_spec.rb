
RSpec.describe [1, 2, 3] do
    # Se espera que tenga cada valor
    it { is_expected.to contain_exactly(1, 2, 3) }
    it { is_expected.to contain_exactly(1, 3, 2) }
    it { is_expected.to contain_exactly(2, 1, 3) }
    it { is_expected.to contain_exactly(2, 3, 1) }
    it { is_expected.to contain_exactly(3, 1, 2) }
    it { is_expected.to contain_exactly(3, 2, 1) }

    # deliberate failures
    #it { is_expected.to contain_exactly(1, 2, 1) }


    # No se espera que tenga cada valor
    it { is_expected.to_not contain_exactly(1, 2, 3, 4) }
    it { is_expected.to_not contain_exactly(1, 2) }
  
    #it { is_expected.to_not contain_exactly(1, 3, 2) }
end