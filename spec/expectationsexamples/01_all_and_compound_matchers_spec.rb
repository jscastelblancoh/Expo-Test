require 'spec_helper'

RSpec.describe [1, 3, 5] do
  it { is_expected.to all( be_odd ) }
  it { is_expected.to all( be_an(Integer) ) }
  it { is_expected.to all( be < 10 ) }
  
  # fallas deliberadas
  #it { is_expected.to all( be_even ) }
  #it { is_expected.to all( be_a(String) ) }
  #it { is_expected.to all( be > 2 ) }
end

RSpec.describe ['anything', 'everything', 'something'] do
  it { is_expected.to all( be_a(String).and include("thing") ) }
  it { is_expected.to all( be_a(String).and end_with("g") ) }
  it { is_expected.to all( start_with("s").or include("y") ) }

  # fallas deliberadas
  #it { is_expected.to all( include("foo").and include("bar") ) }
  #it { is_expected.to all( be_a(String).and start_with("a") ) }
  #it { is_expected.to all( start_with("a").or include("z") ) }
end