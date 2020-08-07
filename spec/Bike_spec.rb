require 'boris_bikes'
describe Bike do
  it { is_expected.to respond_to (:working?) }

  describe '#working' do
    it "returns the condition of the bike" do
    expect(subject.working?).to eq true
    end
  end

  describe '#report_condition' do
    it "changes the condition of the bike to broken" do
      expect(subject.report_condition('broken')).to eq 'broken'
    end
  end

  
end