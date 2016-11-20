# stores card info: value, suit, rank if applicable

class Card

  attr_reader :value, :suit, :rank

  def initialize(value, suit)
    @value = value
    @suit = suit
    @rank = rank_name if rank_applicable?
  end

  private

    def rank_applicable?
      (greater_than_ten? || is_ace?)
    end

    def greater_than_ten?
      @value > 10
    end

    def is_ace?
      @value == 1
    end

    def rank_name
      case @value
        when 1 then return "Ace"
        when 11 then return "Jack"
        when 12 then return "Queen"
        when 13 then return "King"
        else nil
      end
    end

end
