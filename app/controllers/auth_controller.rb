class AuthController < ApplicationController

def fake_create
  byebug
    User.find_by(username: params['username'])
end

def create

end

end
