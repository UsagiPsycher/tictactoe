class Board
  include Enumerable
  attr_accessor :tablao
  #TO DO : la classe a 1 attr_accessor, une array qui contient les BoardCases


  def initialize(tablao)
    #TO DO :
    #Quand la classe s'initialize, elle doit créer 9 instances BoardCases
    #Ces instances sont rangées dans une array qui est l'attr_accessor de la classe
    for i in 1..9
      @tablao << BoardCase.new(i, "_")
    end
    
  end

  def to_s(tablao)
  #TO DO : afficher le plateau
    puts tablao

  end

  def play
    #TO DO : une méthode qui change la BoardCase jouée en fonction de la valeur du joueur (X, ou O)

  end

  def victory?
    #TO DO : qui gagne ?
  end
end