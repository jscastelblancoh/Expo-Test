class Planet
    attr_reader :name
    def initialize(name)
      @name = name
    end
  
    def inspect
      "<Planet: #{name}>"
    end
  
    def exist? # tambien sirve con exists?
      %w[Mercury Venus Earth Mars Jupiter Saturn Uranus Neptune].include?(name)
    end
end
  
RSpec.describe "Earth" do
    let(:earth) { Planet.new("Earth") }
    specify { expect(earth).to exist }
    #specify { expect(earth).not_to exist } # deliberate failure
end
  
RSpec.describe "Tatooine" do
    let(:tatooine) { Planet.new("Tatooine") }
    #specify { expect(tatooine).to exist } # deliberate failure
    specify { expect(tatooine).not_to exist }
end