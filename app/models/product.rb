class Product < ActiveRecord::Base
	set_table_name "DIM_Product"
	set_primary_key "FiMIS_Identifier"
end

# == Schema Information
#
# Table name: DIM_Product
#
#  FiMIS_Identifier         :integer(8)      not null, primary key
#  Product_GroupBy_1        :string(50)      not null
#  Product_GroupBy_1_name   :string(100)     not null
#  Product_GroupBy_2        :string(50)      not null
#  Product_GroupBy_2_name   :string(100)     not null
#  Product_GroupBy_3        :string(50)      not null
#  Product_GroupBy_3_name   :string(100)     not null
#  Product_Type             :string(50)      not null
#  Product_type_name        :string(100)     not null
#  Product_Kind             :string(50)      not null
#  Product_Kind_Name        :string(100)     not null
#  DIM_Aggregate            :integer(8)      not null
#  Record_Creation_Date     :datetime        not null
#  Record_creator           :string(100)     default("V"), not null
#  Record_modification_date :datetime
#  Record_modifier          :string(100)
#

