class VolJobDay < ActiveRecord::Base
  attr_accessible :dojob_id, :onday_id, :volunteer_id

  belongs_to :volunteer
  belongs_to :dojob
  belongs_to :onday

  accepts_nested_attributes_for :dojob
                 # :reject_if => :all_blank
  accepts_nested_attributes_for :onday
                 # :reject_if => :all_blank

end
