class Package < ActiveRecord::Base
	set_table_name "DIM_Source_Package"
	set_primary_key "FiMIS_Identifier"
end

# == Schema Information
#
# Table name: DIM_Source_Package
#
#  Fimis_Identifier           :integer(8)      not null
#  Source_Package_Name        :string(50)      not null
#  Source_Package_Description :string(50)      not null
#

