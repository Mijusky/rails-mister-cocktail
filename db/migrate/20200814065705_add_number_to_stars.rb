class AddNumberToStars < ActiveRecord::Migration[6.0]
  def change
    add_column :stars, :number, :integer
  end
end
