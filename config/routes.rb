Rails.application.routes.draw do

resources :users
resources :events

post '/fakelogin', to: 'auth#fake_create'
post '/login', to: 'auth#create'

end
