require 'spec_helper'


RSpec.describe "be_truthy matcher" do
    specify { expect(true).to be_truthy }
    specify { expect(7).to be_truthy }
    specify { expect("foo").to be_truthy }
    specify { expect(nil).not_to be_truthy }
    specify { expect(false).not_to be_truthy }
  
    # fallas deliberadas
    #specify { expect(true).not_to be_truthy }
    #specify { expect(7).not_to be_truthy }
    #specify { expect("foo").not_to be_truthy }
    #specify { expect(nil).to be_truthy }
    #specify { expect(false).to be_truthy }
end

RSpec.describe "be_falsey matcher" do
    specify { expect(nil).to be_falsey }
    specify { expect(false).to be_falsey }
    specify { expect(true).not_to be_falsey }
    specify { expect(7).not_to be_falsey }
    specify { expect("foo").not_to be_falsey }
  
    # fallas deliberadas
    #specify { expect(nil).not_to be_falsey }
    #specify { expect(false).not_to be_falsey }
    #specify { expect(true).to be_falsey }
    #specify { expect(7).to be_falsey }
    #specify { expect("foo").to be_falsey }
end

RSpec.describe "be_nil matcher" do
    specify { expect(nil).to be_nil }
    specify { expect(false).not_to be_nil }
    specify { expect(true).not_to be_nil }
    specify { expect(7).not_to be_nil }
    specify { expect("foo").not_to be_nil }
  
    # fallas deliberadas
    #specify { expect(nil).not_to be_nil }
    #specify { expect(false).to be_nil }
    #specify { expect(true).to be_nil }
    #specify { expect(7).to be_nil }
    #specify { expect("foo").to be_nil }
end

RSpec.describe "be_matcher" do
    specify { expect(true).to be }
    specify { expect(7).to be }
    specify { expect("foo").to be }
    specify { expect(nil).not_to be }
    specify { expect(false).not_to be }
  
    # fallas deliberadas
    #specify { expect(true).not_to be }
    #specify { expect(7).not_to be }
    #specify { expect("foo").not_to be }
    #specify { expect(nil).to be }
    #specify { expect(false).to be }
end

RSpec.describe 27.5 do
    it { is_expected.to be_within(0.5).of(27.9) }
    it { is_expected.to be_within(0.5).of(28.0) }
    it { is_expected.to be_within(0.5).of(27.1) }
    it { is_expected.to be_within(0.5).of(27.0) }
  
    it { is_expected.not_to be_within(0.5).of(28.1) }
    it { is_expected.not_to be_within(0.5).of(26.9) }
  
    # fallas deliberadas
    #it { is_expected.not_to be_within(0.5).of(28) }
    #it { is_expected.not_to be_within(0.5).of(27) }
    #it { is_expected.to be_within(0.5).of(28.1) }
    #it { is_expected.to be_within(0.5).of(26.9) }
end