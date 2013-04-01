require 'spec_helper'

describe "evaluations/index" do
  before(:each) do
    assign(:evaluations, [
      stub_model(Evaluation,
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
      ),
      stub_model(Evaluation,
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
      )
    ])
  end

  it "renders a list of evaluations" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Useremail".to_s, :count => 2
    assert_select "tr>td", :text => 1.to_s, :count => 2
    assert_select "tr>td", :text => 2.to_s, :count => 2
    assert_select "tr>td", :text => 3.to_s, :count => 2
    assert_select "tr>td", :text => 4.to_s, :count => 2
    assert_select "tr>td", :text => 5.to_s, :count => 2
    assert_select "tr>td", :text => 6.to_s, :count => 2
    assert_select "tr>td", :text => 7.to_s, :count => 2
    assert_select "tr>td", :text => "MyText".to_s, :count => 2
    assert_select "tr>td", :text => "MyText".to_s, :count => 2
    assert_select "tr>td", :text => "MyText".to_s, :count => 2
    assert_select "tr>td", :text => "MyText".to_s, :count => 2
  end
end
