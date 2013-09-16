class WelcomeController < ApplicationController
  def about
  end

  def index
    @users = User.all
  end
end
