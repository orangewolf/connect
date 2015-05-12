class Message < ActiveRecord::Base
  after_create :send_email
  belongs_to :need
  belongs_to :user

  def send_email
    need.users.each do |user|
      AdminMailer.message_email(self, user).deliver
    end
  end
end
