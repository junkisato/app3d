class CreatePains < ActiveRecord::Migration[5.2]
  def change
    create_table :pains do |t|
      t.string :pain_point
      t.text :supplement
      t.references :patient, foreign_key: true
      t.timestamps
    end
  end
end
