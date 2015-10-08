class Lock < ActiveRecord::Base

  belongs_to :locked, polymorphic: true

end