class ClientesMethods
    include Capybara::DSL  
    include RSpec::Matchers
    
    def cadastrar_cliente(nome, telefone, email, sexo, tipo_cliente, obs)
        @clientes_elements = ClientesElements.new
        @clientes_elements.btn_novo_cliente.click
        @clientes_elements.inp_name.set nome
        @clientes_elements.inp_telefone.set telefone
        @clientes_elements.inp_email.set email
        if(sexo == 'M')
            @clientes_elements.inp_sexo_m.click
        else
            @clientes_elements.inp_sexo_f.click
        end
        @clientes_elements.slct_tipo_cliente.set tipo_cliente
        @clientes_elements.observacoes.set obs
        @clientes_elements.btn_salvar.click
    end

    def editar_cliente(nome, telefone, email, obs)
        @clientes_elements.btn_editar_cliente.click
        @clientes_elements.inp_name.set nome
        @clientes_elements.inp_telefone.set telefone
        @clientes_elements.inp_email.set email
        @clientes_elements.observacoes.set obs
        @clientes_elements.btn_salvar.click
    end

    def buscar_cliente(email)
        @clientes_elements.inp_pesquisar.set email
        @clientes_elements.btn_pesquisar.click()
    end

    def excluir_cliente()
        @clientes_elements.btn_deletar_cliente.click
    end

    def excluir_modal()
        @clientes_elements.btn_confirmar_excluir.click
    end
end