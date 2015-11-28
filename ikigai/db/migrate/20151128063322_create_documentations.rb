class CreateDocumentations < ActiveRecord::Migration
  def change
    create_table :documentations do |t|
      t.string :text

      t.timestamps null: false
    end
  end
end
