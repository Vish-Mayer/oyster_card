class Oystercard
  MAXIMUM_LIMIT = 90
  attr_reader :balance

  def initialize
    @balance = 0
  end

  def top_up(money)
    raise "Too much money!! $$$ Over #{MAXIMUM_LIMIT}" if over?(money)
    @balance += money
  end

  def deduct(money)
    @balance -= money
  end

  private

  def over?(money)
    @balance + money > MAXIMUM_LIMIT
  end
end
