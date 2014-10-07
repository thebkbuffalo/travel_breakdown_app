class Invitation < ActiveRecord::Base
  belongs_to :event
  validates :email, format: { :with => /\b[A-Z0-9._%a-z\-]+@(?:[A-Z0-9a-z\-]+\.)+[A-Za-z]{2,4}\z/ }
  validates :message, length: { :minimum => 10, :maximum => 1000 }
  validates :event_id, presence: true
  validates :permission, presence: true

  def deliver
    return false unless valid?
    email_message = message.gsub('website', '<a href="http://localhost:3000">website</a>')
    Pony.mail({
      :to => %("#{name}" <#{email}>),
      :subject => "You're Invited",
      :body => message,
      :via => :smtp,
      :via_options => {
        :address => 'smtp.gmail.com',
        :port => '587',
        :user_name => ENV['SENDGRID_USERNAME'],
        :password => ENV['SENDGRID_PASSWORD'],
        :authentication => :plain,
        :enable_starttls_auto => true
      }
    })
  end

end
