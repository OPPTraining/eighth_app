require 'spec_helper'

describe "courses/edit" do
  before(:each) do
    @course = assign(:course, stub_model(Course,
      :coursename => "MyString",
      :coursedescription => "MyText"
    ))
  end

  it "renders the edit course form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => courses_path(@course), :method => "post" do
      assert_select "input#course_coursename", :name => "course[coursename]"
      assert_select "textarea#course_coursedescription", :name => "course[coursedescription]"
    end
  end
end
