Rails.application.routes.draw do
  get 'calculations/edit'
  get 'calculations/index'
  get 'calculations/new'
  get 'calculations/show'
  post 'calculations' => 'calculations#create'
  get '/top' => 'homes#top'
  root to: 'homes#top'
  get 'rare_calculation/show'
  post 'rare_calculation/result'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
