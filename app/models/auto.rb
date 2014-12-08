class Auto < ActiveRecord::Base
	validates :number, presence: true
end
