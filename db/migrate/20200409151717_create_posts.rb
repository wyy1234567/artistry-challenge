class CreatePosts < ActiveRecord::Migration[5.2]
  def change
    create_table :posts do |t|
      t.string :name
      t.integer :artist_id
      t.integer :instrument_id
      t.timestamps
    end
  end
end
