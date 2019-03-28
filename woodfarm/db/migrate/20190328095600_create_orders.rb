class CreateOrders < ActiveRecord::Migration[5.2]
  def change
    create_table :orders do |t|
      t.integer :user_id
      t.integer :basket_id
      t.string :status

      t.timestamps
    end
  end
end