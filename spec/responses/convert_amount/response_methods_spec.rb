require File.join(File.dirname(__FILE__), '..', '..', 'spec_helper')

describe "the convert amount response methods" do
  before(:each) do
    @response = load_canned_response('successful_convert_amount_response.xml')
    @response.extend(GlobalCollect::Responses::SuccessRow)
    @response.extend(GlobalCollect::Responses::ConvertAmount::ResponseMethods)
  end

  it "should see the methods" do
    @response.converted_amount.should == "1174"
  end
end