#enconding: utf-8

Quando(/^faço a soma de (\d+) \+ (\d+)$/) do |v1, v2|
  @soma = v1.to_i + v2.to_i
end

Então(/^o resultado é (\d+)$/) do |result|
  expect(@soma).to eql result.to_i
end
