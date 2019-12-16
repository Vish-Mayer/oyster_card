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

  describe '#in_journey' do
    it 'should not be in journey at the creation' do
      expect(subject).not_to be_in_journey
    end
    it 'should be in journey after touch_in' do
      subject.touch_in
      expect(subject).to be_in_journey
    end
    it 'should not be in jouney after both touch_in and touch_out' do
      subject.touch_in
      subject.touch_out(0)
      expect(subject).not_to be_in_journey
    end
  end
end
