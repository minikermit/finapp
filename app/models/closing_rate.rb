class ClosingRate < ActiveRecord::Base
	set_table_name "B2TA_ClosingRates"
end

# == Schema Information
#
# Table name: B2TA_ClosingRates
#
#  id              :integer(4)      not null, primary key
#  Group_id        :string(50)
#  Entity_id       :string(50)
#  Downloaddate    :datetime
#  Currency_Code   :string(50)
#  Currency_ISO    :string(3)
#  Currency_Rate   :float
#  Record_Validity :boolean
#  Created_at      :datetime
#  Updated_at      :datetime
#  Created_by      :string(50)
#  Updated_by      :string(50)
#  Created_with    :string(100)
#  Updated_with    :string(100)
#

