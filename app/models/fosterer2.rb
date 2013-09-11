class Fosterer2 < ActiveRecord::Base
  attr_accessible :ownhome, :inspecting, :rooms, :roomwarm, :hutch, :rabbithutch, :aviary, :livestockfenced,
		  :homedesc, :numadulta, :numchild, :ages,
		  :numhoursperday, :worktype, :secondperson, :allmembersagree, :bringcentre, :transportdesc,
		  :agreement
  
  
  validates :agreement, :presence => true
  # on_save .....
end
