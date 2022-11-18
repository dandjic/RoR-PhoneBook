class EnemyMailer < ApplicationMailer

  # Subject can be set in your I18n file at config/locales/en.yml
  # with the following lookup:
  #
  #   en.enemy_mailer.created_enemy.subject
  #
  def created_enemy
    @greeting = "Hi"

    mail to: "to@example.org", subject: "New enemy" 
  end

  # Subject can be set in your I18n file at config/locales/en.yml
  # with the following lookup:
  #
  #   en.enemy_mailer.updated_enemy.subject
  #
  def updated_enemy
    @greeting = "Hi"

    mail to: "to@example.org", subject: "Enemy update"
  end

  # Subject can be set in your I18n file at config/locales/en.yml
  # with the following lookup:
  #
  #   en.enemy_mailer.removed_enemy.subject
  #
  def removed_enemy
    @greeting = "Hi"

    mail to: "to@example.org", subject: "Enemy removed"
  end
end
