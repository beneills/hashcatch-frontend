class User < ActiveRecord::Base
  has_many :top_entries
  has_many :cite_entries

  def self.higher_level_create(twitter_user)
    User.create(User.twitter_rails_mapping(twitter_user))
  end

  def self.twitter_rails_mapping(twitter_user)
    {:twitter_user_id => twitter_user.id.to_s,
      :username => twitter_user.username,
      :name => twitter_user.name,
      :description => twitter_user.description,
      :location => twitter_user.location,
      :verified => twitter_user.verified,
      :profile_image_url => twitter_user.profile_image_url.sub('normal.', 'bigger.')}
  end
end
