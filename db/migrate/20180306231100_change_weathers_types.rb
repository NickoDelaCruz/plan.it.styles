class ChangeWeathersTypes < ActiveRecord::Migration[5.1]
  def change
    remove_column :weathers, :latitude, :float
    add_column :weathers, :latitude, :integer
    remove_column :weathers, :longitude, :float
    add_column :weathers, :longitude, :integer
  end
end
