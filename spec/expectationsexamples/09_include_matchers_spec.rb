# espectations con array
RSpec.describe [1, 3, 7] do
    it { is_expected.to include(1) }
    it { is_expected.to include(3) }
    it { is_expected.to include(7) }
    it { is_expected.to include(1, 7) }
    it { is_expected.to include(1, 3, 7) }
    it { is_expected.to include(a_kind_of(Integer)) }
    it { is_expected.to include(be_odd.and be < 10) }
    it { is_expected.to include(be_odd) }
    it { is_expected.not_to include(be_even) }
    it { is_expected.not_to include(17) }
    it { is_expected.not_to include(43, 100) }
  
    # fallas deliberadas
    #it { is_expected.to include(4) }
    #it { is_expected.to include(be_even) }
    #it { is_expected.not_to include(1) }
    #it { is_expected.not_to include(3) }
    #it { is_expected.not_to include(7) }
    #it { is_expected.not_to include(1, 3, 7) }
  
    # fallaran ya que incluye 1 pero no 9
    #it { is_expected.to include(1, 9) }
    #it { is_expected.not_to include(1, 9) }
end

RSpec.describe "a string" do
    it { is_expected.to include("str") }
    it { is_expected.to include("a", "str", "ng") }
    it { is_expected.not_to include("foo") }
    it { is_expected.not_to include("foo", "bar") }
  
    # fallas deliberadas
    #it { is_expected.to include("foo") }
    #it { is_expected.not_to include("str") }
    #it { is_expected.to include("str", "foo") }
    #it { is_expected.not_to include("str", "foo") }
  end

  RSpec.describe :a => 7, :b => 5 do
    it { is_expected.to include(:a) }
    it { is_expected.to include(:b, :a) }
    it { is_expected.to include(:a => 7) }
    it { is_expected.to include(:b => 5, :a => 7) }
    it { is_expected.not_to include(:c) }
    it { is_expected.not_to include(:c, :d) }
    it { is_expected.not_to include(:d => 2) }
    it { is_expected.not_to include(:a => 5) }
    it { is_expected.not_to include(:b => 7, :a => 5) }
  
    # fallas deliberadas
    #it { is_expected.not_to include(:a) }
    #it { is_expected.not_to include(:b, :a) }
    #it { is_expected.not_to include(:a => 7) }
    #it { is_expected.not_to include(:a => 7, :b => 5) }
    #it { is_expected.to include(:c) }
    #it { is_expected.to include(:c, :d) }
    #it { is_expected.to include(:d => 2) }
    #it { is_expected.to include(:a => 5) }
    #it { is_expected.to include(:a => 5, :b => 7) }
  
    # Casos mixtos--el hash incluye uno, pero no el otro
    # Todos deben fallar.
    #it { is_expected.to include(:a, :d) }
    #it { is_expected.not_to include(:a, :d) }
    #it { is_expected.to include(:a => 7, :d => 3) }
    #it { is_expected.not_to include(:a => 7, :d => 3) }
end