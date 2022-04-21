require_relative '../slot_machine'

def test_scenario(combo, score)
  it "returns #{score} if the reels are #{combo.join(" ")}" do
    slot_machine = SlotMachine.new(combo)
    actual = slot_machine.score
    expected = score
    expect(actual).to eq(expected)
  end
end

describe SlotMachine do
  describe '#score' do
    it 'returns 0 if the reels are 🍒 7️⃣ 🛎' do
      slot_machine = SlotMachine.new(%w[🍒 7️⃣ 🛎])
      actual = slot_machine.score
      expected = 0
      expect(actual).to eq(expected)
    end
    test_scenario(%w[🤩 🤩 🤩], 50)
    test_scenario(%w[⭐️ ⭐️ ⭐️], 40)
    test_scenario(%w[🛎 🛎 🛎], 30)
    test_scenario(%w[7️⃣ 7️⃣ 7️⃣], 20)
    test_scenario(%w[🍒 🍒 🍒], 10)
    test_scenario(%w[🤩 ⭐️ ⭐️], 20)
    test_scenario(%w[🤩 🛎 🛎], 15)
    test_scenario(%w[🤩 7️⃣ 7️⃣], 10)
    test_scenario(%w[🤩 🍒 🍒], 5)
    test_scenario(%w[🤩 🤩 ⭐️], 25)
    test_scenario(%w[🤩 🤩 🛎], 25)
    test_scenario(%w[🤩 🤩 7️⃣], 25)
    test_scenario(%w[🤩 🤩 🍒], 25)
  end
end
