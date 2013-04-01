require 'spec_helper'

describe "externaltrainings/show" do
  before(:each) do
    @externaltraining = assign(:externaltraining, stub_model(Externaltraining,
      :title => "Title",
      :facilitator => "Facilitator",
      :duration => 1,
      :description => "MyText",
      :supervisorapproval => false
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Title/)
    rendered.should match(/Facilitator/)
    rendered.should match(/1/)
    rendered.should match(/MyText/)
    rendered.should match(/false/)
  end
end
