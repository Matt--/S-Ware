class VolJobDay < ActiveRecord::Base
  attr_accessible :dojob_id, :onday_id, :volunteer_id, :frequency_id

  belongs_to :volunteer
  belongs_to :dojob
  belongs_to :onday
  belongs_to :frequency

  accepts_nested_attributes_for :dojob
                 # :reject_if => :all_blank
  accepts_nested_attributes_for :onday
                 # :reject_if => :all_blank
  accepts_nested_attributes_for :frequency
                 # :reject_if => :all_blank

  after_save :ensure_frequency


  def ensure_frequency
    if frequency.nil? 
      frequency = Frequency.create
      self.frequency_id = frequency.id
      self.save
    end
  end

end
