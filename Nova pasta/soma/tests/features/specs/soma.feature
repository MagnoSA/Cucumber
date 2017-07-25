#language: pt

Funcionalidade: Soma

  Esquema do Cenario: Soma de valores
  
  Quando faço a soma de <valor1> + <valor2>
  Então o resultado é <resultado>
  
  Exemplos:
      | valor1 | valor2 | resultado | 
      | 2      | 2      | 4         | 
      | 4      | 5      | 9         | 
      | 3      | 7      | 10        | 