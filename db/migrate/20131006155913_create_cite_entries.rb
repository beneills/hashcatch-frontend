class CreateCiteEntries < ActiveRecord::Migration
  def change
    create_table :cite_entries do |t|
      t.text :url
      t.text :archive_url
      t.text :note

      t.references :user, index: true

      t.timestamps
    end
  end
end
