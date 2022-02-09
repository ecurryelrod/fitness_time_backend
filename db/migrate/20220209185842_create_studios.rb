class CreateStudios < ActiveRecord::Migration[7.0]
  def change
    create_table :studios do |t|
      t.string :name
      t.string :email
      t.bigint :phone
      t.string :address_1
      t.string :address_2
      t.string :city
      t.string :state
      t.integer :zipcode

      t.timestamps
    end
  end
end
