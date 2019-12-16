require 'oystercard'

describe Oystercard do

  describe '#initialize' do
    it "has a balance of 0" do
      expect(subject.balance).to eq 0
    end
  end
  describe '#top_up' do
    it "allows user to top up balance" do
      subject.top_up(10)
      expect(subject.balance).to eq 10
    end
  end
end
