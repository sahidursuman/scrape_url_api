class ScrapeUrl < ApplicationRecord
	validates :url, presence: true
end
