require "acts_as_lockable/version"
require "acts_as_lockable/locker"

class ActiveRecord::Base
  def self.acts_as_lockable(options={})
    include ActsAsLockable::Locker
    before_validation :check_locked, unless: :is_locked?
  end
end