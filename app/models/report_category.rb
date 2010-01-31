class ReportCategory < ActiveRecord::Base
	set_table_name "DIM_Report_Categories"
  	set_primary_key "Report_Category_ID"
  	#set_primary_key "Report_Category_ID"
	has_many :reports
	acts_as_list
	searchable_by :name
end

# == Schema Information
#
# Table name: DIM_Report_Categories
#
#  Fimis_Identifier                :integer(8)      not null
#  Report_Category_ID              :integer(4)      not null, primary key
#  Category_Type                   :string(50)      not null
#  Category_Type_Description       :string(100)
#  Category_Kind                   :string(50)      not null
#  Category_Kind_Description       :string(100)
#  Comment                         :string(1000)
#  Record_Creation_Date            :datetime        not null
#  Record_Creator                  :string(50)      default("Vincent"), not null
#  Record_Modification_Date        :datetime
#  Record_Modifier                 :string(50)
#  Record_Modification_Application :string(100)
#  Record_Validity                 :boolean         not null
#  Record_Visibility               :boolean         not null
#  position                        :integer(4)
#

