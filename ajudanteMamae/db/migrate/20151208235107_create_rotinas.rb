class CreateRotinas < ActiveRecord::Migration
  def change
    create_table :rotinas do |t|
      t.string :nome
      t.references :bebes, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
