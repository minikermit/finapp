require File.expand_path(File.dirname(__FILE__) + '/../../spec_helper')


describe "/passwords/edit.html.erb" do
  include PasswordsHelper
  
  before(:each) do
    assigns[:password] = @password = stub_model(Password,
      :new_record? => false,

      :id => 1,

      :user_id => 1,

      :reset_code => "value for reset_code"

    )
  end

  it "renders the edit password form" do
    render
    
    response.should have_tag("form[action=#{password_path(@password)}][method=post]") do

      with_tag('input#password_id[name=?]', "password[id]")

      with_tag('input#password_user_id[name=?]', "password[user_id]")

      with_tag('input#password_reset_code[name=?]', "password[reset_code]")

    end
  end
end


