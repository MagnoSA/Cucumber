class ItemMethods
    include Capybara::DSL  
    include RSpec::Matchers

    def acessar_fatura
        @item_elements = ItemElements.new
        page.execute_script("$('tbody[id=dataview-table-items] td').click();")
    end

    def cadastrar_item(descricao, qtd, preco)
        sleep(2)
        @item_elements.btn_adicionar_item.click
        @item_elements.inp_descricao.set descricao
        @item_elements.inp_qtd.set qtd
        @item_elements.inp_preco.set preco
        @item_elements.btn_salvar.click
    end

    def editar_item(descricao, qtd, preco)
        @item_elements.btn_editar_item.click
        @item_elements.inp_descricao.set descricao
        @item_elements.inp_qtd.set qtd
        @item_elements.inp_preco.set preco
        @item_elements.btn_salvar.click
    end

    def excluir_item
        @item_elements.btn_deletar_item.click
    end

    def excluir_modal
        @item_elements.btn_confirmar_excluir.click
    end

    def buscar_item(descricao)
        @item_elements.inp_pesquisar_item.set descricao
        @item_elements.btn_pesquisar_item.click()
    end

    def validar_total_item(qtd, preco)
        total = qtd * preco
        has_content?(total)
    end

end

