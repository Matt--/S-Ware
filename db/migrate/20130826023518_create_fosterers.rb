class CreateFosterers < ActiveRecord::Migration
  def change
    create_table :fosterers do |t|

      t.string :kitcat
      t.string :p1
      t.string :p2
      t.string :p31
      t.string :p32
      t.string :p33
      t.string :p34
      t.string :p35
      t.string :p36
      t.string :p4
      t.integer :p51
      t.integer :p52
      t.integer :p53
      t.string :personal2
      
      
      t.boolean :catnursing
      t.boolean :catfeeding
      t.boolean :catbottlefeed
      t.boolean :catinjured
      
      t.boolean :dognursing
      t.boolean :dogfeeding
      t.boolean :dogbottlefeed
      t.boolean :doginjured
      
      t.boolean :rabgui
      t.boolean :hedgehoginjured
      t.boolean :hedgehogbottle
      t.boolean :birdsinjured
      t.boolean :birdstoung
      t.boolean :livestock
      
      
      t.timestamps
    end
  end
end
