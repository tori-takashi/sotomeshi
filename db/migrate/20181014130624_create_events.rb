class CreateEvents < ActiveRecord::Migration[5.2]
  def change
    create_table :events do |t|
      t.references :organization, foreign_key: true
      t.string :name
      t.date :held_at

      t.timestamps
    end
  end
end
