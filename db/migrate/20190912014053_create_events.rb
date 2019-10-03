# frozen_string_literal: true

class CreateEvents < ActiveRecord::Migration[6.0]
  def change
    create_table :events do |t|
      t.datetime :start_time
      t.datetime :end_time
      t.decimal :price
      t.text :dog_performance
      t.integer :rate_for_walker
      t.text :comment_for_walker
      t.references :walker, index: true

      t.timestamps
    end
  end
end
