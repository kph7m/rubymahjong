Rails.application.routes.draw do
  resources :won_counts

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root 'application#main'

  get 'getWonCount' => 'api#getWonCount'
  get 'saveWonCount/:count' => 'api#saveWonCount'
end
