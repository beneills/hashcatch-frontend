class AddTweetColumnToCiteentries < ActiveRecord::Migration
  def change
    add_column :cite_entries, :tweet, :text
  end
end
