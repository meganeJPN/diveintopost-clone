class AssignMailer < ApplicationMailer
  default from: 'from@example.com'

  def assign_mail(email, password)
    @email = email
    @password = password
    mail to: @email, subject: I18n.t('views.messages.complete_registration')
  end

  def delete_agenda(email, title)
    @email = email
    @title = title
    # binding.irb
    mail to: @email, subject: "アジェンダを削除しました"
  end
end