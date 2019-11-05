class UsersController < ApplicationController

  def index
    users = User.all

    render json: users
  end

  def create
    user = User.create({name: params['name'], bio: params['bio'], image: params['image'], password: params['password']})

    render json: user
  end



end
