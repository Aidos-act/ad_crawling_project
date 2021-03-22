Rails.application.routes.draw do
  devise_for :users
  resources :ad_crawling_dbs
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html

  root  "ad_crawling_dbs#index"
end
