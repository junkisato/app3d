class AddResponsibleToPatients < ActiveRecord::Migration[5.2]
  def change
    add_reference :patients, :responsible, foreign_key: true
  end
end
