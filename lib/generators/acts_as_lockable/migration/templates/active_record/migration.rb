class ActsAsLockableMigration < ActiveRecord::Migration
  def change
    create_table :locks do |t|
      t.integer :locked_id
      t.string :locked_type
    end
    add_index :locks, :locked_id
  end
end