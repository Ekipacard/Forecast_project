class CreateLocations < ActiveRecord::Migration
  def change
    create_table :places do |t|
      t.string :city

      t.timestamps
    end
  end
end
