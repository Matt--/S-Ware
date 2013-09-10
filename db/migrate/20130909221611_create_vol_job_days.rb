class CreateVolJobDays < ActiveRecord::Migration
  def change
    create_table :vol_job_days do |t|
      t.integer :volunteer_id
      t.integer :dojob_id
      t.integer :onday_id

      t.timestamps
    end
  end
end
