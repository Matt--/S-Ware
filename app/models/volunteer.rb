require 'net/smtp'

class Volunteer < ActiveRecord::Base

  attr_accessible :address, :background, :dob, :email, :firstname, :home, 
            :lastname, :moblie, :title, :befosterer,
            :break_from, :break_to,
            :vol_job_day_attributes, :ondays_attributes, :dojobs_attributes

  has_many :whiteboards
  has_one :fosterer
  has_many :vol_job_day
  has_many :dojobs,
           :through => :vol_job_day
  has_many :ondays,
           :through => :vol_job_day
  has_many :frequencies,
           :through => :vol_job_day

  accepts_nested_attributes_for :vol_job_day,
       #    :reject_if => :all_blank,
           :allow_destroy => true
  accepts_nested_attributes_for :dojobs
  accepts_nested_attributes_for :ondays
  
  validates :title, :presence => true #, :message => ""
  validates :dob, :presence => true
  validates :firstname, :presence => true
  validates :lastname, :presence => true
  validates :address, :presence => true
  validates :email, :presence => true
  validates :background, :presence => true
  # TODO validate :break_from, :break_to, as good dates
  
  #We want to only require one of these two
  validates :moblie, :numericality => {:only_integer => true},
                     :presence => true, :if => "home.blank?"
  validates :home, :numericality => {:only_integer => true},
                   :presence => true, :if => "moblie.blank?"
  #There is a bug atm - if one of them is there, it doesn't
  #check that the other one is numerical. Don't care atm!
  
  validate :over_18
  
  after_find :enable_vol_job_day
  after_save :send_confirmation_email

##############################################################

  def over_18
    if dob + 18.years >= Date.today
      errors.add(:dob, "can't be under 18")
    end
  end

  def test_email_confirmation_message
    return send_confirmation_email
  end



  # precondition: after_save callback only triggers on a successfull save
  private
  def send_confirmation_email
    vc = Volcoordinator.find(:first)
    message = <<-MESSAGE_END
    From: #{defined?(vc.email_replyto).nil? ? 'test from' : vc.email_replyto }
    To: #{email.nil? ? 'test to' : email}
    Subject: #{defined?(vc.email_header).nil? ? 'test header' : vc.email_header}

    #{defined?(vc.email_content).nil? ? 'test content' : vc.email_content}
    
    MESSAGE_END

 #   Net::SMTP.start('mail.ecs.vuw.ac.nz',
 #                    587,
 #                   'localhost',
 #                   'stevenmatt3', 'password', :plain ) do |smtp|
 #     smtp.send_message message, vc.email_replyto,
 #                                'stevenmatt3@myvuw.ac.nz',
 #                                'test@gmail.com'


    # puts an email sent message on the server terminal
    puts "\n******************************************"
    puts "************* email sent"
    puts message

    return message # used in test
#    end
  end

  private
  def enable_vol_job_day
    if( vol_job_day.empty? )
      (1..7).each do |n|
        v = VolJobDay.new
        v.volunteer_id = self.id
        v.dojob_id = 1
        v.onday_id = n
        v.save
      end
    end
  end

end
