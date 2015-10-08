module ActsAsLockable
  module Locker
    def is_locked?
      self.locks.size > 0
    end

    def lock
      self.locks.create
    end

    def unlock
      self.locks.clear
    end

    private
      def check_locked
        return false if self.is_locked?
      end
  end
end