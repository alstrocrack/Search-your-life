class UserMailer < ApplicationMailer
    default from: ENV['MAIL_ADDRESS']
    
    def welcome_email
        @life = params[:life]
        @url = 'http://example.com/login'
        mail(to: @life.mail, subject: 'Welcome')
    end
end
