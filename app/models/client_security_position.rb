class ClientSecurityPosition < ActiveRecord::Base
    set_table_name "SRC_ClientSecurityPositions"
	set_primary_key "id"
end

# == Schema Information
#
# Table name: SRC_ClientSecurityPositions
#
#  id                             :integer(8)      not null, primary key
#  Group_Identifier               :string(50)      not null
#  Entity_Identifier              :string(50)      not null
#  DownloadDate                   :datetime        not null
#  Client_Identifier              :string(50)      not null
#  Portfolio_Identifier           :string(50)      not null
#  Security_Identifier            :string(50)      not null
#  Security_Suffix                :string(50)      not null
#  Security_Custodian_Identifier  :string(50)      not null
#  Security_Custodian_Suffix      :string(50)      not null
#  Security_Currency              :string(50)      not null
#  Security_Quantity              :decimal(26, 8)  default(0.0), not null
#  Security_Net_Quantity          :decimal(26, 8)  default(0.0), not null
#  Security_Price                 :decimal(26, 8)  default(0.0), not null
#  Security_Local_Currency_Price  :decimal(26, 8)  default(0.0), not null
#  Security_Amount                :decimal(26, 8)  default(0.0), not null
#  Security_Local_Currency_Amount :decimal(26, 8)  default(0.0)
#  Value_Date                     :datetime
#  Source_Identifier              :string(50)      not null
#  Record_Creation_Date           :datetime        not null
#  Record_Creator                 :string(100)     default("suser_sname() + '-' + user_name("), not null
#  Record_Modification_Date       :datetime
#  Record_Modifier                :string(50)
#  Security_Revaluation_Frequency :integer(4)
#  Security_Quoted                :integer(4)
#  Source_Package                 :string(50)
#  Load_Date                      :string(50)
#

