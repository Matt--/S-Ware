class CreateOndays < ActiveRecord::Migration
  def change
    create_table :ondays do |t|
      t.string :name

      t.timestamps
    end
  end
end
