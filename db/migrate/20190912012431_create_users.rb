# frozen_string_literal: true

class CreateUsers < ActiveRecord::Migration[6.0]
  def change
    create_table :users do |t|
      t.string :last_name
      t.string :first_name
      t.string :street
      t.string :city
      t.string :state
      t.integer :zipcode
      t.string :email
      t.integer :phone

      t.timestamps
    end
  end
end
