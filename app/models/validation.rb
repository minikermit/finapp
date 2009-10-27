class Validation < ActiveRecord::Base
		set_table_name "B2TA_VAL_Error_Reports"
		
		belongs_to :validationrule, :foreign_key => 'ErrorKind'
		
end
