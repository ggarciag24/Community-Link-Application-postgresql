class User < ApplicationRecord
  has_many :events_as_host, {class_name: 'Event', foreign_key: 'host_id'}

  has_many :volunteer_events, {foreign_key: 'volunteer_id'}

  has_many :events_as_volunteer, {through: :volunteer_events, source: :event}
end
