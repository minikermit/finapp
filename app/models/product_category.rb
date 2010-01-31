class ProductCategory < ActiveRecord::Base
	set_table_name "DIM_Product_Category"
	set_primary_key "FiMIS_Identifier"
end

# == Schema Information
#
# Table name: DIM_Product_Category
#
#  FiMIS_Identifier         :integer(8)      not null, primary key
#  Product_Group_1          :string(50)      not null
#  Product_Group_1_name     :string(100)     not null
#  Product_Group_2          :string(50)      not null
#  Product_Group_2_name     :string(100)     not null
#  Product_Group_3          :string(50)      not null
#  Product_Group_3_name     :string(100)     not null
#  Product_Group_4          :string(50)      not null
#  Product_Group_4_name     :string(100)     not null
#  Product_Group_5          :string(50)      not null
#  Product_Group_5_name     :string(100)     not null
#  Product_Type             :string(50)      not null
#  Product_type_name        :string(100)     not null
#  Product_Kind             :string(50)      not null
#  Product_Kind_Name        :string(100)     not null
#  Record_Creation_Date     :datetime        not null
#  Record_creator           :string(100)     not null
#  Record_modification_date :datetime
#  Record_modifier          :string(100)
#

