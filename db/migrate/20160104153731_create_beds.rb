class CreateBeds < ActiveRecord::Migration
  def change
    create_table :beds do |t|
      t.string :name
      t.text :description
      t.string :street
      t.string :city
      t.string :zipcode
      t.integer :max_number_of_guests
      t.string :owner_gender
      t.string :owner_role
      t.float :latitude
      t.float :longitude

      t.timestamps null: false
    end
    add_foreign_key :beds, :users, column: :owner_id
  end
end
