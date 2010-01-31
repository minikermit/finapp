class ReportStructure < ActiveRecord::Base
set_table_name "DIM_ReportStructure"
belongs_to :report_line, :foreign_key => "Report_Line_Id"
belongs_to :dim_account_plan, :foreign_key => "Account_Id"
end

# == Schema Information
#
# Table name: DIM_ReportStructure
#
#  Fimis_Identifier                :integer(8)      not null
#  Account_Id                      :integer(8)      not null
#  Report_Line_Id                  :string(50)
#  Include_In_Report               :integer(2)      default(1)
#  Record_Creation_Date            :datetime        not null
#  Record_Creator                  :string(50)      default("Toto"), not null
#  Record_Modification_Date        :datetime
#  Record_Modifier                 :string(50)
#  Record_Modification_Application :string(100)
#  Account_Description             :string(50)
#

