require 'rails_helper'

RSpec.describe "students/show", :type => :view do
  before(:each) do
    @student = assign(:student, Student.create!())
  end

  it "renders attributes in <p>" do
    render
  end
end
