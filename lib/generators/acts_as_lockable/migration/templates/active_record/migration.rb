class ActsAsLockableMigration < ActiveRecord::Migration
  def change
    create_table :lockers do |t|
      t.integer :locked_id
      t.string :locked_type
    end
    add_index :lockers, :locked_id
  end
end