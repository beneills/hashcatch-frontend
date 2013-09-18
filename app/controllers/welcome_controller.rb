class WelcomeController < ApplicationController
  def about
  end

  def index
    @recent = TopEntry.last(10)
  end
end
