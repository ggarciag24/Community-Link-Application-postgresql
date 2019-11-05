class CreateEvents < ActiveRecord::Migration[6.0]
  def change
    create_table :events do |t|
      t.string :name
      t.string :location
      t.string :focus
      t.string :start_time
      t.string :end_time
      t.string :date
      t.string :description
      t.integer :host_id

      t.timestamps
    end
  end
end
