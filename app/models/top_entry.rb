class TopEntry < ActiveRecord::Base
  belongs_to :user

  def self.higher_level_create(hash)
    # get user id, possibly creating new user
    username = hash.delete(:username)
    u = User.find_by_username(username)
    if u.nil?
      u = User.new(username: username)
      return(false) if !u.save
    end
    u.entries.create(hash)
  end

  def to_s # TODO
    @text
  end
end
