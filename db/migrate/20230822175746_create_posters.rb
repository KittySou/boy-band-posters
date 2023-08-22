class CreatePosters < ActiveRecord::Migration[7.0]
  def change
    create_table :posters do |t|
      t.string :band_name
      t.string :description
      t.float :price_per_day
      t.integer :height
      t.integer :width
      t.references :user, null: false, foreign_key: true

      t.timestamps
    end
  end
end
