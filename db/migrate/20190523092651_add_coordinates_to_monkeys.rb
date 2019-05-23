class AddCoordinatesToMonkeys < ActiveRecord::Migration[5.2]
  def change
    add_column :monkeys, :latitude, :float
    add_column :monkeys, :longitude, :float
  end
end
