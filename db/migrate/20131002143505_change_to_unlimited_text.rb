class ChangeToUnlimitedText < ActiveRecord::Migration
  def change
    change_column :users, :name, :text, :limit => nil
    change_column :users, :description, :text, :limit => nil
    change_column :users, :location, :text, :limit => nil
    change_column :users, :verified, :text, :limit => nil
    change_column :users, :profile_image_url, :text, :limit => nil

    change_column :top_entries, :tweet, :text, :limit => nil
  end
end
