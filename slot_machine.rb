# Letβs implement a SlotMachine class with 3 reels. Each reel has 5 different items.

# SlotMachine.new             => ready to play slot machine
# SlotMachine.new(%w[π 7οΈβ£ π) => already played lot machine

# The class has one public instance method, score, following these rules:

# Item	      Three of the same	  Two of the same + Joker
# Joker   π€©	50	                25 (2 jokers + anything)
# Star    β­οΈ	40	                20
# Bell    π	30	                15
# Seven   7οΈβ£	 20	                 10
# Cherry  π	10	                5

# Optional
# The class has one public instance method, play udpate and return random combi of reels.

SYMBOLS = %w[π 7οΈβ£ π β­οΈ π€©]

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
    elsif @reels.uniq.size == 2 && @reels.include?("π€©")
    # the item index plus one, multiply by 5
      other_reel = @reels[0] == "π€©" ? @reels[1] : @reels[0]
      (SYMBOLS.index(other_reel) + 1) * 5
    # If (2 jokers + anything)
    # 25
    # else 0
    else
      0
    end
  end
end