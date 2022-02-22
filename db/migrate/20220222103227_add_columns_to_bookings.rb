class AddColumnsToBookings < ActiveRecord::Migration[6.1]
  def change
    add_column :bookings, :message, :text
    add_column :bookings, :status, :string, default: "pending"
    add_reference :bookings, :user, null: false, foreign_key: true
    add_reference :bookings, :grandmaster, null: false, foreign_key: true
  end
end
