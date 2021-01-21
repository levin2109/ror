class CreateCars < ActiveRecord::Migration[6.0]
  def change
    create_table :cars do |t|
      t.string :lh_model
      t.integer :lh_year
      t.float :lh_usage
      t.float :lh_fuel
      t.integer :producer_id

      t.timestamps
    end
  end
end
