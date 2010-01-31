class Scenario < ActiveRecord::Base
	set_table_name "DIM_Scenario"
	set_primary_key "Fimis_Identifier"
	validates_length_of :Category_Code, :maximum => 1
	validates_presence_of :Category_Code 
	validates_uniqueness_of :Category_Code, :message => " already exists although this code is meant to be unique !"


end



# == Schema Information
#
# Table name: DIM_Scenario
#
#  Fimis_Identifier         :integer(8)      not null, primary key
#  Category_Code            :string(50)      not null
#  Category_Name            :string(100)     not null
#  Record_Creation_Date     :datetime        not null
#  Record_Creator           :string(50)      default("Vincent"), not null
#  Record_Modification_Date :datetime
#  Record_Modifier          :string(50)
#

