class Adddetailstocars < ActiveRecord::Migration[5.2]
  def change
  	add_column :cars, :vin,          :string
  	add_column :cars, :registration, :string
  	add_column :cars, :inspection,   :string
  	add_column :cars, :licenseplate, :string
  end
end
