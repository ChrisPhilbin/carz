class Car < ActiveRecord::Base

	has_many :repairs
	validates_presence_of :year, :make, :model, :registration, :inspection, :vin

end
