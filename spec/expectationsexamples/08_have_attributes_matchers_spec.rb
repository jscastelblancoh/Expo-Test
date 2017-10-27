Person = Struct.new(:name, :age)

RSpec.describe Person.new("Juan", 21) do
  it { is_expected.to have_attributes(:name => "Juan") }
  it { is_expected.to have_attributes(:name => a_string_starting_with("J") ) }
  it { is_expected.to have_attributes(:age => 21) }
  it { is_expected.to have_attributes(:age => (a_value > 20) ) }
  it { is_expected.to have_attributes(:name => "Juan", :age => 21) }
  it { is_expected.to have_attributes(:name => a_string_starting_with("J"), :age => (a_value > 20) ) }
  it { is_expected.not_to have_attributes(:name => "Bob") }
  it { is_expected.not_to have_attributes(:age => 10) }
  it { is_expected.not_to have_attributes(:age => (a_value < 20) ) }

  # deliberate failures
  #it { is_expected.to have_attributes(:name => "Bob") }
  #it { is_expected.to have_attributes(:age => 10) }

  # falla si alguno de los atributos no coincide
  #it { is_expected.to have_attributes(:name => "Bob", :age => 21) }
  #it { is_expected.to have_attributes(:name => "Juan", :age => 10) }
  #it { is_expected.to have_attributes(:name => "Bob", :age => 10) }
end