class AuthController < ApplicationController

def fake_create
    user = User.find_by(name: params['username'])
    if user
      if user.password == params['password']
        render json: user
      else
        render json: {error: true}
      end
    else
      render json: {error: true}
    end
end

def create

end

end
