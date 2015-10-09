require "acts_as_lockable/version"
require "acts_as_lockable/locker"
require "acts_as_lockable/lockable"

class ActiveRecord::Base
  def self.acts_as_lockable(options={})

    has_one :locker, as: :locked
    before_validation :check_locked
    
    include ActsAsLockable::Lockable
  end
end