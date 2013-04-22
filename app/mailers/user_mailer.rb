class UserMailer < ActionMailer::Base
  default :from => "OPPConfirmation@opp.org"

  def signed_up(user)
  	mail( :to => user, :subject => "Course Section Signup Confirmation" )
  end
end
