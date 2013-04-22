class UserMailer < ActionMailer::Base
  default :from => "OPPConfirmation@opp.org"

  def signed_up(user, coursesection_id, coursename, coursesectiondate, duration, location, resource)
  	@user = user
  	@coursesection_id = coursesection_id
  	@coursename = coursename
  	@coursesectiondate = coursesectiondate
  	@duration = duration
  	@location = location
    @resource = resource
    #attachments['resource.pdf'] = File.read(resouce)
  	mail( :to => user, :subject => "Course Section Signup Confirmation" )
  end

  def removed_user(user, coursesection_id, coursename, coursesectiondate, location)
  	@user = user
  	@coursesection_id = coursesection_id
  	@coursename = coursename
  	@coursesectiondate = coursesectiondate
  	@location = location
  	mail( :to => user, :subject => "You Have Been Removed from a Course Section" )
  end

end
