class Source < ActiveRecord::Base
	validates :name, presence: true
end
