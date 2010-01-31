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

# == Schema Information
#
# Table name: DIM_AccountPlan
#
#  FiMIS_Identifier          :integer(8)      not null, primary key
#  Account_Type_FK           :integer(8)      not null
#  Account_ID                :string(50)
#  Account_Short_Description :string(50)
#  Account_Description       :string(200)
#  Sequence_ID               :integer(4)
#  Account_Parent_ID         :string(50)
#  Parent_ID                 :integer(8)
#  Lock_Status               :boolean
#  Record_Creation_Date      :datetime        not null
#  Record_Creator            :string(50)      default("suser_sname() + '-' + user_name("), not null
#  Record_Modification_Date  :datetime
#  Record_Modifier           :string(50)
#  Group_Identifier          :string(50)
#  Entity_Identifier         :string(50)
#  Account_UO                :string(50)
#  ancestry                  :string(255)
#

