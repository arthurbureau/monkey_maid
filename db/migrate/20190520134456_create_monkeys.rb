class CreateMonkeys < ActiveRecord::Migration[5.2]
  def change
    create_table :monkeys do |t|
      t.string :name
      t.string :speciality
      t.text :description
      t.integer :price
      t.string :picture
      t.references :user, foreign_key: true

      t.timestamps
    end
  end
end
