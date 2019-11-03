class UsersController < ApplicationController

def index
  users = User.all

  render json:users
end

def fake_create
  byebug
    User.find_by(username: params['username'])
end

def create

end

end
