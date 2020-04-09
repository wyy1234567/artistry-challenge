class RemoveColumnFromInstrument < ActiveRecord::Migration[5.2]
  def change
    remove_column :instruments, :artist_id, :integer
  end
end
