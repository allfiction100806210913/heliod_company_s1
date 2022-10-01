class CreateLibraries < ActiveRecord::Migration[6.0]
  def change
    create_table :libraries do |t|
      t.string :card_name
      t.string :manacost
      t.string :card_text
      t.string :color
      t.timestamps
    end
  end
end
