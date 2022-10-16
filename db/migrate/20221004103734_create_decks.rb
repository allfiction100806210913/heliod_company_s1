class CreateDecks < ActiveRecord::Migration[6.0]
  def change
    create_table :decks do |t|
      t.references :card_name, null: false
      t.references :image, null: false
      t.integer :number_of_input, null: false
      t.string :deck_name, null: false
      t.references :user, null: false, foreign_key: true
      t.timestamps
    end
  end
end
