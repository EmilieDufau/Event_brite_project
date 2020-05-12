class AttendanceMailer < ApplicationMailer
	default from: 'emiduf@yopmail.com'

  def attendance_email(user)
    @attendance = attendance
    @url  = 'https://git.heroku.com/event-brite-ed.git'
    mail(to: @attendance.user.email, subject: "Enjoy #{@attendance.event.title}")
  end
end
