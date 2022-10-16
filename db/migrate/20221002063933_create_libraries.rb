class CreateLibraries < ActiveRecord::Migration[6.0]
  def change
    create_table :libraries do |t|
      t.string :card_type,        null: false
      t.integer :numbers,        null: false
      t.references :user, null: false, foreign_key: true
      t.timestamps
    end
  end
end
