class ChangeToText < ActiveRecord::Migration
  def change
    change_column :users, :name, :text
    change_column :users, :description, :text
    change_column :users, :location, :text
    change_column :users, :verified, :text
    change_column :users, :profile_image_url, :text

    change_column :top_entries, :tweet, :text
  end
end
