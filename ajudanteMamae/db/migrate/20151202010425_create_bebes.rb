class CreateBebes < ActiveRecord::Migration
  def change
    create_table :bebes do |t|
      t.string :nome
      t.integer :idade

      t.timestamps null: false
    end
  end
end
