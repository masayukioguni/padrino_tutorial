class Record < ActiveRecord::Base
  belongs_to :player
  belongs_to :championship
end
