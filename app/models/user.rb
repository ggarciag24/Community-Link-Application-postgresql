class User < ApplicationRecord
  has_many :events, foreign_key: 'host_id'
  has_many :events, foreign_key: 'volunteer_id'
end
