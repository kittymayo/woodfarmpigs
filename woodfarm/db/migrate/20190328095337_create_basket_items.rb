class CreateBasketItems < ActiveRecord::Migration[5.2]
  def change
    create_table :basket_items do |t|
      t.integer :product_id
      t.integer :quantity

      t.timestamps
    end
  end
end
