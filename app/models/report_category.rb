class ReportCategory < ActiveRecord::Base
	set_table_name "DIM_Report_Categories"
  	set_primary_key "Report_Category_ID"
  	#set_primary_key "Report_Category_ID"
	has_many :reports
	searchable_by :name
end
