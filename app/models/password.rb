class Password < ActiveRecord::Base
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

