require 'spec_helper'

describe "evaluations/show" do
  before(:each) do
    @evaluation = assign(:evaluation, stub_model(Evaluation,
      :useremail => "Useremail",
      :courseid => 1,
      :Q1 => 2,
      :Q2 => 3,
      :Q3 => 4,
      :Q4 => 5,
      :Q5 => 6,
      :Q6 => 7,
      :Q7 => "MyText",
      :Q8 => "MyText",
      :Q9 => "MyText",
      :Q10 => "MyText"
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Useremail/)
    rendered.should match(/1/)
    rendered.should match(/2/)
    rendered.should match(/3/)
    rendered.should match(/4/)
    rendered.should match(/5/)
    rendered.should match(/6/)
    rendered.should match(/7/)
    rendered.should match(/MyText/)
    rendered.should match(/MyText/)
    rendered.should match(/MyText/)
    rendered.should match(/MyText/)
  end
end
