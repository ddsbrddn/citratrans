class CreateEvents < ActiveRecord::Migration[5.0]
  def change
    create_table :events do |t|
      t.string :organization
      t.datetime :start
      t.datetime :end
      t.string :vehicle
      t.text :note

      t.timestamps
    end
  end
end
