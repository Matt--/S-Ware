class CreateVolunteers < ActiveRecord::Migration
  def change
    create_table :volunteers do |t|
      t.string  :title
      t.date    :dob
      t.string  :firstname
      t.string  :lastname
      t.text    :address
      t.string  :email
      t.string  :moblie
      t.string  :home
      t.text    :background
      t.boolean :befosterer
      t.integer :scheduledjobtype_id
      t.date    :break_from
      t.date    :break_to

      t.timestamps
    end
  end
end
