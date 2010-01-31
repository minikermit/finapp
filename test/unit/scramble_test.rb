require 'test_helper'

class ScrambleTest < ActiveSupport::TestCase
  # Replace this with your real tests.
  test "the truth" do
    assert true
  end
end

# == Schema Information
#
# Table name: B2TA_Encrypted
#
#  id           :integer(8)      not null, primary key
#  ClearID      :string(50)      not null
#  EncryptedID1 :string(50)      not null
#  EncryptedID2 :string(50)      not null
#  EncryptedID3 :string(50)
#  EncryptedID4 :string(50)
#  entity_id    :string(50)
#

