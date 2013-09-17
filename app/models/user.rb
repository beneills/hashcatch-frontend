class User < ActiveRecord::Base
  has_many :top_entries
end
