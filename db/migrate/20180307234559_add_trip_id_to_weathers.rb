class AddTripIdToWeathers < ActiveRecord::Migration[5.1]
  def change
    add_column :weathers, :trip_id, :integer
  end
end
