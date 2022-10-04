class CreateDecks < ActiveRecord::Migration[6.0]
  def change
    create_table :decks do |t|
      t.references :card_name, null: false
      t.references :image, null: false
      t.integer :number_of_input, null: false
      t.timestamps
    end
  end
end
