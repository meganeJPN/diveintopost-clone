class AssignMailer < ApplicationMailer
  default from: 'from@example.com'

  def assign_mail(email, password)
    @email = email
    @password = password
    mail to: @email, subject: I18n.t('views.messages.complete_registration')
  end

  def change_owner(email)
    binding.irb
    @email = email
    mail to: @email, subject: "オーナーの権限があなたに移動されました"
  end
end