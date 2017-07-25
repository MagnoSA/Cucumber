Dado(/^que estou na home$/) do
  visit 'http://www.inmetrics.com.br'
end

Quando(/^acesso a pagina quem somos$/) do
  first(:link, 'Quem Somos').click
end

Então(/^visualizo a mensagem$/) do
  assert_text('Adquirimos sólida experiência e patrimônio intelectual em soluções de eficiência em TI.')
end