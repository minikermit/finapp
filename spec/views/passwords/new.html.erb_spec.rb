require File.expand_path(File.dirname(__FILE__) + '/../../spec_helper')


describe "/passwords/new.html.erb" do
  include PasswordsHelper
  
  before(:each) do
    assigns[:password] = stub_model(Password,
      :new_record? => true,

      :id => 1,

      :user_id => 1,

      :reset_code => "value for reset_code"

    )
  end

  it "renders new password form" do
    render
    
    response.should have_tag("form[action=?][method=post]", passwords_path) do

      with_tag("input#password_id[name=?]", "password[id]")

      with_tag("input#password_user_id[name=?]", "password[user_id]")

      with_tag("input#password_reset_code[name=?]", "password[reset_code]")

    end
  end
end


