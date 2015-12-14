class CreateItems < ActiveRecord::Migration
  def change
    create_table :items do |t|
      t.time :hora
      t.references :dietum, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
