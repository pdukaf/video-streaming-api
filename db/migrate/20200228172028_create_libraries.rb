class CreateLibraries < ActiveRecord::Migration[6.0]
  def change
    create_table :libraries do |t|
      t.references :user, null: false, foreign_key: true
      t.reference :movie
      t.reference :season

      t.timestamps
    end
  end
end
