class PositionType < ActiveRecord::Base
	set_table_name "DIM_Position_Type"
	set_primary_key "Fimis_Identifier"
end

# == Schema Information
#
# Table name: DIM_Position_Type
#
#  Fimis_Identifier          :integer(8)      not null, primary key
#  Position_Type             :string(50)      not null
#  Position_Type_Description :string(100)     not null
#  Record_Creation_Date      :datetime
#  Record_Creator            :string(50)
#  Record_Modification_Date  :datetime
#  Record_Modifier           :string(50)
#

