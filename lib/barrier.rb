class Barrier
  MINIMUM_CHARGE = 1

  def touch_in(card)
    raise 'Not enough funds. Please top up.' if minimum_balance?(card)

    card.touch_in
  end

  def touch_out(card)
    card.touch_out(MINIMUM_CHARGE)
  end 

  def minimum_balance?(card)
    card.balance < MINIMUM_CHARGE
  end
end
