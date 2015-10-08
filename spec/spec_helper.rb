require 'sqlite3'
require 'active_record'
require 'acts_as_lockable'

ActiveRecord::Base.establish_connection(:adapter => "sqlite3", :database => ":memory:")

ActiveRecord::Schema.define(:version => 1) do
  create_table :lockers do |t|
    t.string :name
  end

  create_table :locks do |t|
    t.integer :locked_id
    t.string :locked_type
  end

  add_index :locks, :locked_id
end

class Locker < ActiveRecord::Base
  acts_as_lockable
end

class UnlockableLocker < ActiveRecord::Base; end