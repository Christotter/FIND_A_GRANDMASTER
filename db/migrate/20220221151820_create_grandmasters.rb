class CreateGrandmasters < ActiveRecord::Migration[6.1]
  def change
    create_table :grandmasters do |t|
      t.string :fullname
      t.string :country
      t.integer :fide_id
      t.text :bio
      t.string :language
      t.integer :elo_rating

      t.timestamps
    end
  end
end
