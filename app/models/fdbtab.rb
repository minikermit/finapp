class Fdbtab < ActiveRecord::Base
	set_table_name "FIMIS_TA_SRC_OLY_0_Nomenclatures_FDBTAB"
	
# ===============
# = CSV support =
# ===============
comma do # implicitly named :default

TBID
TBCODE
TBDES1

end

end
