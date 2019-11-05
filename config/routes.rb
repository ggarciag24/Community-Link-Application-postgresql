Rails.application.routes.draw do

resources :users
resources :events
resources :volunteer_events ,{only: [:create]}

post '/fakelogin', to: 'auth#fake_create'
post '/login', to: 'auth#create'

end
