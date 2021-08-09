class ContactMailer < ApplicationMailer
    def contact_mail(contact)
        @contact = contact
        mail to: "ukmmm0523@gmail.com", subject: "投稿完了確認メール"
      end
end
