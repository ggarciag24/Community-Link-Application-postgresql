Rails.application.routes.draw do

resources :users
resources :events

post '/fakelogin', to: 'users#fake_create'
post '/login', to: 'users#create'

end
