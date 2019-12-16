class Oystercard
  MAXIMUM_LIMIT = 90
  attr_reader :balance

  def initialize
    @balance = 0
    @journey = false
  end

  def top_up(money)
    raise "Too much money!! $$$ Over #{MAXIMUM_LIMIT}" if over?(money)
    @balance += money
  end

  def in_journey?
    @journey
  end

  def touch_in
    @journey = true
  end

  def touch_out(money)
    @journey = false
    deduct(money)
  end 

  private

  def over?(money)
    @balance + money > MAXIMUM_LIMIT
  end

  def deduct(money)
    @balance -= money
  end
end
