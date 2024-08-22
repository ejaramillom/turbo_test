class CreateSwapeople < ActiveRecord::Migration[7.2]
  def change
    create_table :swapeople do |t|
      t.timestamps
      t.integer :person_id
      t.string :birth_year, default: ""
      t.string :eye_color, default: ""
      t.integer :height, default: 0
      t.integer :mass, default: 0
      t.string :name, default: ""
      t.string :url, default: ""
    end
  end
end
