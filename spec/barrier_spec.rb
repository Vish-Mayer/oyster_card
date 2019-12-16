require 'barrier'

describe Barrier do

  describe '#touch_in' do
    it 'to change journey status of the card to true' do
      card = Oystercard.new
      expect(subject.touch_in(card)).to eq true
    end
  end
  describe '#touch_out' do
    it "to change journey status of the card to false" do
      card = Oystercard.new
      subject.touch_in(card)
      expect(subject.touch_out(card)).to eq false
    end
  end
end
