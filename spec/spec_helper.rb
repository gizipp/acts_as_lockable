require 'sqlite3'
require 'active_record'
require 'acts_as_lockable'

ActiveRecord::Base.establish_connection(:adapter => "sqlite3", :database => ":memory:")

ActiveRecord::Schema.define(:version => 1) do
  create_table :lockers do |t|
    t.string :name
    t.boolean :is_locked
  end
end

class Locker < ActiveRecord::Base
  acts_as_lockable
end

class UnlockableLocker < ActiveRecord::Base; end