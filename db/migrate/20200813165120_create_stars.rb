class CreateStars < ActiveRecord::Migration[6.0]
  def change
    create_table :stars do |t|
      t.references :cocktail, null: false, foreign_key: true

      t.timestamps
    end
  end
end
