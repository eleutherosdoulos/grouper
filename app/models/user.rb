class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

  def active_for_authentication?
    super && approved?
  end

  def inactive_message
    if !approved?
      :not_approved
    else
      super :already_authenticated 
    end
  end

=begin
  ater_update do |user|
     if user.user_type = "administrator"
         a = Administrator.new
         a.first_name = user.first_name
         a.last_name = user.last_name
      elsif user.user_type = "teacher"
         a = Teacher.new
         a.first_name = user.first_name
         a.last_name = user.last_name
         a.subject_area = user.teacher_subject_area
      else
         a = Student.new
         a.first_name = user.first_name
         a.last_name = user.last_name 
      end
 end
=end

end

