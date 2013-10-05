class AddArtistColumnToTopEntry < ActiveRecord::Migration
  def change
    add_column :top_entries, :amazon_artist, :text
  end
end
