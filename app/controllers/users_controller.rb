require 'ostruct' # TODO

class Application < OpenStruct
end

class UsersController < ApplicationController
  def notfound
  end

  def view
    @user = User.find_by_username(params[:username])
    if !@user.nil?
      @applications = []

      # Top
      top = Application.new(name: 'Top')
      # @categories = {'books' => { 1 => 'Bible' }}
      top.categories = Hash.new { |h, k| h[k] = Hash.new(TopEntry.null)} 
      @user.top_entries.all.each do |e|
        top.categories[e.category][e.place] = e
      end
      @applications.push(top)
    else
      render 'notfound'
    end
  end
end
