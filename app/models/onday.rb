class Onday < ActiveRecord::Base
  attr_accessible :id, :name

  has_many :vol_job_days
  has_many :volunteers,
           :through => :vol_job_day

end
