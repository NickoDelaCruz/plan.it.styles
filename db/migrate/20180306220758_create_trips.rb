class CreateTrips < ActiveRecord::Migration[5.1]
  def change
    create_table(:trips) do |t|
      t.column(:destination, :string)
      t.column(:date, :datetime)
      t.column(:user_id, :integer)
    end
  end
end
