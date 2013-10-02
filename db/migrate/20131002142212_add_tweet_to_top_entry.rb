class AddTweetToTopEntry < ActiveRecord::Migration
  def change
    add_column :top_entries, :tweet, :string
  end
end
