require File.expand_path(File.dirname(__FILE__) + '/../../spec_helper')


describe "/passwords/show.html.erb" do
  include PasswordsHelper
  before(:each) do
    assigns[:password] = @password = stub_model(Password,

      :id => 1,

      :user_id => 1,

      :reset_code => "value for reset_code"


    )

  end

  it "renders attributes in <p>" do
    render

    response.should have_text(/1/)

    response.should have_text(/1/)

    response.should have_text(/value\ for\ reset_code/)

  end
end

