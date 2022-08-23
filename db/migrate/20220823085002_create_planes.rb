class CreatePlanes < ActiveRecord::Migration[7.0]
  def change
    create_table :planes do |t|
      t.string :name
      t.string :model
      t.integer :price_per_hour
      t.integer :seats
      t.text :overview
      t.string :adress
      t.references :user, null: false, foreign_key: true

      t.timestamps
    end
  end
end
