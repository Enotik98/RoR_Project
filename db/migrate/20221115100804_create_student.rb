class CreateStudent < ActiveRecord::Migration[7.0]
  def change
    create_table :Student do |t|
      t.string :Surname
      t.string :Street
      t.string :House
      t.string :Flat
      t.integer :Class_id

      t.timestamps
    end
  end
end

