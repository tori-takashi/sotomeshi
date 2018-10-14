class CreatePlaces < ActiveRecord::Migration[5.2]
  def change
    create_table :places do |t|
      t.references :organization, foreign_key: true
      t.string :name
      t.string :location

      t.timestamps
    end
  end
end
