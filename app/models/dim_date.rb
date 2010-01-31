class DimDate < ActiveRecord::Base
	set_table_name "DIM_Date"
	set_primary_key "Fimis_Identifier"
end

# == Schema Information
#
# Table name: DIM_Date
#
#  Fimis_Identifier     :integer(8)      not null, primary key
#  Date                 :datetime        not null
#  Day                  :string(10)      not null
#  Business_day_flag    :boolean         not null
#  Week_Identifier      :integer(4)      not null
#  Weekday_Identifier   :integer(4)      not null
#  Weekday_Description  :string(50)      not null
#  Week_Lastday_flag    :boolean         not null
#  Month_Identifier     :integer(4)      not null
#  Month_Description    :string(50)      not null
#  Month_Lastday_flag   :boolean         not null
#  Quarter_Identifier   :integer(4)      not null
#  Quarter_Description1 :string(50)      not null
#  Quarter_Description2 :string(50)      not null
#  Quarter_Lastday_flag :boolean         not null
#  Year_Identifier      :integer(4)      not null
#  Year_Description     :string(50)      not null
#  Year_Lastday_flag    :boolean         not null
#

