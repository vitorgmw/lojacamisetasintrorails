Rails.application.routes.draw do
  root "produtos#index"
  get "/produtos/new" => "produtos#new"
  delete "/produtos/:id" => "produtos#destroy", as: :produto
  post "/produtos" => "produtos#create"
end
