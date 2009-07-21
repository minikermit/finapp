class Scenario < ActiveRecord::Base
	set_table_name "DIM_Scenario"
	set_primary_key "Fimis_Identifier"
	validates_length_of :Category_Code, :maximum => 1
	validates_presence_of :Category_Code 
	validates_uniqueness_of :Category_Code, :message => " already exists although this code is meant to be unique !"


end


