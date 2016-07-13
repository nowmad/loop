class CreateFacilitations < ActiveRecord::Migration
  def change
    create_table :facilitations do |t|
      t.string :title
      t.string :facilitator_email

      t.timestamps null: false
    end
  end
end
