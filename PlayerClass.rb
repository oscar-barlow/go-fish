PlayersLibrary = [
  "John",
  "Sandra",
  "Abel",
  "Nikolai",
  "Miko",
  "Ali",
  "Florentina",
  "Siavash",
  "Neha",
  "Eduardo",
  "Mehmud",
  "Clara",
  "Tsang",
  "Soong",
  "Xiao",
]

class CardPlayer

  attr_reader :name
  attr_reader :hand

  def initialize(name, i)
    @name = name
    @hand = make_hand(i)
  end

end
