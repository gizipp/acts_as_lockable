module ActsAsLockable
  module Locker
    def is_locked?
      if self.is_locked.nil? || self.is_locked == false
        return false
      else 
        return true
      end
    end

    def lock
      self.update_column(:is_locked, true)
    end

    def unlock
      self.update_column(:is_locked, false)
    end

    private
      def check_locked
        raise false if self.is_locked?
      end
  end
end