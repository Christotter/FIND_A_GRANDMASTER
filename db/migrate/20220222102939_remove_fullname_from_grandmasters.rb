class RemoveFullnameFromGrandmasters < ActiveRecord::Migration[6.1]
  def change
    remove_column :grandmasters, :fullname, :string
  end
end
