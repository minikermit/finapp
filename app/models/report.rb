class Report < ActiveRecord::Base
set_table_name "DIM_Reports"
#set_primary_key "Fimis_Identifier"
set_primary_key "Report_ID"

belongs_to :report_category, :foreign_key => "Report_Category_ID"

has_many :report_lines, :order => "position"

default_value_for :Record_Creator, 'Anonymous'
    attr_protected :Record_Creator

default_value_for :Record_Creation_Date do
	Time.now
  end
    attr_protected :Record_Creation_Date

searchable_by :name , :description

end
