Rails.application.routes.draw do
  root "produtos#index"
  get "/produtos/new" => "produtos#new"
  get "/produtos/:id/remove" => "produtos#destroy"
  post "/produtos" => "produtos#create"
end
