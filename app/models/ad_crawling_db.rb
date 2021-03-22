class AdCrawlingDb < ApplicationRecord
	validates_uniqueness_of :title
end
