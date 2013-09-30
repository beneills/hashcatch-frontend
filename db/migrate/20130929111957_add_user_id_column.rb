class AddUserIdColumn < ActiveRecord::Migration
  def change
    add_column :users, :twitter_user_id, :string
  end
end
