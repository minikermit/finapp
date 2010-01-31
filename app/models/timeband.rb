class Timeband < ActiveRecord::Base
	set_table_name "DIM_Timeband"
	set_primary_key "Fimis_identifier"
end

# == Schema Information
#
# Table name: DIM_Timeband
#
#  Fimis_identifier         :integer(8)      not null, primary key
#  Number_of_Days           :integer(4)      not null
#  TimeBand1                :string(50)      not null
#  TimeBand1_Order          :integer(4)
#  TimeBand2                :string(50)
#  TimeBand3                :string(50)
#  TimeBand4                :string(50)
#  TimeBand5                :string(50)
#  Record_Creation_Date     :datetime        not null
#  Record_Creator           :string(50)      default("suser_sname("), not null
#  Record_Modification_Date :datetime
#  Record_Modifier          :string(50)
#

