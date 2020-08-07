require 'boris_bikes'
describe Bike do
  it { is_expected.to respond_to (:working?) }

  describe '#working' do
    it "returns the condition of the bike" do
    expect(subject.working?).to eq true
    end
  end

  
end