class CreateRepairs < ActiveRecord::Migration[4.2]

	def change
		create_table :repairs do |t|
			t.datetime :when
			t.string   :description
			t.integer  :car_id
		end
	end
end