require 'test_helper'

class EmailTest < ActionMailer::TestCase
  test "reception" do
    mail = Email.reception
    assert_equal "Reception", mail.subject
    assert_equal ["to@example.org"], mail.to
    assert_equal ["from@example.com"], mail.from
    assert_match "Hi", mail.body.encoded
  end

end
