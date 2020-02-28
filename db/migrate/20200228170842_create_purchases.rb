class CreatePurchases < ActiveRecord::Migration[6.0]
  def change
    create_table :purchases do |t|
      t.decimal :price, precision: 5, scale: 2
      t.string :video_quality
      t.references :movie, null: false, foreign_key: true
      t.references :season, null: false, foreign_key: true

      t.timestamps
    end
  end
end
