class Turns
  def initialize(guess, card)
    @guess = guess
    @card = card
  end

  def card
    @card
  end

  def guess
    @guess
  end

  def correct?
    if @guess == card.answer
      true
    else
      false
    end
  end

  def feedback
    if @guess == card.answer
      "Correct!"
    else
      "Wrong answer. Try again."
    end
  end
end