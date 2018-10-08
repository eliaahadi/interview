class CreatePlaces < ActiveRecord::Migration[5.2]
  def change
    create_table :places do |t|
      t.string :title
      t.text :address
      t.float :latitude
      t.float :longitude
    end
  end
end
