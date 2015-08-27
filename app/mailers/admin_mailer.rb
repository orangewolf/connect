class AdminMailer < ApplicationMailer
  default from: "fundraiser@connect2need.com"

  def sample_email(user)
    @user = user
    mail(to: @user.email, subject: 'Sample Email')
  end

  def message_email(message, user)
    # attachments.inline['logo.png'] = File.read(Organization.first.image.path)

    @message = message
    @user = user
    mail(to: @user.email, subject: @message.subject)
  end
end
