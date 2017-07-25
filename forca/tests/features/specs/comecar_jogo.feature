#language: pt


Funcionalidade: Começar jogo
    Para poder passar o tempo
    Como jogador
    Quero poder começar um novo jogo

    Cenario: Começo de novo jogo com sucesso
        Ao começar o jogo, é mostrado a mensagem inicial para o jogador.

        Quando começa um novo jogo
        Então vejo a seguinte mensagem na tela:
        """
        Bem vindo ao jogo da forca!!
        """