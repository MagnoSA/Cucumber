#enconding: utf-8

Quando(/^faço a multiplicação$/) do
  @v1 = Faker::Number.between(1, 50)
  @v2 = Faker::Number.between(1, 50)
  @multiplicação = @v1 * @v2
end

Então(/^recebo o <resultado>$/) do
  puts @v1, @v2, @multiplicação
end