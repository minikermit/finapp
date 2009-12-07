class Validation < ActiveRecord::Base

	set_table_name "B2TA_VAL_Error_Reports"
		
	belongs_to :validationrule
		
 	validates_uniqueness_of   :id
  	validates_length_of       :validationrule_id,     :within => 1..10
  	validates_length_of       :Recommendation,    :maximum => 100
  	validates_presence_of     :LoadDate
  	validates_presence_of     :Source_id		
  	validates_presence_of     :Entity_id
  	validates_presence_of     :validationrule_id
  	validates_presence_of     :ErrorType	
  	validates_presence_of     :OutputFile
  	validates_presence_of     :OutputField

end
