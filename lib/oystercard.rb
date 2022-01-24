class Oystercard

  attr_reader :balance
  MAX_BALANCE = 90
  MIN_BALANCE = 1
  attr_reader :in_journey

  def initialize
    @balance = 0
    @in_journey = false
  end

  def top_up(amount)
    fail "Maximum balance reached" if @balance >= MAX_BALANCE
    @balance += amount
    "#{@balance} added to account"
  end

  def deduct(amount)
    fail "insufficient funds" if @balance < MIN_BALANCE
    @balance -= amount
    "#{amount} deducted from account"
  end

  def in_journey?
    @in_journey
  end

  def touch_in
    @in_journey = true
  end

  def touch_out
    deduct(MIN_BALANCE)
    @in_journey = false
  end
  
end

