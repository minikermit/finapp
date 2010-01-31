class ReportLine < ActiveRecord::Base
	set_table_name "DIM_ReportLines"
  	#set_primary_key "Fimis_Identifier"
  	set_primary_key "Line_Id"
	belongs_to :report, :foreign_key => 'Report_Id'
	has_many :dim_account_plans , :through => :report_structures
	
	acts_as_list :scope => :report
		
	searchable_by :report_id , :line_id , :name
end

# == Schema Information
#
# Table name: DIM_ReportLines
#
#  Fimis_Identifier                :integer(8)      not null
#  Report_Id                       :integer(4)      not null
#  Line_Id                         :string(50)      not null, primary key
#  Parent_Line_Id                  :string(50)
#  Line_Caption                    :string(50)
#  UO                              :string(1)
#  Order                           :integer(2)
#  Record_Validity                 :boolean         not null
#  Record_Visibility               :boolean         not null
#  Record_Creation_Date            :datetime        not null
#  Record_Creator                  :string(50)      default("Toto"), not null
#  Record_Modification_Date        :datetime
#  Record_Modifier                 :string(50)
#  Record_Modification_Application :string(100)
#  Line_Morphing                   :string(50)
#  Line_Style                      :integer(4)
#  position                        :integer(4)
#

