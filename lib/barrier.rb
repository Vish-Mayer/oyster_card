class Barrier
  MINIMUM_BALANCE = 1

  def touch_in(card)
    raise 'Not enough funds. Please top up.' if minimum_balance?(card)
    
    card.touch_in
  end

  def touch_out(card)
    card.touch_out
  end 

  def minimum_balance?(card)
    card.balance < MINIMUM_BALANCE
  end
end
