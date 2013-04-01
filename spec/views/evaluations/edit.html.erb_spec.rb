require 'spec_helper'

describe "evaluations/edit" do
  before(:each) do
    @evaluation = assign(:evaluation, stub_model(Evaluation,
      :useremail => "MyString",
      :courseid => 1,
      :Q1 => 1,
      :Q2 => 1,
      :Q3 => 1,
      :Q4 => 1,
      :Q5 => 1,
      :Q6 => 1,
      :Q7 => "MyText",
      :Q8 => "MyText",
      :Q9 => "MyText",
      :Q10 => "MyText"
    ))
  end

  it "renders the edit evaluation form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => evaluations_path(@evaluation), :method => "post" do
      assert_select "input#evaluation_useremail", :name => "evaluation[useremail]"
      assert_select "input#evaluation_courseid", :name => "evaluation[courseid]"
      assert_select "input#evaluation_Q1", :name => "evaluation[Q1]"
      assert_select "input#evaluation_Q2", :name => "evaluation[Q2]"
      assert_select "input#evaluation_Q3", :name => "evaluation[Q3]"
      assert_select "input#evaluation_Q4", :name => "evaluation[Q4]"
      assert_select "input#evaluation_Q5", :name => "evaluation[Q5]"
      assert_select "input#evaluation_Q6", :name => "evaluation[Q6]"
      assert_select "textarea#evaluation_Q7", :name => "evaluation[Q7]"
      assert_select "textarea#evaluation_Q8", :name => "evaluation[Q8]"
      assert_select "textarea#evaluation_Q9", :name => "evaluation[Q9]"
      assert_select "textarea#evaluation_Q10", :name => "evaluation[Q10]"
    end
  end
end
