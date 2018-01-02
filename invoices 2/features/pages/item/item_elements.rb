class ItemElements < SitePrism::Page
    # Adicionar Itens
    element :btn_adicionar_item, 'button[id=dataview-insert-button]'
    element :btn_pesquisar_item, 'button[id=dataview-search-button]'
    element :btn_salvar, 'button[class="btn btn-success"]'
    element :inp_pesquisar_item, 'input[id=dataview-search-input]'
    element :validar_item, 'tbody[id=dataview-table-items]'
    element :btn_editar_item, 'span[id=edit-button]'
    element :btn_deletar_item, 'span[id=delete-button]'
    element :inp_descricao, 'input[name=description]'
    element :inp_qtd, 'input[name=quantity]'
    element :inp_preco, 'input[name=price]'
    element :acessar_fatura, 'tbody[id=dataview-table-items]'
    element :btn_confirmar_excluir, 'div[class="modal-footer"] button[class="btn btn-success"]'
    element :validar_modal, 'div[class="bootbox-body"]'
    element :validar_item_excluido, 'div[class="alert alert-info"]'
end

