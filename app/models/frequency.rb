
  #### Frequency rules
  # names => {weekly, fortnightly, monthly}
  # week => {1 to 5}
  # name = weekly => week = 1
  # name = fortnighly => week = [1 or 2]
  # name = monthly => week [1 to 5]
  #
  # NB: fortnightly relates week number odd/even to the 52 week year
  # NB: month accepts week 5 for the edge case every three months

class Frequency < ActiveRecord::Base
  attr_accessible :name, :week

  has_many :vol_job_days
  has_many :volunteers,
           :through => :vol_job_day

  validate :name, within: %w(weekly, fortnightly, monthly)
  validate :week, within: (1..5)

end
