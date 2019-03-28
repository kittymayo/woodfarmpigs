class CreateProducts < ActiveRecord::Migration[5.2]
  def change
    create_table :products do |t|
      t.string :name
      t.string :category
      t.integer :price_cents
      t.string :status
      t.string :photo

      t.timestamps
    end
  end
end
