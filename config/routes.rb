HotelAdvisor::Application.routes.draw do

  post '/rate' => 'rater#create', as: 'rate'
  resources :hotels do
    resources :comments, only: [:create, :destroy]
  end

  devise_for :users

  root 'hotels#top'

end
