require "acts_as_lockable/version"
require "acts_as_lockable/lock"
require "acts_as_lockable/locker"

class ActiveRecord::Base
  def self.acts_as_lockable(options={})

    has_many :locks, as: :locked
    before_validation :check_locked
    
    include ActsAsLockable::Locker
  end
end