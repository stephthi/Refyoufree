class CreateApplications < ActiveRecord::Migration
  def change
    create_table :applications do |t|
      t.string :text

      t.timestamps null: false
    end
  end
end
