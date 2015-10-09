require 'sqlite3'
require 'active_record'
require 'acts_as_lockable'

ActiveRecord::Base.establish_connection(:adapter => "sqlite3", :database => ":memory:")

ActiveRecord::Schema.define(:version => 1) do
  create_table :users do |t|
    t.string :name
  end

  create_table :lockers do |t|
    t.integer :locked_id
    t.string :locked_type
  end

  add_index :lockers, :locked_id
end

class User < ActiveRecord::Base
  acts_as_lockable
end

class UnlockableUser < ActiveRecord::Base; end