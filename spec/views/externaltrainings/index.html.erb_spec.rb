require 'spec_helper'

describe "externaltrainings/index" do
  before(:each) do
    assign(:externaltrainings, [
      stub_model(Externaltraining,
        :title => "Title",
        :facilitator => "Facilitator",
        :duration => 1,
        :description => "MyText",
        :supervisorapproval => false
      ),
      stub_model(Externaltraining,
        :title => "Title",
        :facilitator => "Facilitator",
        :duration => 1,
        :description => "MyText",
        :supervisorapproval => false
      )
    ])
  end

  it "renders a list of externaltrainings" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Title".to_s, :count => 2
    assert_select "tr>td", :text => "Facilitator".to_s, :count => 2
    assert_select "tr>td", :text => 1.to_s, :count => 2
    assert_select "tr>td", :text => "MyText".to_s, :count => 2
    assert_select "tr>td", :text => false.to_s, :count => 2
  end
end
