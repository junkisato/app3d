class CreatePatients < ActiveRecord::Migration[5.2]
  def change
    create_table :patients do |t|
      t.string :name
      t.string :kana_name
      t.integer :gender
      t.date :birthday
      t.text :chief_complaint
      t.timestamps
    end
  end
end
