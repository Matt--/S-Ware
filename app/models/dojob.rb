class Dojob < ActiveRecord::Base
  attr_accessible :name, :id

  has_many :vol_job_day
  has_many :volunteers,
           :through => :vol_job_day

  belongs_to :volscheduler


end
