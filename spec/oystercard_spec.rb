require 'oystercard'

describe Oystercard do

  it 'raise an error if balance goes over the maximum limit' do
    subject.top_up(Oystercard::MAXIMUM_LIMIT)
    message = "Too much money!! $$$ Over #{Oystercard::MAXIMUM_LIMIT}"
    expect { subject.top_up(1) }.to raise_error message
  end

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
