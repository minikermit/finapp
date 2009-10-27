require File.expand_path(File.dirname(__FILE__) + '/../../spec_helper')


describe "/passwords/index.html.erb" do
  include PasswordsHelper
  
  before(:each) do
    assigns[:passwords] = [

      stub_model(Password,

        :id => 1,

        :user_id => 1,

        :reset_code => "value for reset_code"


      ),


      stub_model(Password,

        :id => 1,

        :user_id => 1,

        :reset_code => "value for reset_code"


      )


    ]
  end

  it "renders a list of passwords" do
    render

    response.should have_tag("tr>td", 1.to_s, 2)

    response.should have_tag("tr>td", 1.to_s, 2)

    response.should have_tag("tr>td", "value for reset_code".to_s, 2)

  end
end

