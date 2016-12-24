class EmailMessage < ActionMailer::Base
  default :from => "#{Rails.application.name} " <<
    "<nobody@#{Rails.application.domain}>"

  def notify(message, user)
    @message = message
    @user = user

    mail(
      :to => user.email,
      :subject => "[#{Rails.application.name}] Private Message from " <<
        "#{message.author_username}: #{message.subject}"
    )
  end

#   # test MailGun setup via API
#   def send_simple_message
#     RestClient.post "https://api:key-8c787dbf0edabecdea35c6329f57d188"\
#     "@api.mailgun.net/v3/appfb8c8481000b4f67a19f9c7bc81119bf.mailgun.org/messages",
#     :from => "Excited User <mailgun@appfb8c8481000b4f67a19f9c7bc81119bf.mailgun.org>",
#     :to => "bar@example.com, pw220@sent.com",
#     :subject => "Hello",
#     :text => "Testing some Mailgun awesomness!"
#   end

end
