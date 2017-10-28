require "test_helper"

class UserMailerTest < ActionMailer::TestCase
  # def test_sanity
  #   flunk "Need real tests"
  # end
  test "invite" do
    # Create the email and store it for further assertions
    email = UserMailer.welcome_email( 'jairsabbath1@gmail.com' )
 
    # Send the email, then test that it got queued
    assert_emails 1 do
      email.deliver_now
    end
 
    # Test the body of the sent email contains what we expect it to
    assert_equal ['jairsabbath1@gmail.com'], email.from
    assert_equal ['friend@example.com'], email.to
    assert_equal 'You have been invited by me@example.com', email.subject
   
  end
end
