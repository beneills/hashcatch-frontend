class UsersController < ApplicationController
  def notfound
  end

  def view
    @user = User.find_by_username(params[:username])
    if !@user.nil?
      null_entry = TopEntry.new(text: "-")

      @categories = Hash.new { |h, k| h[k] = Hash.new(null_entry)} # 'books' => { 1 => 'Bible' }

      puts @user.methods

      @user.top_entries.all.each do |e|
        @categories[e.category][e.place] = e
      end
    else
      render 'notfound'
    end
  end
end
