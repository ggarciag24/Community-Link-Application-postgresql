class Event < ApplicationRecord
  belongs_to :host, {class_name: 'User'}

  has_many :volunteer_events

  has_many :volunteers, {through: :volunteer_events, foreign_key: 'volunteer_id'}
end
