class CreateDogsEventsJoinTable < ActiveRecord::Migration[6.0]
  def change
    create_join_table :dogs, :events do |t|
      t.index :dog_id
      t.index :event_id
    end
  end
end
