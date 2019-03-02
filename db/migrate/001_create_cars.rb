class CreateCars < ActiveRecord::Migration[4.2]

	def change
		create_table :cars do |t|
			t.integer :year
			t.string  :make
			t.string  :model
		end
	end
end

