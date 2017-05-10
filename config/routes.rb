Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  get "/query_params_url", to: "pages#query_params_method"
  get "/name_game", to: 'pages#name_game_method'
  get "/guess_a_number", to: 'pages#guess_number_method'
end
