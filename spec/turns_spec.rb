require './lib/turns'
require './lib/card'

RSpec.describe Turns do
  it 'exists' do
    card = Card.new("What is the capital of Alaska?", "Juneau", :Geography)

    expect(card).to be_instance_of(Card)

    turn = Turns.new("Juneau", card)

    expect(turn).to be_instance_of(Turns)
  end

  it 'can draw a card' do
    card = Card.new("What is the capital of Alaska?", "Juneau", :Geography)
    turn = Turns.new("Juneau", card)

    expect(turn.card).to eq(card)
  end

  it 'can show the guess' do
    card = Card.new("What is the capital of Alaska?", "Juneau", :Geography)
    turn = Turns.new("Juneau", card)

    expect(turn.guess).to eq("Juneau")
  end

  it 'can check if guess is correct' do
    card = Card.new("What is the capital of Alaska?", "Juneau", :Geography)
    turn = Turns.new("Juneau", card)

    expect(turn.correct?).to eq(true)

    card = Card.new("Which planet is closest to the sun?", "Mercury", :STEM)
    turn = Turns.new("Saturn", card)

    expect(turn.correct?).to eq(false)
  end

  it 'can provide feedback' do
    card = Card.new("What is the capital of Alaska?", "Juneau", :Geography)
    turn = Turns.new("Juneau", card)

    expect(turn.feedback).to eq("Correct!")

    card = Card.new("Which planet is closest to the sun?", "Mercury", :STEM)
    turn = Turns.new("Saturn", card)

    expect(turn.feedback).to eq("Wrong answer. Try again.")
  end
end