class CreateWeathers < ActiveRecord::Migration
  def change
    create_table :weathers do |t|
      t.integer :temperature
      t.text :informations

      t.timestamps
    end
  end
end
