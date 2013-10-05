class WelcomeController < ApplicationController
  def about
  end

  def index
    @recent = TopEntry.last(10)
    @right = TopEntry.where.not(amazon_medium_image: nil).last(10)
  end
end
