class AdminMailer < ApplicationMailer
  default from: "genevieve@example.com"

  def sample_email(user)
    @user = user
    mail(to: @user.email, subject: 'Sample Email')
  end

  def message_email(message, user)
    @message = message
    @user = user
    mail(to: @user.email, subject: "Status update for #{message.need.title}")
  end
end
