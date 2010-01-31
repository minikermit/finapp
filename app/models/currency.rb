class Currency < ActiveRecord::Base
	set_table_name "DIM_Currency"
	set_primary_key "Fimis_Identifier"
end

# == Schema Information
#
# Table name: DIM_Currency
#
#  Fimis_Identifier             :integer(8)      not null, primary key
#  Currency_Identifier          :string(50)      not null
#  Currency_Iso_Code            :string(10)
#  Currency_Description         :string(100)     not null
#  Currency_Telekurs_Code       :string(50)      not null
#  Currency_Other_Code          :string(50)      not null
#  Currency_Country             :string(50)      not null
#  Currency_Factor              :decimal(18, 8)  not null
#  Record_Creation_Date         :datetime        not null
#  Record_Creator               :string(100)     not null
#  Record_Modification_Date     :datetime
#  Record_Modifier              :string(100)
#  Currency_Group_1             :string(50)
#  Currency_Group_Description_1 :string(50)
#  Currency_Group_2             :string(50)
#  Currency_Group_Description_2 :string(50)
#  Currency_Group_3             :string(50)
#  Currency_Group_Description_3 :string(50)
#  Entity_Identifier            :string(50)
#

