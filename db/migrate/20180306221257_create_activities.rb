class CreateActivities < ActiveRecord::Migration[5.1]
  def change
    create_table(:activities) do |t|
      t.column(:description, :string)
      t.column(:trip_id, :integer)
    end
  end
end
