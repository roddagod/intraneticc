class IccEvent < ApplicationRecord
	has_many :event_stats, dependent: :destroy
end
