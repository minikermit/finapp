class Source < ActiveRecord::Base
	set_table_name "DIM_Source"
	set_primary_key "Fimis_Identifier"
end

# == Schema Information
#
# Table name: DIM_Source
#
#  Fimis_Identifier   :integer(8)      not null, primary key
#  Source_Name        :string(50)      not null
#  Source_Description :string(50)      not null
#  Source_Frequency   :string(50)      not null
#

