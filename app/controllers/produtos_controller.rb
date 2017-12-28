class ProdutosController < ApplicationController

    def index
        @produtos_por_nome = Produto.order(:nome).limit 5
        @produtos_por_preco = Produto.order(:preco).limit 2
    end

    def create
        produto = params.require(:produto).permit :nome, :preco, :descricao, :quantidade
        Produto.create produto
        redirect_to root_url
    end

    def destroy
        id = params[:id]
        Produto.destroy id
        redirect_to root_url
    end

    def busca
        
    end
end
