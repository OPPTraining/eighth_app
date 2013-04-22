require 'spec_helper'

describe ReportsController do

  describe "GET 'reports'" do
    it "returns http success" do
      get 'reports'
      response.should be_success
    end
  end

end
