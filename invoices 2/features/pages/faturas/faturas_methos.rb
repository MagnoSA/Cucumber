class FaturasMethods 
    include Capybara::DSL  
    include RSpec::Matchers

    def cadastrar_fatura(nome)
        @faturas_elements = FaturasElements.new
        @faturas_elements.btn_nova_fatura.click
        data = Time.now
        data = data.strftime("%m/%d/%Y")
        @faturas_elements.data_vencimento.set data
        @faturas_elements.data_vencimento.send_keys :tab
        @faturas_elements.slct_cliente.select nome
        @faturas_elements.btn_salvar.click
        sleep(2)
    end

    def alterar_fatura
        @faturas_elements.btn_editar_fatura.click
        data = Time.now
        data = data + (60 * 60 * 24)
        data = data.strftime("%m/%d/%Y")
        @faturas_elements.data_vencimento.set data
        @faturas_elements.data_vencimento.send_keys :tab
        @faturas_elements.btn_salvar.click
    end

    def excluir_fatura
        @faturas_elements.btn_deletar_fatura.click
    end

    def excluir_modal
        @faturas_elements.btn_confirmar_excluir.click
    end

    def validar_data_fatura
        data = Time.now
        data = data.strftime("%m/%d/%Y")
        has_content?(data)
    end

    def validar_nova_data_fatura
        data = Time.now
        data = data + (60 * 60 * 24)
        data = data.strftime("%m/%d/%Y")
        has_content?(data)
    end

    def buscar_fatura(nome)
        @faturas_elements.inp_pesquisar.set nome
        @faturas_elements.btn_pesquisar.click()
        @faturas_elements.btn_pesquisar.click()
    end
end