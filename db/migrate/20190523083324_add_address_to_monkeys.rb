class AddAddressToMonkeys < ActiveRecord::Migration[5.2]
  def change
    add_column :monkeys, :address, :string
  end
end
