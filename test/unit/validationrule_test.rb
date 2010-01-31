require 'test_helper'

class ValidationruleTest < ActiveSupport::TestCase
  # Replace this with your real tests.
  test "the truth" do
    assert true
  end
end

# == Schema Information
#
# Table name: validationrules
#
#  id               :integer(4)      not null, primary key
#  ErrorKind        :string(20)      not null
#  rule_description :string(200)     not null
#  rule_scope       :string(15)      not null
#  rule_hint        :string(500)
#  rule_sql_query   :string(1000)
#  created_at       :datetime        not null
#  updated_at       :datetime
#  rule_type        :string(20)      not null
#

