# Let’s implement a SlotMachine class with 3 reels. Each reel has 5 different items.

# SlotMachine.new             => ready to play slot machine
# SlotMachine.new(%w[🍒 7️⃣ 🛎) => already played lot machine

# The class has one public instance method, score, following these rules:

# Item	      Three of the same	  Two of the same + Joker
# Joker   🤩	50	                25 (2 jokers + anything)
# Star    ⭐️	40	                20
# Bell    🛎	30	                15
# Seven   7️⃣	 20	                 10
# Cherry  🍒	10	                5

# Optional
# The class has one public instance method, play udpate and return random combi of reels.

SYMBOLS = %w[🍒 7️⃣ 🛎 ⭐️ 🤩]

class SlotMachine
  def initialize(reels =[])
    @reels = reels
  end

  def score
    # If reels have same 3 items score is
    if @reels.uniq.size == 1
    # the item index plus one, multiply by 10
      (SYMBOLS.index(@reels[0]) + 1) * 10
    # If Two of the same + Joker
    elsif @reels.uniq.size == 2 && @reels.include?("🤩")
    # the item index plus one, multiply by 5
      other_reel = @reels[0] == "🤩" ? @reels[1] : @reels[0]
      (SYMBOLS.index(other_reel) + 1) * 5
    # If (2 jokers + anything)
    # 25
    # else 0
    else
      0
    end
  end
end