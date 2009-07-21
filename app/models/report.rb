class Report < ActiveRecord::Base
set_table_name "DIM_Reports"
#set_primary_key "Fimis_Identifier"
set_primary_key "Report_ID"

belongs_to :report_category, :foreign_key => "Report_Category_ID"

has_many :report_lines, :order => "position"

searchable_by :name , :description

end
