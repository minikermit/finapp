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

# == Schema Information
#
# Table name: DIM_Reports
#
#  Fimis_Identifier                :integer(8)      not null
#  Report_ID                       :integer(4)      not null, primary key
#  Report_Name                     :string(50)      not null
#  Report_Category_ID              :integer(4)      not null
#  Comment                         :string(1000)
#  Record_Creation_Date            :datetime        not null
#  Record_Creator                  :string(50)      default("suser_sname() + '-' + user_name("), not null
#  Record_Modification_Date        :datetime
#  Record_Modifier                 :string(50)
#  Record_Modification_Application :string(100)
#  Record_Validity                 :boolean         default(TRUE), not null
#  Record_Visibility               :boolean         default(TRUE), not null
#  Order                           :integer(4)      default(0)
#

