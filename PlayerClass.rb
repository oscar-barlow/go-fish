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

  def initialize(name, i)
    @name = name
    @hand = make_hand(i)
  end

  def name
    @name
  end

  def hand
    @hand
  end

end
