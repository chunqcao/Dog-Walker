# frozen_string_literal: true

class CreateDogs < ActiveRecord::Migration[6.0]
  def change
    create_table :dogs do |t|
      t.string :name
      t.date :birth
      t.string :gender
      t.integer :weight
      t.string :breed
      t.binary :photo
      t.text :description
      t.references :user, index: true

      t.timestamps
    end
  end
end
