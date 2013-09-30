class AddColumnsToUser < ActiveRecord::Migration
  def change
    add_column :users, :name, :string
    add_column :users, :description, :string
    add_column :users, :location, :string
    add_column :users, :verified, :boolean
    add_column :users, :profile_image_url, :string
  end
end
