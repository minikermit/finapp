class Validationrule < ActiveRecord::Base
	#set table_name "B2TA_VAL_Validation_Rules"

  has_many :validations
	
  validates_length_of       :rule_scope,    :within => 3..15
  validates_uniqueness_of   :rule_identification
  validates_length_of       :rule_description,     :maximum => 200
  validates_length_of       :rule_hint,     :maximum => 500  
  validates_length_of       :rule_sql_query,    :within => 1..1000 
  validates_presence_of     :rule_identification


	
end
