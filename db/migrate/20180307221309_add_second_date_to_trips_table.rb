class AddSecondDateToTripsTable < ActiveRecord::Migration[5.1]
  def change
    remove_column :trips, :date, :datetime
    add_column :trips, :start_date, :datetime
    add_column :trips, :end_date, :datetime
  end
end
