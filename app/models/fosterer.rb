class Fosterer < ActiveRecord::Base
  attr_accessible :motivation, :catnursing, :catfeeding, :catbottlefeed, :catinjured, 
		:dognursing, :dogfeeding, :dogbottlefeed, :doginjured,
		:rabgui, :hedgehoginjured, :hedgehogbottle, :birdsinjured, :birdstoung, :livestock,
		:volunteer_id
      
  belongs_to :volunteer
  has_one :fosterer2
end
