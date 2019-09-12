class CreateWalkers < ActiveRecord::Migration[6.0]
  def change
    create_table :walkers do |t|
      t.string :last_name
      t.string :first_name
      t.string :street
      t.string :city
      t.string :state
      t.integer :zipcode
      t.string :email
      t.integer :phone
      t.text :bio
      t.float :rate

      t.timestamps
    end
  end
end
