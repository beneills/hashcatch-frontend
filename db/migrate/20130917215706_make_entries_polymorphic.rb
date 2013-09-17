class MakeEntriesPolymorphic < ActiveRecord::Migration
  def change
    change_table :top_entries do |t|
#      t.references :entry, polymorphic: true
    end
  end
end
