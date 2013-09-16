class CreateTopEntries < ActiveRecord::Migration
  def change
    create_table :top_entries do |t|
      t.integer :place
      t.text :text
      t.text :link
      t.string :category
      t.references :user, index: true

      t.timestamps
    end
  end
end
