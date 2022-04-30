require 'bundler'
Bundler.require

$:.unshift File.expand_path("./../lib", __FILE__)
require 'app/game'
require 'app/player'
require 'views/case'
require 'views/board'
require 'views/header'


Header.new.play
