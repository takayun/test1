class CreatePrototypes < ActiveRecord::Migration[6.0]
  def change
    create_table :prototypes do |t|
      t.integer :price,         null: false
      t.string  :car_maker,     null: false
      t.string  :car_model,     null: false
      t.string  :car_grade,     null: false
      t.string  :body_color,    null: false
      t.string  :vi_number,     null: false
      t.integer :year,          null: false
      t.integer :mileage,       null: false
      t.string  :drive_system,  null: false
      t.string  :transmission,  null: false
      t.string  :inspection,    null: false
      t.text    :comment
      t.timestamps
    end
  end
end
