class Die

    attr_reader :value

    def initialize
        roll
    end

    def roll
        @value = get_a_random_number
    end

private

    def get_a_random_number
        rand(6)+1
    end

end