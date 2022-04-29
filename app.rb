require 'bundler'
Bundler.require

$:.unshift File.expand_path("./../lib", __FILE__)
require 'app/game'
require 'app/player'
require 'views/case'
require 'views/board'
require 'views/header'


my_game = Game.new
winner = my_game.play
my_game.game_ending(winner)
