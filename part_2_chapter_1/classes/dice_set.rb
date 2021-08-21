class DiceSet

    attr_reader :dice_set

    def initialize()
        @dice_set = [Die.new, Die.new]        
    end

    def roll
        dice_set.each {|die| die.roll}
    end

    def display
        "[#{dice_set[0].value}] - [#{dice_set[1].value}]"
    end

end