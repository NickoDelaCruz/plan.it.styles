class CreateWeathers < ActiveRecord::Migration[5.1]
  def change
    create_table(:weathers) do |t|
      t.column(:latitude, :float)
      t.column(:longitude, :float)
    end
  end
end
