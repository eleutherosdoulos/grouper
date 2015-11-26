class AddTeacherSubjectAreatoUser < ActiveRecord::Migration
  def change
    add_column :users, :teacher_subject_area, :string
  end
end
