class Structure < ActiveRecord::Base
	set_table_name "DIM_Structure"
	set_primary_key "Fimis_Identifier"
end

# == Schema Information
#
# Table name: DIM_Structure
#
#  Fimis_Identifier     :integer(8)      not null, primary key
#  Group_Identifier     :string(50)      not null
#  Entity_Identifier    :string(50)      not null
#  Division_Identifier  :string(50)      not null
#  Division_Description :string(50)
#

