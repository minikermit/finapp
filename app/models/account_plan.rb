class AccountPlan < ActiveRecord::Base
    
	set_table_name "DIM_AccountPlan"
  	set_primary_key "FiMIS_Identifier"
	
  	acts_as_tree :order => "account"
	
	has_many :Fimis_Identifiers, :class_name => "AccountPlan", 
		:foreign_key => "parent_id"
	belongs_to :parent_id, :class_name => "AccountPlan"
	
	validates_presence_of :Group_Identifier, :Entity_Identifier, :Account_ID
	validates_inclusion_of :Group_Identifier, :in => %( Hapoalim Switzerland Ltd. ), :message => " is not correct !"
	validates_inclusion_of :Entity_Identifier, :in => %( Zurich Singapore Luxembourg Generic), :message => " is not correct !"
	validates_uniqueness_of :Account_ID, :scope => :Account_Type_FK, :message => "must be unique within an account plan. This id already exists for the chosen account plan"
end
