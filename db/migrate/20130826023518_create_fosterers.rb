class CreateFosterers < ActiveRecord::Migration
  def change
    create_table :fosterers do |t|

  
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
