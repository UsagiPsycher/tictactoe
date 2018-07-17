require_relative './boardcase'
require_relative './board'
require_relative './player'

class Game
    def initialize
      #TO DO : créé 2 joueurs, créé un board
      p "Comment s'appelle le joueur 1?"
      p1 = gets.chomp.to_s
      p "Va-t-il jouer en premier? Le premier joueur prend X"
      p "Veuillez taper la lettre O pour Oui et n'importe quoi d'autre pour Non"
      a = gets.chomp
      if %w[O o].include?(a) 
        val1 = true
      else val1 = false 
      end
  
      j1 = Player.new(p1, val1, 0)
      p "Comment s'appelle le joueur 2?"
      p2 = gets.chomp.to_s
      val2 = !val1
      j2 = Player.new(p2, val2, 0)
      
    end
  
    def go
  
      # TO DO : lance la partie
    end
  
    def turn
      #TO DO : affiche le plateau, demande au joueur il joue quoi, vérifie si un joueur a gagné, passe au joueur suivant si la partie n'est pas finie
      p "Où voulez-vous vous placer?"
      place = gets.chomp
      if place in 1..9
        
      else p "Veuillez entrer une valeur entre 1 et 9"
      end
    end
  
  end
  
  Game.new.go
  board = Board.new