class CreateFrequencies < ActiveRecord::Migration
  def change
    create_table :frequencies do |t|
      t.string :name, {null: false, default: "weekly"}
      t.integer :week, {null: false, default: 1}

      t.timestamps
    end
  end
end
