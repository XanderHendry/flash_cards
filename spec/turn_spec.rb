require './lib/card'
require './lib/turn'

RSpec.describe Turn do
  card = Card.new("What is the capital of Alaska?", "Juneau", :Geography)
    it 'exists' do
      turn = Turn.new("Juneau", card)

      expect(turn).to be_instance_of(Turn)
    end

    it 'has a guess' do
      turn = Turn.new("Juneau", card)

      expect(turn.guess).to eq("Juneau")
    end

    it 'shows current card' do
      turn = Turn.new("Juneau", card)

      expect(turn.card).to eq(card)
    end

    it 'checks if it is correct' do
      turn1 = Turn.new("Juneau", card)
      turn2 = Turn.new("Spokane", card)

      expect(turn1.correct?).to eq(true)
      expect(turn2.correct?).to eq(false)
    end
    
    it 'gives feedback' do
      turn1 = Turn.new("Juneau", card)
      turn2 = Turn.new("Spokane", card)

      expect(turn1.feedback).to eq("Correct!")
      expect(turn2.feedback).to eq("Incorrect!")
    end

end
    