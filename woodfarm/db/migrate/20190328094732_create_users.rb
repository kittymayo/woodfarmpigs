class CreateUsers < ActiveRecord::Migration[5.2]
  def change
    create_table :users do |t|
      t.string, :first_name
      t.string, :last_name
      t.string, :address
      t.string, :postcode
      t.string, :admin
      t.string :email

      t.timestamps
    end
  end
end