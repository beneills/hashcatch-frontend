class AddAmazonColumnsToTopEntry < ActiveRecord::Migration
  def change
    add_column :top_entries, :amazon_asin, :text
    add_column :top_entries, :amazon_title, :text
    add_column :top_entries, :amazon_author, :text
    add_column :top_entries, :amazon_small_image, :text
    add_column :top_entries, :amazon_medium_image, :text
    add_column :top_entries, :amazon_associate_url, :text
  end
end
