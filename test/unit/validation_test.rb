require 'test_helper'

class ValidationTest < ActiveSupport::TestCase
  # Replace this with your real tests.
  test "the truth" do
    assert true
  end
end

# == Schema Information
#
# Table name: B2TA_VAL_Error_Reports
#
#  id                :integer(8)      not null, primary key
#  Original_id       :integer(8)      not null
#  LoadDate          :string(10)      not null
#  Source_id         :string(50)      not null
#  Entity_id         :string(50)      not null
#  Client_id         :string(50)      not null
#  Key_id            :string(100)     not null
#  OutputFile        :string(50)      not null
#  OutputField       :string(50)      not null
#  Source            :string(50)      not null
#  Destination       :string(50)      not null
#  ErrorType         :string(50)      not null
#  validationrule_id :integer(8)      not null
#  Recommendation    :string(100)     not null
#  created_at        :datetime        not null
#  updated_at        :datetime        not null
#

