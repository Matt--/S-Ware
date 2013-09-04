require 'net/smtp'



class Volunteer < ActiveRecord::Base

  attr_accessible :address, :background, :dob, :email, :firstname, :home, :lastname, :moblie, :title
  
  validates :title, :presence => true#, :message => ""
  validates :dob, :presence => true
  validates :firstname, :presence => true
  validates :lastname, :presence => true
  validates :address, :presence => true
  validates :email, :presence => true
  validates :background, :presence => true
  
  #We want to only require one of these two
  validates :moblie, :numericality => {:only_integer => true},
                     :presence => true, :if => "home.blank?"
  validates :home, :numericality => {:only_integer => true},
                   :presence => true, :if => "moblie.blank?"
  #There is a bug atm - if one of them is there, it doesn't
  #check that the other one is numerical. Don't care atm!
  
  validate :over_18
  

  has_many :whiteboards
  
  def over_18
    if dob + 18.years >= Date.today
      errors.add(:dob, "can't be under 18")
    end
  end

  def test_email_confirmation_message
    return send_confirmation_email
  end


  after_save :send_confirmation_email
  # precondition: after_save callback only triggers on a successfull save
  private
  def send_confirmation_email
    vc = Volcoordinator.find(:first)

    puts "\n******************************************"
    puts "############## see me"
    puts defined?(vc.email_replyto).nil?

    message = <<-MESSAGE_END
    From: #{defined?(vc.email_replyto).nil? ? 'test from' : vc.email_replyto }
    To: #{email.nil? ? 'test to' : email}
    Subject: #{defined?(vc.email_header).nil? ? 'test header' : vc.email_header}

    #{defined?(vc.content).nil? ? 'test content' : vc.email_content}
    
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
end
