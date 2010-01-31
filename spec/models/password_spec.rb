require File.expand_path(File.dirname(__FILE__) + '/../spec_helper')

describe Password do
  before(:each) do
    @valid_attributes = {

      :id => 1,

      :user_id => 1,

      :reset_code => "value for reset_code",

      :expiration_date => Time.now,

      :created_at => Time.now,

      :updated_at => Time.now

    }
  end

  it "should create a new instance given valid attributes" do
    Password.create!(@valid_attributes)
  end
end

# == Schema Information
#
# Table name: passwords
#
#  id              :integer(4)      not null, primary key
#  user_id         :integer(4)
#  reset_code      :string(255)
#  expiration_date :datetime
#  created_at      :datetime
#  updated_at      :datetime
#

