# Preview all emails at http://localhost:3000/rails/mailers/enemy_mailer
class EnemyMailerPreview < ActionMailer::Preview

  # Preview this email at http://localhost:3000/rails/mailers/enemy_mailer/created_enemy
  def created_enemy
    EnemyMailer.created_enemy
  end

  # Preview this email at http://localhost:3000/rails/mailers/enemy_mailer/updated_enemy
  def updated_enemy
    EnemyMailer.updated_enemy
  end

  # Preview this email at http://localhost:3000/rails/mailers/enemy_mailer/removed_enemy
  def removed_enemy
    EnemyMailer.removed_enemy
  end

end
