require 'barrier'

describe Barrier do
  let(:card) { Oystercard.new }
  context 'with positive balance' do
    before(:each) do
      card.top_up(10)
    end

    describe '#touch_in' do
      it 'to change journey status of the card to true' do
        expect(subject.touch_in(card)).to eq true
      end
    end

    describe '#touch_out' do
      it "to change journey status of the card to false" do
        subject.touch_in(card)
        expect(subject.touch_out(card)).to eq false
      end
    end
  end

  context 'with 0 balance' do
    it 'raise an error if there\'s no minimum balance' do
      message = 'Not enough funds. Please top up.'
      expect { subject.touch_in(card) }.to raise_error message
    end
  end
end
