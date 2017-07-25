#enconding: utf-8

Quando(/^faço a divisao de (\d+) e (\d+)$/) do |valor1, valor2|                  
  @divisao = valor1.to_i / valor2.to_i
end                                                                          
                                                                             
Entao(/^o resultado é (\d+)$/) do |resultado|                                     
  expect(@divisao).to eql resultado.to_i
end                                                                          