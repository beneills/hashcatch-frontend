require 'ostruct' # TODO

class Application < OpenStruct
end

class UsersController < ApplicationController
  def notfound
  end

  def view
    username = params[:username]
    @user = User.find_by_username(username)
    if !@user.nil?
      @applications = []

      # Top
      top = Application.new(name: 'Top')
      # @categories = {'books' => { 1 => 'Bible' }}
      top.categories = Hash.new { |h, k| h[k] = Hash.new} 
      @user.top_entries.all.each do |e|
        top.categories[e.category][e.place] = e
      end
      @applications.push(top)

      # Cite
      cite = Application.new(name: 'Cite')
      cite.entries = @user.cite_entries.all
      @applications.push(cite)
    else
      render 'notfound', locals: {username: username, twitter_profile_url: "https://twitter.com/#{username}"}
    end
  end
end
