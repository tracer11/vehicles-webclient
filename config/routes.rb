Rails.application.routes.draw do
  get '/vehicles' => 'vehicles#index'
  get '/vehicles/new'=> 'vehicles#new'
  post '/vehicles' => 'vehicles#create'
  get '/vehicles/:id' => 'vehicles#show'
  get '/vehicles/:id/edit'=> 'vehicles#edit'
  patch '/vehicles/:id'


end
