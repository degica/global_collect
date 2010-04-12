require File.join(File.dirname(__FILE__), '..', '..', 'spec_helper')

describe "the hosted merchant link payment response methods" do
  before(:each) do
    @hash = Crack::XML.parse(load_canned_response('successful_hosted_iowp_response.xml'))
    @response = GlobalCollect::Responses::Base.new(@hash)
    @response.extend(GlobalCollect::Responses::SuccessRow)
    @response.extend(GlobalCollect::Responses::InsertOrderWithPayment::HostedMerchantLinkPaymentResponseMethods)
  end

  it "should see the methods" do
    @response.form_method.should == "GET"
  end
end