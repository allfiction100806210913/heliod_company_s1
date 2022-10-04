class CreateLibraries < ActiveRecord::Migration[6.0]
  def change
    create_table :libraries do |t|
      t.string :card_name,        null: false
      t.string :manacost,        null: false
      t.string :card_text,        null: false
      t.string :card_type,        null: false
      t.string :color,        null: false
      t.integer :power,        null: false
      t.integer :toughness,        null: false
      t.references :user, null: false, foreign_key: true
      t.timestamps
    end
  end
end
