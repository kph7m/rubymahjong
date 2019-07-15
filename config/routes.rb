Rails.application.routes.draw do
  get 'api/success'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root 'application#main'

  get 'getWonCount' => 'api#getWonCount'
end
