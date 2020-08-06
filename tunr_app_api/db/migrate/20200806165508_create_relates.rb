class CreateRelates < ActiveRecord::Migration[6.0]
  def change
    create_table :relates do |t|
      t.references :playlist, null: false, foreign_key: true
      t.references :song, null: false, foreign_key: true

      t.timestamps
    end
  end
end
