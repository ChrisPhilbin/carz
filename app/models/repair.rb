class Repair < ActiveRecord::Base
	belongs_to :car
	validates_presence_of :date, :description
end
