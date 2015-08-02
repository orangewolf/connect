class Message < ActiveRecord::Base
  after_create :send_email
  belongs_to :need
  belongs_to :user

  def send_email
    # need.users.each do |user|
    user = User.where(email: 'rob@notch8.com').first
      begin
        AdminMailer.message_email(self, user).deliver
      rescue
      end
    # end
    return true
  end
end
