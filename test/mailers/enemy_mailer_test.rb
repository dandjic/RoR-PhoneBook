require "test_helper"

class EnemyMailerTest < ActionMailer::TestCase
  test "created_enemy" do
    mail = EnemyMailer.created_enemy
    assert_equal "Created enemy", mail.subject
    assert_equal ["to@example.org"], mail.to
    assert_equal ["from@example.com"], mail.from
    assert_match "Hi", mail.body.encoded
  end

  test "updated_enemy" do
    mail = EnemyMailer.updated_enemy
    assert_equal "Updated enemy", mail.subject
    assert_equal ["to@example.org"], mail.to
    assert_equal ["from@example.com"], mail.from
    assert_match "Hi", mail.body.encoded
  end

  test "removed_enemy" do
    mail = EnemyMailer.removed_enemy
    assert_equal "Removed enemy", mail.subject
    assert_equal ["to@example.org"], mail.to
    assert_equal ["from@example.com"], mail.from
    assert_match "Hi", mail.body.encoded
  end

end
