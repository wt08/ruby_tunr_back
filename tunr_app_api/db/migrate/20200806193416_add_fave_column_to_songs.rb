class AddFaveColumnToSongs < ActiveRecord::Migration[6.0]
  def change
    add_column :songs, :isFave, :boolean, :default => false
  end
end
