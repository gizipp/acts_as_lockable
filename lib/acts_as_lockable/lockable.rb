module ActsAsLockable
  module Lockable
    def is_locked?
      !self.locker.nil?
    end

    def lock
      self.create_locker(locked_type: self.model_name.name) if self.locker.nil?
      return true
    end

    def unlock
      self.locker.destroy
    end

    private
      def check_locked
        return false if self.is_locked?
      end
  end
end