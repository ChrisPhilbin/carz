class RemoveWhenColumn < ActiveRecord::Migration[4.2]

	def change
		change_table :repairs do |t|
			t.remove :when
			t.string :date
		end
	end
end