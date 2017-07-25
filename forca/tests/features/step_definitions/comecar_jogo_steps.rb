#encoding: utf-8
require_relative '../../../src/game'

Quando(/^começa um novo jogo$/) do
  @game = Game.new
  @game.start
end

Então(/^vejo a seguinte mensagem na tela:$/) do |msg|
  #puts @game.output
  expect(@game.output).to eql msg
end