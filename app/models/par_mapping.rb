class ParMapping < ActiveRecord::Base
	set_table_name "PAR_Mapping"
	# set_primary_key "Fimis_Identifier"
	validates_presence_of :Group_Identifier, :Entity_Identifier, :Information_Mapped, :Source_code
	validates_inclusion_of :Group_Identifier, :in => %( Hapoalim Switzerland Ltd. ), :message => "Group Identifier is not correct !"
	validates_inclusion_of :Entity_Identifier, :in => %( Zurich Singapore Luxembourg ), :message => "Entity Identifier is not correct !"
	named_scope :valid, :conditions => { :Record_Validity => true }
end

# == Schema Information
#
# Table name: PAR_Mapping
#
#  id                      :integer(8)      not null, primary key
#  Group_Identifier        :string(50)
#  Entity_Identifier       :string(50)
#  Information_Mapped      :string(50)
#  Source_code             :string(50)
#  Dimension_Code          :string(50)
#  Dimension_description_1 :string(100)
#  Group_1                 :string(50)
#  Group_description_1     :string(100)
#  Group_2                 :string(50)
#  Group_description_2     :string(100)
#  Group_3                 :string(50)
#  Group_description_3     :string(100)
#  Validity_Start          :datetime        not null
#  Validity_End            :datetime        not null
#  Do_Not_Update           :boolean         not null
#  Record_Validity         :boolean
#  created_at              :datetime        not null
#  Record_Creator          :string(50)      not null
#  updated_at              :datetime
#  Record_Modifier         :string(50)
#

