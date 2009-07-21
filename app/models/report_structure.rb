class ReportStructure < ActiveRecord::Base
set_table_name "DIM_ReportStructure"
belongs_to :report_line, :foreign_key => "Report_Line_Id"
belongs_to :dim_account_plan, :foreign_key => "Account_Id"
end
