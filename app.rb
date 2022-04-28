require 'bundler'
Bundler.require

$:.unshift File.expand_path("./../lib", __FILE__)
require 'app/game'
require 'app/player'
require 'views/case'
require 'views/board'
require 'views/header'


# puts "Bonjour, quel est le nom du joueur 1?"
# print ">"
# name_1 = gets.chomp
# puts "Bonjour, quel est le nom du joueur 2?"
# print ">"
# name_2 = gets.chomp

# # my_game = Game.new(name_1, name_2)
# player_1 = Player.new(name_1, "X")
# player_2 = Player.new(name_2, "O")
# #Board.new().display_board
# my_board = Board.new
# # my_board.choose_case(player_1, "C3")
# # my_board.choose_case(player_1, "C2")
# my_board.display
# puts "#{player_1.name}, quelle case voulez vous jouer?"
# print ">"
# chosen_case = gets.chomp
# my_board.choose_case(player_1, chosen_case)
# my_board.display
# puts "#{player_2.name}, quelle case voulez vous jouer?"
# print ">"
# chosen_case = gets.chomp
# my_board.choose_case(player_2, chosen_case)
# my_board.display
# puts "#{player_1.name}, quelle case voulez vous jouer?"
# print ">"
# chosen_case = gets.chomp
# my_board.choose_case(player_1, chosen_case)
# my_board.display
# puts "#{player_2.name}, quelle case voulez vous jouer?"
# print ">"
# chosen_case = gets.chomp
# my_board.choose_case(player_2, chosen_case)
# my_board.display
# puts "#{player_1.name}, quelle case voulez vous jouer?"
# print ">"
# chosen_case = gets.chomp
# my_board.choose_case(player_1, chosen_case)
# my_board.display
# puts "#{player_2.name}, quelle case voulez vous jouer?"
# print ">"
# chosen_case = gets.chomp
# my_board.choose_case(player_2, chosen_case)
# my_board.display
# puts "#{player_1.name}, quelle case voulez vous jouer?"
# print ">"
# chosen_case = gets.chomp
# my_board.choose_case(player_1, chosen_case)
# my_board.display
# puts "#{player_2.name}, quelle case voulez vous jouer?"
# print ">"
# chosen_case = gets.chomp
# my_board.choose_case(player_2, chosen_case)
# my_board.display

# if my_board.check_row(2, player_1)
#     puts "Bien ouéééj, la partie est terminée!!!!!"
# end
# # puts "#{player_2.name} quelle case voulez vous jouer?"
# print ">"
# chosen_case = gets.chomp
# my_board.choose_case(player_2, chosen_case)
# my_board.display

my_game = Game.new
my_game.play