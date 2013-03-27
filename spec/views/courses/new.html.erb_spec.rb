require 'spec_helper'

describe "courses/new" do
  before(:each) do
    assign(:course, stub_model(Course,
      :coursename => "MyString",
      :coursedescription => "MyText"
    ).as_new_record)
  end

  it "renders new course form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => courses_path, :method => "post" do
      assert_select "input#course_coursename", :name => "course[coursename]"
      assert_select "textarea#course_coursedescription", :name => "course[coursedescription]"
    end
  end
end
