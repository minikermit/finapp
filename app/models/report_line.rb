class ReportLine < ActiveRecord::Base
	set_table_name "DIM_ReportLines"
  	#set_primary_key "Fimis_Identifier"
  	set_primary_key "Line_Id"
	belongs_to :report, :foreign_key => 'Report_Id'
	has_many :dim_account_plans , :through => :report_structures
	
	acts_as_list :scope => :report
		
	searchable_by :report_id , :line_id , :name
end
