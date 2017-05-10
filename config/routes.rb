Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  get "/query_params_url", to: "pages#query_params_method"
  get "/name_game", to: 'pages#name_game_method'
  get "/guess_a_number/:number", to: 'pages#guess_number_method'
  get "/url_segment", to: 'pages#test'
  get "/url_segment/:purple_hippo", to: 'pages#url_seg_method'

  get "/form", to: 'pages#form_method'
  post "/form_result", to: 'pages#form_result_method'

  get "/guess_number_form", to: 'pages#number_form_method'
  post "/guess_number_result", to: 'pages#guess_number_method'
end
