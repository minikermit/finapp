# This file is auto-generated from the current state of the database. Instead of editing this file, 
# please use the migrations feature of Active Record to incrementally modify your database, and
# then regenerate this schema definition.
#
# Note that this schema.rb definition is the authoritative source for your database schema. If you need
# to create the application database on another system, you should be using db:schema:load, not running
# all the migrations from scratch. The latter is a flawed and unsustainable approach (the more migrations
# you'll amass, the slower it'll run and the greater likelihood for issues).
#
# It's strongly recommended to check this file into your version control system.

ActiveRecord::Schema.define(:version => 20091205201040) do

  create_table "B2TA_ClosingRates", :force => true do |t|
    t.string   "Group_id",        :limit => 50
    t.string   "Entity_id",       :limit => 50
    t.datetime "Downloaddate"
    t.string   "Currency_Code",   :limit => 50
    t.string   "Currency_ISO",    :limit => 3
    t.float    "Currency_Rate",   :limit => nil
    t.boolean  "Record_Validity"
    t.datetime "Created_at"
    t.datetime "Updated_at"
    t.string   "Created_by",      :limit => 50
    t.string   "Updated_by",      :limit => 50
    t.string   "Created_with",    :limit => 100
    t.string   "Updated_with",    :limit => 100
  end

  create_table "B2TA_ENCRYPT1", :force => true do |t|
    t.string "haxis",    :limit => 1, :null => false
    t.string "vhaxis",   :limit => 1, :null => false
    t.string "Alphabet", :limit => 1, :null => false
  end

  create_table "B2TA_ENCRYPT2", :force => true do |t|
    t.string "haxis",    :limit => 1, :null => false
    t.string "vaxis",    :limit => 1, :null => false
    t.string "Alphabet", :limit => 1, :null => false
  end

  create_table "B2TA_ENCRYPT3", :force => true do |t|
    t.string "haxis",    :limit => 1, :null => false
    t.string "vaxis",    :limit => 1, :null => false
    t.string "Alphabet", :limit => 2, :null => false
  end

  create_table "B2TA_Encrypted", :force => true do |t|
    t.string "ClearID",      :limit => 50, :null => false
    t.string "EncryptedID1", :limit => 50, :null => false
    t.string "EncryptedID2", :limit => 50, :null => false
    t.string "EncryptedID3", :limit => 50
    t.string "EncryptedID4", :limit => 50
    t.string "entity_id",    :limit => 50
  end

  create_table "B2TA_VAL_Error_Reports", :force => true do |t|
    t.integer  "Original_id",    :limit => 8,   :null => false
    t.string   "LoadDate",       :limit => 10,  :null => false
    t.string   "Source_id",      :limit => 50,  :null => false
    t.string   "Entity_id",      :limit => 50,  :null => false
    t.string   "Client_id",      :limit => 50,  :null => false
    t.string   "Key_id",         :limit => 100, :null => false
    t.string   "OutputFile",     :limit => 50,  :null => false
    t.string   "OutputField",    :limit => 50,  :null => false
    t.string   "Source",         :limit => 50,  :null => false
    t.string   "Destination",    :limit => 50,  :null => false
    t.string   "ErrorType",      :limit => 50,  :null => false
    t.string   "ErrorKind",      :limit => 50,  :null => false
    t.string   "Recommendation", :limit => 100, :null => false
    t.datetime "created_at",                    :null => false
    t.datetime "updated_at",                    :null => false
  end

  create_table "B2TA_XPORT_Accounts", :force => true do |t|
    t.string   "Group_id",              :limit => 50, :null => false
    t.string   "Entity_id",             :limit => 50, :null => false
    t.string   "Source_id",             :limit => 50, :null => false
    t.datetime "DownloadDate",                        :null => false
    t.datetime "Record_Creation_Date",                :null => false
    t.string   "Record_Creator",        :limit => 50
    t.string   "Record_Application",    :limit => 50
    t.string   "Value_Month",           :limit => 7,  :null => false
    t.string   "Value_Date",            :limit => 10, :null => false
    t.string   "Executing_Date",        :limit => 10, :null => false
    t.string   "Type_of_record",        :limit => 10, :null => false
    t.string   "Bank_id",               :limit => 4,  :null => false
    t.string   "Branch_id",             :limit => 3,  :null => false
    t.string   "Account_id",            :limit => 50
    t.string   "Account_start_date",    :limit => 50
    t.string   "Account_address",       :limit => 50
    t.string   "Swift_address_account", :limit => 50
    t.string   "Domicile_code_account", :limit => 50
  end

  create_table "B2TA_XPORT_Counterparty", :force => true do |t|
    t.string   "Group_id",                 :limit => 50,                                                 :null => false
    t.string   "Entity_id",                :limit => 50,                                                 :null => false
    t.string   "Source_id",                :limit => 50,                                                 :null => false
    t.datetime "DownloadDate",                                                                           :null => false
    t.datetime "Record_Creation_Date",                                                                   :null => false
    t.string   "Record_Creator",           :limit => 50
    t.string   "Record_Application",       :limit => 50
    t.string   "Value_Month",              :limit => 7,                                                  :null => false
    t.string   "Value_Date",               :limit => 10,                                                 :null => false
    t.string   "Executing_Date",           :limit => 10,                                                 :null => false
    t.string   "Type_of_record",           :limit => 10,                                                 :null => false
    t.string   "Bank_id",                  :limit => 4,                                                  :null => false
    t.string   "Branch_id",                :limit => 3,                                                  :null => false
    t.string   "Count_CIF",                :limit => 50
    t.string   "Count_Group",              :limit => 15
    t.string   "Count_Group_Code",         :limit => 1
    t.string   "Count_Name",               :limit => 60
    t.string   "Count_Segment_BH",         :limit => 40
    t.string   "Count_Segment_Det",        :limit => 40
    t.string   "Count_Segment",            :limit => 40
    t.string   "Count_Legal",              :limit => 1
    t.string   "Count_Domicile",           :limit => 3
    t.string   "Count_Risk",               :limit => 3
    t.string   "Count_Org_BH",             :limit => 15
    t.string   "Count_Domicile_Dom",       :limit => 1
    t.string   "Count_Domicile_OECD",      :limit => 1
    t.string   "Count_Domicile_EEA",       :limit => 1
    t.decimal  "Count_Exp_Tot",                          :precision => 13, :scale => 2
    t.decimal  "Count_Prov",                             :precision => 13, :scale => 2
    t.string   "Count_Ref_Date",           :limit => 10,                                                 :null => false
    t.string   "Swift_Address",            :limit => 16
    t.string   "Swift_Address_Branch",     :limit => 16
    t.string   "Establish_Date",           :limit => 10
    t.string   "Global_Cif",               :limit => 16
    t.string   "Count_Segment_Code",       :limit => 3
    t.string   "Count_Sub_Segment_Code",   :limit => 3
    t.string   "Count_Sub_Segment_Det",    :limit => 60
    t.decimal  "Count_Income_Total_Local",               :precision => 13, :scale => 2, :default => 0.0
    t.decimal  "Count_Income_Total_NIS",                 :precision => 13, :scale => 2, :default => 0.0
    t.string   "Count_Code",               :limit => 2
    t.string   "Domicile_Branch_Code",     :limit => 3
  end

  create_table "B2TA_XPORT_Customer_Account", :force => true do |t|
    t.string   "Group_id",                      :limit => 50, :null => false
    t.string   "Entity_id",                     :limit => 50, :null => false
    t.string   "Source_id",                     :limit => 50, :null => false
    t.datetime "DownloadDate",                                :null => false
    t.datetime "created_at",                                  :null => false
    t.datetime "updated_at",                                  :null => false
    t.string   "Record_Creator",                :limit => 50
    t.string   "Record_Application",            :limit => 50
    t.string   "Value_Month",                   :limit => 7,  :null => false
    t.string   "Value_Date",                    :limit => 10, :null => false
    t.string   "Executing_Date",                :limit => 10, :null => false
    t.string   "Type_of_record",                :limit => 10, :null => false
    t.string   "Bank_id",                       :limit => 4,  :null => false
    t.string   "Branch_id",                     :limit => 3,  :null => false
    t.string   "Count_CIF",                     :limit => 15
    t.string   "Account_id",                    :limit => 10
    t.string   "Customer_account_legal_status", :limit => 1
    t.string   "Customer_account_start_date",   :limit => 10
  end

  create_table "B2TA_XPORT_External_Ratings", :force => true do |t|
    t.string   "Group_id",                     :limit => 50,                         :null => false
    t.string   "Entity_id",                    :limit => 50,                         :null => false
    t.string   "Source_id",                    :limit => 50,                         :null => false
    t.datetime "DownloadDate",                                                       :null => false
    t.datetime "Record_Creation_Date",                                               :null => false
    t.string   "Record_Creator",               :limit => 50
    t.string   "Record_Application",           :limit => 50
    t.string   "Value_Month",                  :limit => 7,                          :null => false
    t.string   "Value_Date",                   :limit => 10,                         :null => false
    t.string   "Executing_Date",               :limit => 10,                         :null => false
    t.string   "Type_of_record",               :limit => 10, :default => "EXT-RATE", :null => false
    t.string   "Bank_id",                      :limit => 4,                          :null => false
    t.string   "Branch_id",                    :limit => 3,                          :null => false
    t.string   "Count_CIF",                    :limit => 50
    t.string   "Count_Rating_int_cat",         :limit => 10
    t.string   "Count_Rating_ext",             :limit => 5
    t.string   "Count_Rating_Agency_ext_Code", :limit => 10
    t.string   "Count_Rating_Agency_ext",      :limit => 40
    t.string   "Count_Rating_DE_ext",          :limit => 1
    t.string   "Count_Rating_Dept_ext",        :limit => 40
    t.string   "Count_Rating_Term_ext",        :limit => 1
    t.string   "Count_Rating_LHA_ext",         :limit => 1
    t.datetime "Count_Ref_Date"
  end

  create_table "B2TA_XPORT_Limit", :force => true do |t|
    t.string   "Group_id",                      :limit => 50,                                                       :null => false
    t.string   "Entity_id",                     :limit => 50,                                                       :null => false
    t.string   "Source_id",                     :limit => 50,                                                       :null => false
    t.datetime "DownloadDate",                                                                                      :null => false
    t.datetime "Record_Creation_Date",                                                                              :null => false
    t.string   "Record_Creator",                :limit => 50
    t.string   "Record_Application",            :limit => 50
    t.string   "Value_Month",                   :limit => 7,                                                        :null => false
    t.string   "Value_Date",                    :limit => 10,                                                       :null => false
    t.string   "Executing_Date",                :limit => 10,                                                       :null => false
    t.string   "Type_of_record",                :limit => 10,                                  :default => "LIMIT", :null => false
    t.string   "Bank_id",                       :limit => 4,                                                        :null => false
    t.string   "Branch_id",                     :limit => 3,                                                        :null => false
    t.string   "Limit_nr",                      :limit => 20
    t.string   "Legacy_Acc_Subtype_Code",       :limit => 2
    t.string   "Account_id",                    :limit => 50
    t.string   "Count_CIF",                     :limit => 50
    t.string   "Limit_code",                    :limit => 4
    t.string   "Limit_Labeling",                :limit => 30
    t.decimal  "Limit_Nom",                                    :precision => 13, :scale => 2,  :default => 0.0
    t.string   "Limit_Curr",                    :limit => 3
    t.string   "Limit_Local_Currency",          :limit => 3
    t.decimal  "Limit_Local_Amount",                           :precision => 13, :scale => 2,  :default => 0.0
    t.decimal  "Limit_FX",                                     :precision => 18, :scale => 10, :default => 0.0
    t.decimal  "Limit_NIS",                                    :precision => 13, :scale => 2,  :default => 0.0
    t.string   "Limit_Start",                   :limit => 10
    t.string   "Limit_End",                     :limit => 10
    t.string   "Limit_Tenure",                  :limit => 5
    t.string   "Limit_Comm",                    :limit => 1
    t.string   "Limit_Comm_Resign",             :limit => 1
    t.string   "Limit_Ref_Date",                :limit => 10
    t.decimal  "Used_Credit_Limit_Amt",                        :precision => 13, :scale => 2,  :default => 0.0
    t.decimal  "Used_Credit_Limit_Amt_Local",                  :precision => 13, :scale => 2,  :default => 0.0
    t.decimal  "Used_Credit_Limit_Amt_NIS",                    :precision => 13, :scale => 2,  :default => 0.0
    t.decimal  "UnUsed_Credit_Limit_Amt",                      :precision => 13, :scale => 2,  :default => 0.0
    t.decimal  "UnUsed_Credit_Limit_Amt_NIS",                  :precision => 13, :scale => 2,  :default => 0.0
    t.decimal  "UnUsed_Credit_Limit_Amt_Local",                :precision => 13, :scale => 2,  :default => 0.0
    t.string   "Executing_Bank_Id",             :limit => 50
    t.string   "Trans_Segment_Code",            :limit => 3
    t.string   "Trans_Segment_Det",             :limit => 40
    t.string   "Trans_Sub_Segment_code",        :limit => 3
    t.string   "Trans_Sub_Segment_Det",         :limit => 40
    t.string   "Trans_Marking_Past_Due_Code",   :limit => 3
    t.string   "Trans_Marking_Past_Due_Det",    :limit => 100
    t.string   "Trans_Markings_Other_code",     :limit => 3
    t.string   "Trans_Markings_Other_Det",      :limit => 100
    t.integer  "Executing_Branch_Id",           :limit => 2
  end

  create_table "B2TA_XPORT_Loan_Book", :force => true do |t|
    t.string   "Group_id",                       :limit => 50,                                                           :null => false
    t.string   "Entity_id",                      :limit => 50,                                                           :null => false
    t.string   "Source_id",                      :limit => 50,                                                           :null => false
    t.datetime "DownloadDate",                                                                                           :null => false
    t.datetime "Record_Creation_Date",                                                                                   :null => false
    t.string   "Record_Creator",                 :limit => 50
    t.string   "Record_Application",             :limit => 50
    t.string   "Value_Month",                    :limit => 7,                                                            :null => false
    t.string   "Value_Date",                     :limit => 10,                                                           :null => false
    t.string   "Executing_Date",                 :limit => 10,                                                           :null => false
    t.string   "Type_of_record",                 :limit => 10,                                  :default => "LOAN-BOOK", :null => false
    t.string   "Bank_id",                        :limit => 4,                                                            :null => false
    t.string   "Branch_id",                      :limit => 3,                                                            :null => false
    t.string   "Trans_nr",                       :limit => 25
    t.string   "Count_CIF",                      :limit => 50
    t.string   "Legacy_System_Code",             :limit => 15
    t.string   "OnCall_Ind",                     :limit => 1
    t.string   "Legacy_Acc_Subtype_Code",        :limit => 3
    t.string   "Account_id",                     :limit => 50
    t.string   "Limit_Nr",                       :limit => 15
    t.string   "Trans_Code",                     :limit => 10
    t.string   "Trans_Text",                     :limit => 40
    t.string   "Trans_Balance_Sheet",            :limit => 3
    t.string   "Trans_Repo",                     :limit => 4
    t.decimal  "Trans_Nom",                                     :precision => 13, :scale => 2,  :default => 0.0
    t.string   "Trans_Cur",                      :limit => 3
    t.string   "Trans_Local_Currency",           :limit => 3
    t.decimal  "Trans_Local_Nom",                               :precision => 13, :scale => 2,  :default => 0.0
    t.decimal  "Trans_FX",                                      :precision => 18, :scale => 10, :default => 0.0
    t.decimal  "Trans_NIS",                                     :precision => 13, :scale => 2,  :default => 0.0
    t.string   "Trans_CCF_B1",                   :limit => 4,                                   :default => "0"
    t.string   "Trans_CCF_B2",                   :limit => 4,                                   :default => "0"
    t.decimal  "Trans_Credit_Equiv_B1",                         :precision => 13, :scale => 2,  :default => 0.0
    t.decimal  "Trans_Credit_Equiv_B2",                         :precision => 13, :scale => 2,  :default => 0.0
    t.string   "Trans_Start",                    :limit => 10,                                                           :null => false
    t.string   "Trans_End",                      :limit => 10,                                                           :null => false
    t.string   "Trans_Tenure",                   :limit => 5,                                                            :null => false
    t.string   "Trans_Tenure_ST",                :limit => 1,                                                            :null => false
    t.string   "Trans_Pastdue",                  :limit => 1,                                                            :null => false
    t.string   "Trans_Pastdue_date",             :limit => 10,                                                           :null => false
    t.string   "Trans_Ref_date",                 :limit => 10,                                                           :null => false
    t.string   "Gen_Ledger_Shekel_Item_Code",    :limit => 1,                                                            :null => false
    t.string   "Gen_Ledger_Item_Code",           :limit => 5,                                                            :null => false
    t.string   "Gen_Ledger_Item_Type",           :limit => 1,                                                            :null => false
    t.decimal  "Dlnqnt_Princpl",                                :precision => 13, :scale => 2
    t.decimal  "Dlnqnt_Interest_Amt",                           :precision => 13, :scale => 2
    t.decimal  "Dlnqnt_Linked_Amt",                             :precision => 13, :scale => 2
    t.decimal  "Dlnqnt_Linked_Interest_Amt",                    :precision => 13, :scale => 2
    t.decimal  "Accrued_Interest_Amt",                          :precision => 13, :scale => 2
    t.decimal  "Trans_Pastdue_amount",                          :precision => 13, :scale => 2
    t.decimal  "Total_Exposure",                                :precision => 13, :scale => 2
    t.decimal  "Total_Exposure_NIS",                            :precision => 13, :scale => 2
    t.decimal  "Prov_Amount",                                   :precision => 13, :scale => 2
    t.integer  "Trans_Tenure_Left"
    t.string   "Interest_Account_id",            :limit => 10
    t.string   "Linked_Princpl_Account_id",      :limit => 10
    t.string   "Linked_Interest_Account_id",     :limit => 10
    t.string   "Dlnqnt_Linked_Account_id",       :limit => 10
    t.decimal  "Linked_Princpl_Diff_Amt",                       :precision => 13, :scale => 2
    t.decimal  "Linked_Interest_Diff_Amt",                      :precision => 13, :scale => 2
    t.string   "Linkage_Base_Type_Code",         :limit => 2
    t.string   "Bal_Sheet_Major_Item_Code",      :limit => 3
    t.string   "Sec_Bal_Sheet_Item_Code",        :limit => 2
    t.string   "Major_Yield_Category",           :limit => 1
    t.string   "Sec_Yield_Category",             :limit => 1
    t.string   "Instrument_Responsibility_Code", :limit => 1
    t.string   "Detail_Type_Code",               :limit => 2
    t.string   "Sec_Linkage_Base_Type_Code",     :limit => 2
    t.string   "GI_Item_Type_Code",              :limit => 1
    t.string   "Balance_Sheet_Position_Code",    :limit => 1
    t.decimal  "Other_Amt",                                     :precision => 13, :scale => 2
    t.integer  "Executing_Bank_Id",              :limit => 2
    t.string   "Trans_Segment_Code",             :limit => 3
    t.string   "Trans_Segment_Det",              :limit => 40
    t.string   "Trans_Sub_Segment_code",         :limit => 3
    t.string   "Trans_Sub_Segment_Det",          :limit => 40
    t.string   "Trans_Marking_Past_Due_Code",    :limit => 3
    t.string   "Trans_Marking_Past_Due_Det",     :limit => 100
    t.string   "Trans_Markings_Other_code",      :limit => 3
    t.string   "Trans_Markings_Other_Det",       :limit => 100
    t.integer  "Executing_Branch_Id",            :limit => 2
  end

  create_table "B2TA_XPORT_Loan_Book_CashOnHand", :force => true do |t|
    t.string   "Group_id",                       :limit => 50,                                                           :null => false
    t.string   "Entity_id",                      :limit => 50,                                                           :null => false
    t.string   "Source_id",                      :limit => 50,                                                           :null => false
    t.datetime "DownloadDate",                                                                                           :null => false
    t.datetime "Record_Creation_Date",                                                                                   :null => false
    t.string   "Record_Creator",                 :limit => 50
    t.string   "Record_Application",             :limit => 50
    t.string   "Value_Month",                    :limit => 7,                                                            :null => false
    t.string   "Value_Date",                     :limit => 10,                                                           :null => false
    t.string   "Executing_Date",                 :limit => 10,                                                           :null => false
    t.string   "Type_of_record",                 :limit => 10,                                  :default => "LOAN-BOOK", :null => false
    t.string   "Bank_id",                        :limit => 4,                                                            :null => false
    t.string   "Branch_id",                      :limit => 3,                                                            :null => false
    t.string   "Trans_nr",                       :limit => 25
    t.string   "Count_CIF",                      :limit => 50
    t.string   "Legacy_System_Code",             :limit => 15
    t.string   "OnCall_Ind",                     :limit => 1
    t.string   "Legacy_Acc_Subtype_Code",        :limit => 3
    t.string   "Account_id",                     :limit => 50
    t.string   "Limit_Nr",                       :limit => 15
    t.string   "Trans_Code",                     :limit => 10
    t.string   "Trans_Text",                     :limit => 40
    t.string   "Trans_Balance_Sheet",            :limit => 3
    t.string   "Trans_Repo",                     :limit => 4
    t.decimal  "Trans_Nom",                                     :precision => 13, :scale => 2,  :default => 0.0
    t.string   "Trans_Cur",                      :limit => 3
    t.string   "Trans_Local_Currency",           :limit => 3
    t.decimal  "Trans_Local_Nom",                               :precision => 13, :scale => 2,  :default => 0.0
    t.decimal  "Trans_FX",                                      :precision => 18, :scale => 10, :default => 0.0
    t.decimal  "Trans_NIS",                                     :precision => 13, :scale => 2,  :default => 0.0
    t.string   "Trans_CCF_B1",                   :limit => 4,                                   :default => "0"
    t.string   "Trans_CCF_B2",                   :limit => 4,                                   :default => "0"
    t.decimal  "Trans_Credit_Equiv_B1",                         :precision => 13, :scale => 2,  :default => 0.0
    t.decimal  "Trans_Credit_Equiv_B2",                         :precision => 13, :scale => 2,  :default => 0.0
    t.string   "Trans_Start",                    :limit => 10,                                                           :null => false
    t.string   "Trans_End",                      :limit => 10,                                                           :null => false
    t.string   "Trans_Tenure",                   :limit => 5,                                                            :null => false
    t.string   "Trans_Tenure_ST",                :limit => 1,                                                            :null => false
    t.string   "Trans_Pastdue",                  :limit => 1,                                                            :null => false
    t.string   "Trans_Pastdue_date",             :limit => 10,                                                           :null => false
    t.string   "Trans_Ref_date",                 :limit => 10,                                                           :null => false
    t.string   "Gen_Ledger_Shekel_Item_Code",    :limit => 1,                                                            :null => false
    t.string   "Gen_Ledger_Item_Code",           :limit => 5,                                                            :null => false
    t.string   "Gen_Ledger_Item_Type",           :limit => 1,                                                            :null => false
    t.decimal  "Dlnqnt_Princpl",                                :precision => 13, :scale => 2
    t.decimal  "Dlnqnt_Interest_Amt",                           :precision => 13, :scale => 2
    t.decimal  "Dlnqnt_Linked_Amt",                             :precision => 13, :scale => 2
    t.decimal  "Dlnqnt_Linked_Interest_Amt",                    :precision => 13, :scale => 2
    t.decimal  "Accrued_Interest_Amt",                          :precision => 13, :scale => 2
    t.decimal  "Trans_Pastdue_amount",                          :precision => 13, :scale => 2
    t.decimal  "Total_Exposure",                                :precision => 13, :scale => 2
    t.decimal  "Total_Exposure_NIS",                            :precision => 13, :scale => 2
    t.decimal  "Prov_Amount",                                   :precision => 13, :scale => 2
    t.string   "Trans_Tenure_Left",              :limit => 10
    t.string   "Interest_Account_id",            :limit => 10
    t.string   "Linked_Princpl_Account_id",      :limit => 10
    t.string   "Linked_Interest_Account_id",     :limit => 10
    t.string   "Dlnqnt_Linked_Account_id",       :limit => 10
    t.decimal  "Linked_Princpl_Diff_Amt",                       :precision => 13, :scale => 2
    t.decimal  "Linked_Interest_Diff_Amt",                      :precision => 13, :scale => 2
    t.string   "Linkage_Base_Type_Code",         :limit => 2
    t.string   "Bal_Sheet_Major_Item_Code",      :limit => 3
    t.string   "Sec_Bal_Sheet_Item_Code",        :limit => 2
    t.string   "Major_Yield_Category",           :limit => 1
    t.string   "Sec_Yield_Category",             :limit => 1
    t.string   "Instrument_Responsibility_Code", :limit => 1
    t.string   "Detail_Type_Code",               :limit => 2
    t.string   "Sec_Linkage_Base_Type_Code",     :limit => 2
    t.string   "GI_Item_Type_Code",              :limit => 1
    t.string   "Balance_Sheet_Position_Code",    :limit => 1
    t.decimal  "Other_Amt",                                     :precision => 13, :scale => 2
    t.integer  "Executing_Bank_Id",              :limit => 2
    t.string   "Trans_Segment_Code",             :limit => 3
    t.string   "Trans_Segment_Det",              :limit => 40
    t.string   "Trans_Sub_Segment_code",         :limit => 3
    t.string   "Trans_Sub_Segment_Det",          :limit => 40
    t.string   "Trans_Marking_Past_Due_Code",    :limit => 3
    t.string   "Trans_Marking_Past_Due_Det",     :limit => 100
    t.string   "Trans_Markings_Other_code",      :limit => 3
    t.string   "Trans_Markings_Other_Det",       :limit => 100
    t.integer  "Executing_Branch_Id",            :limit => 2
  end

  create_table "B2TA_XPORT_Mortgage_Collaterals", :force => true do |t|
    t.string   "Group_id",                    :limit => 50,                                                  :null => false
    t.string   "Entity_id",                   :limit => 50,                                                  :null => false
    t.string   "Source_id",                   :limit => 50,                                                  :null => false
    t.datetime "DownloadDate",                                                                               :null => false
    t.datetime "Record_Creation_Date",                                                                       :null => false
    t.string   "Record_Creator",              :limit => 50
    t.string   "Record_Application",          :limit => 50
    t.string   "Value_Month",                 :limit => 7,                                                   :null => false
    t.string   "Value_Date",                  :limit => 10,                                                  :null => false
    t.string   "Executing_Date",              :limit => 10,                                                  :null => false
    t.string   "Type_of_record",              :limit => 10,                                                  :null => false
    t.string   "Bank_id",                     :limit => 4,                                                   :null => false
    t.string   "Branch_id",                   :limit => 3,                                                   :null => false
    t.string   "Callat_mortg_Nr",             :limit => 15
    t.string   "Limit_nr",                    :limit => 15
    t.string   "Count_Nr",                    :limit => 50
    t.string   "Collateral_Nr",               :limit => 15
    t.decimal  "Callat_mortg_Nom",                          :precision => 13, :scale => 2
    t.string   "Callat_mortg_Curr",           :limit => 3
    t.string   "Callat_mortg_Local_Currency", :limit => 3
    t.decimal  "Callat_mortg_Local_Nom",                    :precision => 13, :scale => 2
    t.decimal  "Callat_mortg_FX",                           :precision => 18, :scale => 10
    t.decimal  "Callat_mortg_NIS",                          :precision => 13, :scale => 2
    t.decimal  "Collat_Mortg_Local",                        :precision => 13, :scale => 2
    t.decimal  "Collat_Mortg_NIS",                          :precision => 13, :scale => 2
    t.string   "Collat_Mortg_3rd_Indic",      :limit => 1
    t.decimal  "Collat_Mortg_3rd_Amt",                      :precision => 13, :scale => 2
    t.string   "Collat_Mortg_3rd_Rank",       :limit => 1
    t.string   "Collat_Mortg_Prop",           :limit => 1
    t.string   "Collat_Mortg_Prop_Occ",       :limit => 1
    t.string   "Collat_Mortg_Enforc",         :limit => 1
    t.string   "Collat_Mortg_Owner",          :limit => 1
    t.string   "Collat_Mortg_Own_CIF",        :limit => 15
    t.decimal  "Collat_Mortg_LTV_Int",                      :precision => 18, :scale => 10
    t.decimal  "Callat_Mortg_Prop_Val_Orig",                :precision => 13, :scale => 2
    t.string   "Callat_Mortg_Prop_Curr",      :limit => 3
    t.decimal  "Callat_Mortg_Prop_Val_local",               :precision => 13, :scale => 2
    t.decimal  "Callat_Mortg_Prop_FX",                      :precision => 18, :scale => 10
    t.decimal  "Callat_Mortg_Prop_Val_NIS",                 :precision => 13, :scale => 2
    t.datetime "Callat_Mortg_Prop_Dat"
    t.string   "Collat_Mortg_Landreg",        :limit => 1
    t.string   "Collat_Mortg_Warn",           :limit => 1
    t.string   "Collat_Mortg_Rights",         :limit => 1
    t.string   "Collat_Mortg_Other",          :limit => 1
    t.datetime "Collat_Mortg_Ref_Date"
    t.string   "Insurance_Comp_Nr",           :limit => 15
    t.string   "Insurance_Type_Code",         :limit => 1
    t.string   "Insurance_Enforc",            :limit => 1
    t.decimal  "Insurance_Amount_Local",                    :precision => 13, :scale => 2,  :default => 0.0
    t.decimal  "Insurance_Amount_NIS",                      :precision => 13, :scale => 2
    t.datetime "Insurance_Start"
    t.datetime "Insurance_End"
    t.integer  "Executing_Bank_Id",           :limit => 2
    t.string   "Second_Lien_Ind",             :limit => 1
    t.integer  "Executing_Branch_Id",         :limit => 2
  end

  create_table "B2TA_XPORT_Mortgage_Loans_Subloans", :force => true do |t|
    t.string   "Group_id",                     :limit => 50,                                  :null => false
    t.string   "Entity_id",                    :limit => 50,                                  :null => false
    t.string   "Source_id",                    :limit => 50,                                  :null => false
    t.datetime "DownloadDate",                                                                :null => false
    t.datetime "Record_Creation_Date",                                                        :null => false
    t.string   "Record_Creator",               :limit => 50
    t.string   "Record_Application",           :limit => 50
    t.string   "Value_Month",                  :limit => 7,                                   :null => false
    t.string   "Value_Date",                   :limit => 10,                                  :null => false
    t.string   "Executing_Date",               :limit => 10,                                  :null => false
    t.string   "Type_of_record",               :limit => 10,                                  :null => false
    t.string   "Bank_id",                      :limit => 4,                                   :null => false
    t.string   "Branch_id",                    :limit => 3,                                   :null => false
    t.string   "Trans_Nr",                     :limit => 15
    t.string   "Collateral_Nr",                :limit => 15
    t.string   "Account_id",                   :limit => 10
    t.string   "Count_CIF",                    :limit => 50
    t.string   "Limit_nr",                     :limit => 15
    t.string   "Trans_Code",                   :limit => 10
    t.string   "Trans_Text",                   :limit => 40
    t.decimal  "Trans_Mortg_LTV_Int",                         :precision => 13, :scale => 2
    t.decimal  "Orig_Loan_Amt",                               :precision => 13, :scale => 2
    t.decimal  "Asset_Val",                                   :precision => 13, :scale => 2
    t.decimal  "Trans_Nom",                                   :precision => 13, :scale => 2
    t.string   "Trans_Curr",                   :limit => 3
    t.decimal  "Trans_Local_Currency",                        :precision => 13, :scale => 2
    t.decimal  "Trans_Local_Nom",                             :precision => 13, :scale => 2
    t.decimal  "Trans_Fx",                                    :precision => 18, :scale => 10
    t.decimal  "Trans_NIS",                                   :precision => 13, :scale => 2
    t.datetime "Trans_Start"
    t.datetime "Trans_End"
    t.integer  "Trans_Tenure"
    t.string   "Tansas_Tenure_ST",             :limit => 1
    t.string   "Trans_Pastdue",                :limit => 1
    t.datetime "Trans_Pastdue_Date"
    t.datetime "Trans_Ref_Date"
    t.string   "Gen_Ledger_Shekel_Item_Code",  :limit => 1
    t.string   "Gen_Ledger_Item_Code",         :limit => 5
    t.string   "Gen_Ledger_Item_Type",         :limit => 1
    t.decimal  "Total_Exposure",                              :precision => 13, :scale => 2
    t.decimal  "Total_Exposure_NIS",                          :precision => 13, :scale => 2
    t.decimal  "Dlnqnt_Princpl",                              :precision => 13, :scale => 2
    t.decimal  "Dlnqnt_Interest_Amt",                         :precision => 13, :scale => 2
    t.decimal  "Dlnqnt_Linked_Amt",                           :precision => 13, :scale => 2
    t.decimal  "Dlnqnt_Linked_Interest_Amt",                  :precision => 13, :scale => 2
    t.decimal  "Dlnqnt_Accrued_Interest",                     :precision => 13, :scale => 2
    t.decimal  "Linked_Princpl_Diff_Amt",                     :precision => 13, :scale => 2
    t.decimal  "Linked_Interest_Diff_Amt",                    :precision => 13, :scale => 2
    t.decimal  "Other_Amt",                                   :precision => 13, :scale => 2
    t.integer  "Executing_Bank_Id",            :limit => 2
    t.string   "Trans_Segment_Code",           :limit => 3
    t.string   "Trans_Segment_Det",            :limit => 40
    t.string   "Trans_Sub_Segment_code",       :limit => 3
    t.string   "Trans_Sub_Segment_Det",        :limit => 40
    t.string   "Trans_Markings_Past_Due_code", :limit => 3
    t.string   "Trans_Markings_Past_Due_Det",  :limit => 100
    t.string   "Trans_Markings_Other_code",    :limit => 3
    t.string   "Trans_Markings_Other_Det",     :limit => 100
    t.string   "Mortgage_Purpose_Det",         :limit => 100
    t.string   "Mortgage_Purpose_Code",        :limit => 3
    t.integer  "Executing_Branch_Id",          :limit => 2
  end

  create_table "B2TA_XPORT_Nostro", :force => true do |t|
    t.string   "Group_id",                    :limit => 50,                                                        :null => false
    t.string   "Entity_id",                   :limit => 50,                                                        :null => false
    t.string   "Source_id",                   :limit => 50,                                                        :null => false
    t.datetime "DownloadDate",                                                                                     :null => false
    t.datetime "Record_Creation_Date",                                                                             :null => false
    t.string   "Record_Creator",              :limit => 50
    t.string   "Record_Application",          :limit => 50
    t.string   "Value_Month",                 :limit => 7,                                                         :null => false
    t.string   "Value_Date",                  :limit => 10,                                                        :null => false
    t.string   "Executing_Date",              :limit => 10,                                                        :null => false
    t.string   "Type_of_record",              :limit => 10,                                  :default => "NOSTRO", :null => false
    t.string   "Bank_id",                     :limit => 4,                                                         :null => false
    t.string   "Branch_id",                   :limit => 3,                                                         :null => false
    t.string   "Trans_nr",                    :limit => 15
    t.string   "Trans_Code",                  :limit => 10
    t.string   "Trans_Text",                  :limit => 40
    t.string   "Trans_TB",                    :limit => 1
    t.string   "Trans_ID_int",                :limit => 15,                                                        :null => false
    t.string   "Trans_ID_ext",                :limit => 15,                                                        :null => false
    t.string   "Trans_ID_Text",               :limit => 20
    t.string   "Trans_ID_Bsk",                :limit => 1
    t.string   "Trans_CIF",                   :limit => 50
    t.string   "Trans_Name",                  :limit => 40
    t.string   "Trans_Domicile",              :limit => 3
    t.decimal  "Trans_Nom",                                  :precision => 13, :scale => 2,  :default => 0.0
    t.decimal  "Trans_Local_Nom",                            :precision => 13, :scale => 2,  :default => 0.0
    t.integer  "Trans_Unit"
    t.decimal  "Trans_Value",                                :precision => 13, :scale => 2
    t.decimal  "Trans_Nom_Calc",                             :precision => 13, :scale => 2
    t.string   "Trans_Cur",                   :limit => 3
    t.string   "Trans_Local_Currency",        :limit => 3
    t.decimal  "Trans_FX",                                   :precision => 18, :scale => 10, :default => 0.0
    t.decimal  "Trans_NIS",                                  :precision => 13, :scale => 2,  :default => 0.0
    t.string   "Trans_Start",                 :limit => 10,                                                        :null => false
    t.string   "Trans_End",                   :limit => 10,                                                        :null => false
    t.string   "Trans_Tenure",                :limit => 5,                                                         :null => false
    t.string   "Trans_Pastdue",               :limit => 1,                                                         :null => false
    t.string   "Trans_Pastdue_date",          :limit => 10,                                                        :null => false
    t.string   "Trans_Ref_date",              :limit => 10,                                                        :null => false
    t.string   "Count_Rating_ext_1",          :limit => 5,                                                         :null => false
    t.string   "Count_Rating_Agency_ext_1",   :limit => 15,                                                        :null => false
    t.string   "Count_Rating_DE_ext_1",       :limit => 1,                                                         :null => false
    t.string   "Count_Rating_Dept_ext_1",     :limit => 40,                                                        :null => false
    t.string   "Count_Rating_Term_ext_1",     :limit => 1,                                                         :null => false
    t.string   "Count_Rating_LHA_ext_1",      :limit => 1,                                                         :null => false
    t.string   "Account_id",                  :limit => 10
    t.string   "Gen_Ledger_Shekel_Item_Code", :limit => 1,                                                         :null => false
    t.string   "Gen_Ledger_Item_Code",        :limit => 5,                                                         :null => false
    t.string   "Gen_Ledger_Item_Type",        :limit => 1,                                                         :null => false
    t.string   "Gen_Ledger_Activity_Type",    :limit => 1,                                                         :null => false
    t.string   "Legacy_System_Code",          :limit => 15
    t.integer  "Executing_Bank_Id",           :limit => 2
    t.string   "Trans_Segment_Code",          :limit => 3
    t.string   "Trans_Segment_Det",           :limit => 40
    t.string   "Trans_Sub_Segment_code",      :limit => 3
    t.string   "Trans_Sub_Segment_Det",       :limit => 40
    t.string   "Trans_Marking_Past_Due_code", :limit => 3
    t.string   "Trans_Marking_Past_Due_Det",  :limit => 100
    t.string   "Trans_Marking_Other_code",    :limit => 3
    t.string   "Trans_Markings_Other_Det",    :limit => 100
    t.integer  "Executing_Branch_Id",         :limit => 2
  end

  create_table "B2TA_XPORT_OTC_Derivatives", :force => true do |t|
    t.string   "Group_id",                    :limit => 50,                                                                                  :null => false
    t.string   "Entity_id",                   :limit => 50,                                                                                  :null => false
    t.string   "Source_id",                   :limit => 50,                                                                                  :null => false
    t.datetime "DownloadDate",                                                                                                               :null => false
    t.datetime "Record_Creation_Date",                                                                                                       :null => false
    t.string   "Record_Creator",              :limit => 50,                                  :default => "suser_sname() + '-' + user_name("
    t.string   "Record_Application",          :limit => 50,                                  :default => "app_name("
    t.string   "Value_Month",                 :limit => 7,                                                                                   :null => false
    t.string   "Value_Date",                  :limit => 10,                                                                                  :null => false
    t.string   "Executing_Date",              :limit => 10,                                                                                  :null => false
    t.string   "Type_of_record",              :limit => 10,                                  :default => "OTC",                              :null => false
    t.string   "Bank_id",                     :limit => 4,                                                                                   :null => false
    t.string   "Branch_id",                   :limit => 3,                                                                                   :null => false
    t.string   "Trans_nr",                    :limit => 15
    t.string   "Count_CIF",                   :limit => 50
    t.string   "Limit_nr",                    :limit => 15
    t.string   "Trans_Code",                  :limit => 10
    t.string   "Trans_Text",                  :limit => 40
    t.string   "Trans_LS",                    :limit => 5
    t.string   "Trans_Nostro",                :limit => 1
    t.string   "Trans_Nostro_TB",             :limit => 1
    t.string   "Trans_Underl_ID_int",         :limit => 15
    t.string   "Trans_Underl_ID_ext",         :limit => 15
    t.string   "Trans_Underl_ID_Ind",         :limit => 1
    t.string   "Trans_Underl_ID_Bsk",         :limit => 1
    t.string   "Trans_Underl_ID_Text",        :limit => 40
    t.string   "Trans_Underl_Categ",          :limit => 40
    t.string   "Trans_Underl_Def",            :limit => 40
    t.string   "Trans_Underl_CIF",            :limit => 15
    t.string   "Trans_Underl_Name",           :limit => 40
    t.string   "Trans_Underl_Domicile",       :limit => 3
    t.string   "Trans_Underl_Start",          :limit => 10
    t.string   "Trans_Underl_End",            :limit => 10
    t.string   "Trans_Underl_Tenure",         :limit => 5
    t.decimal  "Trans_Underl_Nom",                           :precision => 13, :scale => 2,  :default => 0.0
    t.integer  "Trans_Underl_Unit",           :limit => nil, :precision => 18, :scale => 0,  :default => 0
    t.decimal  "Trans_Underl_Value_Con",                     :precision => 13, :scale => 2,  :default => 0.0
    t.decimal  "Trans_Underl_Nom_Calc",                      :precision => 13, :scale => 2,  :default => 0.0
    t.string   "Trans_Underl_Curr",           :limit => 3
    t.string   "Trans_Underl_Local_Curr",     :limit => 3
    t.decimal  "Trans_Underl_Local_Nom",                     :precision => 13, :scale => 2,  :default => 0.0
    t.decimal  "Trans_Underl_FX",                            :precision => 18, :scale => 10, :default => 0.0
    t.decimal  "Trans_Underl_NIS",                           :precision => 13, :scale => 2,  :default => 0.0
    t.decimal  "Trans_Value_Mar",                            :precision => 13, :scale => 2,  :default => 0.0
    t.decimal  "Trans_Value_Mod",                            :precision => 13, :scale => 2,  :default => 0.0
    t.string   "Trans_Curr",                  :limit => 3
    t.string   "Trans_Local_Curr",            :limit => 3
    t.decimal  "Trans_Value_Local_Mar",                      :precision => 13, :scale => 2,  :default => 0.0
    t.decimal  "Trans_Value_Local_Mod",                      :precision => 13, :scale => 2,  :default => 0.0
    t.decimal  "Trans_FX",                                   :precision => 18, :scale => 10, :default => 0.0
    t.decimal  "Trans_NIS",                                  :precision => 13, :scale => 2,  :default => 0.0
    t.string   "Trans_Addon_B1",              :limit => 4,                                   :default => "0"
    t.decimal  "Trans_Addon_Am_B1",                          :precision => 13, :scale => 2,  :default => 0.0
    t.string   "Trans_Addon_B2",              :limit => 4,                                   :default => "0"
    t.decimal  "Trans_Addon_Am_B2",                          :precision => 13, :scale => 2,  :default => 0.0
    t.string   "Trans_Start",                 :limit => 10
    t.string   "Trans_End",                   :limit => 10
    t.string   "Trans_Tenure",                :limit => 5
    t.string   "Trans_Tenure_ST",             :limit => 1
    t.string   "Trans_Start_Spec",            :limit => 10
    t.string   "Trans_End_Spec",              :limit => 10
    t.string   "Trans_Tenure_Spec",           :limit => 5
    t.string   "Trans_Tenure_Spec_ST",        :limit => 1
    t.string   "Trans_Ref_Date",              :limit => 10
    t.string   "Account_ID",                  :limit => 50
    t.string   "Gen_Ledger_Item_Code",        :limit => 1
    t.string   "Gen_Ledger_Item_Type",        :limit => 5
    t.string   "Gen_Shekel_Item_Code",        :limit => 1
    t.string   "Linkage_Base_Type_Code",      :limit => 2
    t.string   "Bal_Sheet_Major_Code",        :limit => 3
    t.string   "Sec_Bal_Sheet_Item_Code",     :limit => 1
    t.string   "Major_Yield_Category",        :limit => 2
    t.string   "Sec_Yield_Category",          :limit => 1
    t.string   "Responsibility_Code",         :limit => 1
    t.string   "Detail_Type_Code",            :limit => 2
    t.string   "Sec_Linkage_Base_Code",       :limit => 2
    t.string   "GL_Item_Type_Code",           :limit => 1
    t.string   "Bal_Sheet_Position_Code",     :limit => 1
    t.string   "Purch_Sell_Type_Code",        :limit => 1
    t.string   "Contract_Status_Type_Code",   :limit => 1
    t.integer  "Trans_Tenure_Left"
    t.integer  "Executing_Bank_Id",           :limit => 2
    t.string   "Trans_Segment_Code",          :limit => 10
    t.string   "Trans_Segment_Det",           :limit => 40
    t.string   "Trans_Sub_Segment_code",      :limit => 3
    t.string   "Trans_Sub_Segment_Det",       :limit => 40
    t.string   "Trans_Marking_Past_Due_code", :limit => 3
    t.string   "Trans_Marking_Past_Due_Det",  :limit => 100
    t.string   "Trans_Markings_Other_code",   :limit => 3
    t.string   "Trans_Markings_Other_Det",    :limit => 100
    t.integer  "Executing_Branch_Id",         :limit => 2
  end

  create_table "B2TA_XPORT_Provisions", :force => true do |t|
    t.string   "Group_id",                :limit => 50,                                                           :null => false
    t.string   "Entity_id",               :limit => 50,                                                           :null => false
    t.string   "Source_id",               :limit => 50,                                                           :null => false
    t.datetime "DownloadDate",                                                                                    :null => false
    t.datetime "Record_Creation_Date",                                                                            :null => false
    t.string   "Record_Creator",          :limit => 50
    t.string   "Record_Application",      :limit => 50
    t.string   "Value_Month",             :limit => 7,                                                            :null => false
    t.string   "Value_Date",              :limit => 10,                                                           :null => false
    t.string   "Executing_Date",          :limit => 10,                                                           :null => false
    t.string   "Type_of_record",          :limit => 10,                                 :default => "PROVISIONS", :null => false
    t.string   "Bank_id",                 :limit => 4,                                                            :null => false
    t.string   "Branch_id",               :limit => 3,                                                            :null => false
    t.string   "Trans_nr",                :limit => 15
    t.string   "Count_CIF",               :limit => 50
    t.decimal  "Prov_Amount",                           :precision => 13, :scale => 2,  :default => 0.0
    t.decimal  "Prov_Amount_Local",                     :precision => 13, :scale => 2,  :default => 0.0
    t.decimal  "Prov_Amt_Pincpl",                       :precision => 13, :scale => 2,  :default => 0.0
    t.decimal  "Prov_Amt_Pincpl_Local",                 :precision => 13, :scale => 2,  :default => 0.0
    t.decimal  "Prov_Amt_Interest",                     :precision => 13, :scale => 2,  :default => 0.0
    t.decimal  "Prov_Amt_Interest_Local",               :precision => 13, :scale => 2,  :default => 0.0
    t.string   "Prov_Curr",               :limit => 3
    t.string   "Prov_Local_Currency",     :limit => 3
    t.decimal  "Prov_FX",                               :precision => 18, :scale => 10, :default => 0.0
    t.decimal  "Prov_Amount_NIS",                       :precision => 13, :scale => 2,  :default => 0.0
    t.decimal  "Prov_Amount_Gross",                     :precision => 13, :scale => 2,  :default => 0.0
    t.decimal  "Prov_Collateral",                       :precision => 13, :scale => 2,  :default => 0.0
    t.decimal  "Prov_Amount_Net",                       :precision => 13, :scale => 2,  :default => 0.0
    t.string   "Prov_Date_First",         :limit => 10
    t.string   "Prov_Date_Last",          :limit => 10
    t.string   "Prov_Pastdue",            :limit => 1
    t.string   "Prov_Pastdue_Date",       :limit => 10
    t.string   "Prov_Bad_Debt",           :limit => 1
    t.string   "Prov_Doubtful_Debt",      :limit => 1
    t.string   "Prov_Debt_Restr",         :limit => 1
    t.string   "Prov_Debt_Restr_WI",      :limit => 1
    t.string   "Prov_Special_Terms",      :limit => 1
    t.string   "Prov_Debt_Arrears",       :limit => 1
    t.string   "Prov_Debt_Temp_Arr",      :limit => 1
    t.string   "Prov_Debt_Not_Acc_Inc",   :limit => 1
    t.string   "Prov_Debt_Und_Spec_Sup",  :limit => 1
    t.string   "Prov_Problem_Debt",       :limit => 1
    t.string   "Prov_Ref_Date",           :limit => 10
    t.string   "Prov_Account_id",         :limit => 10
    t.decimal  "Prov_SNG",                              :precision => 13, :scale => 2,  :default => 0.0
    t.decimal  "Prov_SNG_Local",                        :precision => 13, :scale => 2,  :default => 0.0
    t.decimal  "Prov_SNG_NIS",                          :precision => 13, :scale => 2,  :default => 0.0
    t.integer  "Executing_Bank_Id",       :limit => 2
    t.integer  "Executing_Branch_Id",     :limit => 2
  end

  create_table "DIM_ACUDBU", :id => false, :force => true do |t|
    t.integer "ACUDBU_pk",                :null => false
    t.string  "ACUDBU_Code", :limit => 7, :null => false
    t.string  "ACUDBU_Text", :limit => 3, :null => false
  end

  create_table "DIM_AccountPlan", :primary_key => "FiMIS_Identifier", :force => true do |t|
    t.integer  "Account_Type_FK",           :limit => 8,                                                   :null => false
    t.string   "Account_ID",                :limit => 50
    t.string   "Account_Short_Description", :limit => 50
    t.string   "Account_Description",       :limit => 200
    t.integer  "Sequence_ID"
    t.string   "Account_Parent_ID",         :limit => 50
    t.integer  "Parent_ID",                 :limit => 8
    t.boolean  "Lock_Status"
    t.datetime "Record_Creation_Date",                                                                     :null => false
    t.string   "Record_Creator",            :limit => 50,  :default => "suser_sname() + '-' + user_name(", :null => false
    t.datetime "Record_Modification_Date"
    t.string   "Record_Modifier",           :limit => 50
    t.string   "Group_Identifier",          :limit => 50
    t.string   "Entity_Identifier",         :limit => 50
    t.string   "Account_UO",                :limit => 50
  end

  create_table "DIM_AccountPlanType", :id => false, :force => true do |t|
    t.integer "Account_Plan_Type_Identifier",    :limit => 8,   :null => false
    t.integer "Account_Plan_Type_ID",            :limit => 8,   :null => false
    t.string  "Account_Plan_Type_Name",          :limit => 50
    t.string  "Account_Plan_Type_Description",   :limit => 50
    t.string  "Account_Plan_Type_Description_2", :limit => 100
  end

  create_table "DIM_Asset_Size", :primary_key => "Asset_Size_pk", :force => true do |t|
    t.integer "Asset_Size_From",               :default => 0,   :null => false
    t.integer "Asset_Size_To",                 :default => 0,   :null => false
    t.string  "Asset_Size_Text", :limit => 50, :default => "-", :null => false
  end

  create_table "DIM_Audit", :primary_key => "Audit_pk", :force => true do |t|
    t.integer "Load_Date",                    :null => false
    t.string  "Load_Process",   :limit => 50, :null => false
    t.string  "Load_Server",    :limit => 50, :null => false
    t.string  "Source_System",  :limit => 50, :null => false
    t.integer "Outcome_Status",               :null => false
  end

  create_table "DIM_Client", :primary_key => "FIMIS_Identifier", :force => true do |t|
    t.string   "Client_Identifier",             :limit => 50,                              :null => false
    t.string   "Client_Name",                   :limit => 50,                              :null => false
    t.string   "Client_type",                   :limit => 50,                              :null => false
    t.string   "Client_Type_Description",       :limit => 100,                             :null => false
    t.string   "Client_kind",                   :limit => 50,                              :null => false
    t.string   "Client_Kind_Description",       :limit => 100,                             :null => false
    t.string   "Client_SNB_Sector_ID",          :limit => 50,                              :null => false
    t.string   "Client_SNB_Sector_Description", :limit => 100,                             :null => false
    t.datetime "Record_Creation_Date",                                                     :null => false
    t.string   "Record_Creator",                :limit => 100, :default => "suser_sname(", :null => false
    t.datetime "Record_Modification_Date"
    t.string   "Record_Modifier",               :limit => 100
  end

  create_table "DIM_ClientType", :id => false, :force => true do |t|
    t.integer "ClientType_pk",                      :null => false
    t.string  "ClientTypeCode",       :limit => 1
    t.string  "ClientType_Text",      :limit => 50
    t.integer "ClientTypeGroup"
    t.string  "ClientTypeGroup_Text", :limit => 50
  end

  create_table "DIM_Consolidation", :id => false, :force => true do |t|
    t.integer  "Fimis_Identifier",                :limit => 8,   :null => false
    t.string   "Consolidation_Code",              :limit => 50
    t.string   "Counterparty_Consolidation_Code", :limit => 50
    t.string   "Territorial_level",               :limit => 50
    t.string   "Statutory_level",                 :limit => 50
    t.string   "Consolidated_level",              :limit => 50
    t.string   "Gross_level",                     :limit => 50
    t.datetime "Record_Creation_Date",                           :null => false
    t.string   "Record_Creator",                  :limit => 50,  :null => false
    t.string   "Record_Creation_Application",     :limit => 100, :null => false
    t.datetime "Record_Modification_Date"
    t.string   "Record_Modifier",                 :limit => 50
    t.string   "Record_Modification_Application", :limit => 100
  end

  create_table "DIM_Currency", :id => false, :force => true do |t|
    t.integer  "Fimis_Identifier",             :limit => 8,                                  :null => false
    t.string   "Currency_Identifier",          :limit => 50,                                 :null => false
    t.string   "Currency_Iso_Code",            :limit => 10
    t.string   "Currency_Description",         :limit => 100,                                :null => false
    t.string   "Currency_Telekurs_Code",       :limit => 50,                                 :null => false
    t.string   "Currency_Other_Code",          :limit => 50,                                 :null => false
    t.string   "Currency_Country",             :limit => 50,                                 :null => false
    t.decimal  "Currency_Factor",                             :precision => 18, :scale => 8, :null => false
    t.datetime "Record_Creation_Date",                                                       :null => false
    t.string   "Record_Creator",               :limit => 100,                                :null => false
    t.datetime "Record_Modification_Date"
    t.string   "Record_Modifier",              :limit => 100
    t.string   "Currency_Group_1",             :limit => 50
    t.string   "Currency_Group_Description_1", :limit => 50
    t.string   "Currency_Group_2",             :limit => 50
    t.string   "Currency_Group_Description_2", :limit => 50
    t.string   "Currency_Group_3",             :limit => 50
    t.string   "Currency_Group_Description_3", :limit => 50
    t.string   "Entity_Identifier",            :limit => 50
  end

  create_table "DIM_CurrencyPair", :id => false, :force => true do |t|
    t.integer "CurrencyPair_pk",                      :null => false
    t.string  "CurrencyPair",           :limit => 6,  :null => false
    t.integer "CurrencyPairType"
    t.integer "CurrencyPairGroup",                    :null => false
    t.string  "CurrencyPairGroup_Text", :limit => 50, :null => false
  end

  create_table "DIM_Date", :primary_key => "Fimis_Identifier", :force => true do |t|
    t.datetime "Date",                               :null => false
    t.string   "Day",                  :limit => 10, :null => false
    t.boolean  "Business_day_flag",                  :null => false
    t.integer  "Week_Identifier",                    :null => false
    t.integer  "Weekday_Identifier",                 :null => false
    t.string   "Weekday_Description",  :limit => 50, :null => false
    t.boolean  "Week_Lastday_flag",                  :null => false
    t.integer  "Month_Identifier",                   :null => false
    t.string   "Month_Description",    :limit => 50, :null => false
    t.boolean  "Month_Lastday_flag",                 :null => false
    t.integer  "Quarter_Identifier",                 :null => false
    t.string   "Quarter_Description1", :limit => 50, :null => false
    t.string   "Quarter_Description2", :limit => 50, :null => false
    t.boolean  "Quarter_Lastday_flag",               :null => false
    t.integer  "Year_Identifier",                    :null => false
    t.string   "Year_Description",     :limit => 50, :null => false
    t.boolean  "Year_Lastday_flag",                  :null => false
  end

  create_table "DIM_Demography", :id => false, :force => true do |t|
    t.integer  "Fimis_Identifier",         :limit => 8,   :null => false
    t.integer  "Age",                                     :null => false
    t.string   "Type",                     :limit => 50,  :null => false
    t.string   "Type_Description",         :limit => 100, :null => false
    t.string   "Range_Code",               :limit => 50,  :null => false
    t.string   "Range_Description",        :limit => 100, :null => false
    t.datetime "Record_Creation_date",                    :null => false
    t.string   "Record_Creator",           :limit => 100, :null => false
    t.datetime "Record_Modification_Date"
    t.string   "Record_Modifier",          :limit => 100
  end

  create_table "DIM_Element", :id => false, :force => true do |t|
    t.integer  "FIMIS_Identifier",            :limit => 8,   :null => false
    t.string   "Asset_manager",               :limit => 50,  :null => false
    t.string   "Asset_Manager_Name",          :limit => 100, :null => false
    t.string   "Portfolio_manager",           :limit => 50,  :null => false
    t.string   "Portfolio_Manager_Name",      :limit => 100, :null => false
    t.string   "Relationship_Manager",        :limit => 50,  :null => false
    t.string   "Relationship_Manager_Name",   :limit => 50,  :null => false
    t.string   "Agent",                       :limit => 50,  :null => false
    t.string   "Agent_Name",                  :limit => 100, :null => false
    t.string   "External_Asset_manager",      :limit => 50,  :null => false
    t.string   "External_Asset_Manager_Name", :limit => 100, :null => false
    t.string   "Substitute",                  :limit => 50,  :null => false
    t.string   "Substitute_Name",             :limit => 100, :null => false
    t.datetime "Record_Creation_Date",                       :null => false
    t.string   "Record_Creator",              :limit => 100, :null => false
    t.datetime "Record_Modification_Date"
    t.string   "Record_Modifier",             :limit => 100
  end

  create_table "DIM_Geography", :id => false, :force => true do |t|
    t.integer  "Fimis_Identifier",         :limit => 8,   :null => false
    t.string   "Continent",                :limit => 50,  :null => false
    t.string   "Continent_Description",    :limit => 100, :null => false
    t.string   "Zone",                     :limit => 50,  :null => false
    t.string   "Zone_Description",         :limit => 100, :null => false
    t.string   "Market_Zone",              :limit => 50,  :null => false
    t.string   "Market_Zone_Description",  :limit => 100, :null => false
    t.string   "Country_ISO",              :limit => 50,  :null => false
    t.string   "Country_Source_Code",      :limit => 50,  :null => false
    t.string   "Country_Description",      :limit => 100, :null => false
    t.string   "Nationality",              :limit => 50,  :null => false
    t.datetime "Record_Creation_date",                    :null => false
    t.string   "Record_Creator",           :limit => 100, :null => false
    t.datetime "Record_Modification_Date"
    t.string   "Record_Modifier",          :limit => 100
  end

  create_table "DIM_Group_Membership", :id => false, :force => true do |t|
    t.integer "DIM_Group_pk",                            :null => false
    t.integer "DIM_Group_Membership",                    :null => false
    t.string  "DIM_Group_Membership_Text", :limit => 50
    t.integer "DIM_Group_Level",                         :null => false
    t.string  "DIM_Group_Level_Text",      :limit => 50, :null => false
  end

  create_table "DIM_Keys", :primary_key => "ID", :force => true do |t|
    t.string   "Group_Identifier",         :limit => 50
    t.string   "Entity_Identifier",        :limit => 50
    t.datetime "DownloadDate"
    t.string   "Source_Identifier",        :limit => 50
    t.datetime "Record_Creation_Date"
    t.string   "Record_Creator",           :limit => 50, :default => "suser_sname() + '-' + user_name("
    t.datetime "Record_Modification_Date"
    t.string   "Record_Modifier",          :limit => 50
  end

  create_table "DIM_Position_Type", :id => false, :force => true do |t|
    t.integer  "Fimis_Identifier",          :limit => 8,   :null => false
    t.string   "Position_Type",             :limit => 50,  :null => false
    t.string   "Position_Type_Description", :limit => 100, :null => false
    t.datetime "Record_Creation_Date"
    t.string   "Record_Creator",            :limit => 50
    t.datetime "Record_Modification_Date"
    t.string   "Record_Modifier",           :limit => 50
  end

  create_table "DIM_Product", :primary_key => "FiMIS_Identifier", :force => true do |t|
    t.string   "Product_GroupBy_1",        :limit => 50,                   :null => false
    t.string   "Product_GroupBy_1_name",   :limit => 100,                  :null => false
    t.string   "Product_GroupBy_2",        :limit => 50,                   :null => false
    t.string   "Product_GroupBy_2_name",   :limit => 100,                  :null => false
    t.string   "Product_GroupBy_3",        :limit => 50,                   :null => false
    t.string   "Product_GroupBy_3_name",   :limit => 100,                  :null => false
    t.string   "Product_Type",             :limit => 50,                   :null => false
    t.string   "Product_type_name",        :limit => 100,                  :null => false
    t.string   "Product_Kind",             :limit => 50,                   :null => false
    t.string   "Product_Kind_Name",        :limit => 100,                  :null => false
    t.integer  "DIM_Aggregate",            :limit => 8,                    :null => false
    t.datetime "Record_Creation_Date",                                     :null => false
    t.string   "Record_creator",           :limit => 100, :default => "V", :null => false
    t.datetime "Record_modification_date"
    t.string   "Record_modifier",          :limit => 100
  end

  create_table "DIM_Product_Category", :id => false, :force => true do |t|
    t.integer  "FiMIS_Identifier",         :limit => 8,   :null => false
    t.string   "Product_Group_1",          :limit => 50,  :null => false
    t.string   "Product_Group_1_name",     :limit => 100, :null => false
    t.string   "Product_Group_2",          :limit => 50,  :null => false
    t.string   "Product_Group_2_name",     :limit => 100, :null => false
    t.string   "Product_Group_3",          :limit => 50,  :null => false
    t.string   "Product_Group_3_name",     :limit => 100, :null => false
    t.string   "Product_Group_4",          :limit => 50,  :null => false
    t.string   "Product_Group_4_name",     :limit => 100, :null => false
    t.string   "Product_Group_5",          :limit => 50,  :null => false
    t.string   "Product_Group_5_name",     :limit => 100, :null => false
    t.string   "Product_Type",             :limit => 50,  :null => false
    t.string   "Product_type_name",        :limit => 100, :null => false
    t.string   "Product_Kind",             :limit => 50,  :null => false
    t.string   "Product_Kind_Name",        :limit => 100, :null => false
    t.datetime "Record_Creation_Date",                    :null => false
    t.string   "Record_creator",           :limit => 100, :null => false
    t.datetime "Record_modification_date"
    t.string   "Record_modifier",          :limit => 100
  end

  create_table "DIM_ReportLine_Style", :id => false, :force => true do |t|
    t.integer  "Fimis_Identifier",         :limit => 8,  :null => false
    t.string   "Style_Name",               :limit => 50
    t.integer  "Font",                                   :null => false
    t.integer  "Font_Size",                              :null => false
    t.integer  "Font_Style",                             :null => false
    t.integer  "Color",                                  :null => false
    t.integer  "Underline",                              :null => false
    t.boolean  "Suppress",                               :null => false
    t.boolean  "Suppress_If_Zero",                       :null => false
    t.integer  "C1_N_Of_Dec",                            :null => false
    t.integer  "C1_Aff_format",                          :null => false
    t.string   "C1_Sym_Mon",               :limit => 3
    t.integer  "C2_N_Of_Dec",                            :null => false
    t.integer  "C2_Aff_format",                          :null => false
    t.string   "C2_Sym_Mon",               :limit => 50
    t.integer  "C3_N_Of_Dec",                            :null => false
    t.integer  "C3_Aff_format",                          :null => false
    t.string   "C3_Sym_Mon",               :limit => 3
    t.integer  "C4_N_Of_Dec",                            :null => false
    t.integer  "C4_Aff_format",                          :null => false
    t.string   "C4_Sym_Mon",               :limit => 3
    t.integer  "C5_N_Of_Dec",                            :null => false
    t.integer  "C5_Aff_format",                          :null => false
    t.string   "C5_Sym_Mon",               :limit => 3
    t.integer  "C6_N_Of_Dec",                            :null => false
    t.integer  "C6_Aff_format",                          :null => false
    t.string   "C6_Sym_Mon",               :limit => 3
    t.integer  "Type_Of_Line",                           :null => false
    t.integer  "Text_Cad",                               :null => false
    t.integer  "Text_moveforward",                       :null => false
    t.datetime "Record_Creation_Date",                   :null => false
    t.string   "Record_Creator",           :limit => 50, :null => false
    t.datetime "Record_Modification_Date"
    t.string   "Record_Modifier",          :limit => 50
  end

  create_table "DIM_ReportLines", :primary_key => "Fimis_Identifier", :force => true do |t|
    t.integer  "Report_Id",                                                          :null => false
    t.string   "Line_Id",                         :limit => 50,                      :null => false
    t.string   "Parent_Line_Id",                  :limit => 50
    t.string   "Line_Caption",                    :limit => 50
    t.string   "UO",                              :limit => 1
    t.integer  "Order",                           :limit => 2
    t.boolean  "Record_Validity",                                                    :null => false
    t.boolean  "Record_Visibility",                                                  :null => false
    t.datetime "Record_Creation_Date",                                               :null => false
    t.string   "Record_Creator",                  :limit => 50,  :default => "Toto", :null => false
    t.datetime "Record_Modification_Date"
    t.string   "Record_Modifier",                 :limit => 50
    t.string   "Record_Modification_Application", :limit => 100
    t.string   "Line_Morphing",                   :limit => 50
    t.integer  "Line_Style"
    t.integer  "position"
  end

  create_table "DIM_ReportStructure", :primary_key => "Fimis_Identifier", :force => true do |t|
    t.integer  "Account_Id",                      :limit => 8,                       :null => false
    t.string   "Report_Line_Id",                  :limit => 50
    t.integer  "Include_In_Report",               :limit => 2,   :default => 1
    t.datetime "Record_Creation_Date",                                               :null => false
    t.string   "Record_Creator",                  :limit => 50,  :default => "Toto", :null => false
    t.datetime "Record_Modification_Date"
    t.string   "Record_Modifier",                 :limit => 50
    t.string   "Record_Modification_Application", :limit => 100
    t.string   "Account_Description",             :limit => 50
  end

  create_table "DIM_Report_Categories", :id => false, :force => true do |t|
    t.integer  "Fimis_Identifier",                :limit => 8,                           :null => false
    t.integer  "Report_Category_ID",                                                     :null => false
    t.string   "Category_Type",                   :limit => 50,                          :null => false
    t.string   "Category_Type_Description",       :limit => 100
    t.string   "Category_Kind",                   :limit => 50,                          :null => false
    t.string   "Category_Kind_Description",       :limit => 100
    t.string   "Comment",                         :limit => 1000
    t.datetime "Record_Creation_Date",                                                   :null => false
    t.string   "Record_Creator",                  :limit => 50,   :default => "Vincent", :null => false
    t.datetime "Record_Modification_Date"
    t.string   "Record_Modifier",                 :limit => 50
    t.string   "Record_Modification_Application", :limit => 100
    t.boolean  "Record_Validity",                                                        :null => false
    t.boolean  "Record_Visibility",                                                      :null => false
    t.integer  "position"
  end

  create_table "DIM_Reports", :primary_key => "Fimis_Identifier", :force => true do |t|
    t.integer  "Report_ID",                                                                                       :null => false
    t.string   "Report_Name",                     :limit => 50,                                                   :null => false
    t.integer  "Report_Category_ID",                                                                              :null => false
    t.string   "Comment",                         :limit => 1000
    t.datetime "Record_Creation_Date",                                                                            :null => false
    t.string   "Record_Creator",                  :limit => 50,   :default => "suser_sname() + '-' + user_name(", :null => false
    t.datetime "Record_Modification_Date"
    t.string   "Record_Modifier",                 :limit => 50
    t.string   "Record_Modification_Application", :limit => 100
    t.boolean  "Record_Validity",                                 :default => true,                               :null => false
    t.boolean  "Record_Visibility",                               :default => true,                               :null => false
    t.integer  "Order",                                           :default => 0
  end

  create_table "DIM_Residency", :primary_key => "Resident_pk", :force => true do |t|
    t.string  "Resident_Code",        :limit => 3,                     :null => false
    t.boolean "Resident_Status",                    :default => false, :null => false
    t.string  "Resident_Status_Text", :limit => 50
    t.string  "Resident_Sub_Status",  :limit => 50
  end

  create_table "DIM_Scenario", :id => false, :force => true do |t|
    t.integer  "Fimis_Identifier",         :limit => 8,                          :null => false
    t.string   "Category_Code",            :limit => 50,                         :null => false
    t.string   "Category_Name",            :limit => 100,                        :null => false
    t.datetime "Record_Creation_Date",                                           :null => false
    t.string   "Record_Creator",           :limit => 50,  :default => "Vincent", :null => false
    t.datetime "Record_Modification_Date"
    t.string   "Record_Modifier",          :limit => 50
  end

  create_table "DIM_Source", :primary_key => "Fimis_Identifier", :force => true do |t|
    t.string "Source_Name",        :limit => 50, :null => false
    t.string "Source_Description", :limit => 50, :null => false
    t.string "Source_Frequency",   :limit => 50, :null => false
  end

  create_table "DIM_Source_Package", :primary_key => "Fimis_Identifier", :force => true do |t|
    t.string "Source_Package_Name",        :limit => 50, :null => false
    t.string "Source_Package_Description", :limit => 50, :null => false
  end

  create_table "DIM_Structure", :primary_key => "Fimis_Identifier", :force => true do |t|
    t.string "Group_Identifier",     :limit => 50, :null => false
    t.string "Entity_Identifier",    :limit => 50, :null => false
    t.string "Division_Identifier",  :limit => 50, :null => false
    t.string "Division_Description", :limit => 50
  end

  create_table "DIM_TimeBand", :primary_key => "Fimis_identifier", :force => true do |t|
    t.integer  "Number_of_Days",                                                     :null => false
    t.string   "TimeBand1",                :limit => 50,                             :null => false
    t.integer  "TimeBand1_Order"
    t.string   "TimeBand2",                :limit => 50
    t.string   "TimeBand3",                :limit => 50
    t.string   "TimeBand4",                :limit => 50
    t.string   "TimeBand5",                :limit => 50
    t.datetime "Record_Creation_Date",                                               :null => false
    t.string   "Record_Creator",           :limit => 50, :default => "suser_sname(", :null => false
    t.datetime "Record_Modification_Date"
    t.string   "Record_Modifier",          :limit => 50
  end

  create_table "FAC_Client_Summary", :force => true do |t|
    t.integer  "client_id",           :limit => 8,                    :null => false
    t.integer  "structure_id",        :limit => 8,                    :null => false
    t.integer  "source_id",           :limit => 8,                    :null => false
    t.integer  "date_id",             :limit => 8,                    :null => false
    t.decimal  "limit_LCY",                          :default => 0.0, :null => false
    t.decimal  "unused_limit_LCY",                   :default => 0.0, :null => false
    t.decimal  "pledge_given_LCY",                   :default => 0.0, :null => false
    t.decimal  "pledge_received_LCY",                                 :null => false
    t.decimal  "position_LCY",                       :default => 0.0, :null => false
    t.decimal  "collaterals_LCY",                    :default => 0.0, :null => false
    t.datetime "created_at",                                          :null => false
    t.datetime "updated_at"
    t.string   "created_by",          :limit => 50
    t.string   "updated_by",          :limit => 50
    t.string   "created_with",        :limit => 100
    t.string   "updated_with",        :limit => 100
    t.integer  "record_validity",     :limit => 8
    t.integer  "key_id",              :limit => 8
  end

  add_index "FAC_Client_Summary", ["client_id", "date_id", "source_id", "structure_id"], :name => "IX_FAC_Client_Summary", :unique => true

  create_table "FAC_GL_Positions", :primary_key => "FIMIS_Identifier", :force => true do |t|
    t.integer  "DIM_GL_Key",                      :limit => 8
    t.integer  "DIM_ReportingDate_Key",           :limit => 8
    t.integer  "DIM_Structure_Key",               :limit => 8
    t.integer  "DIM_Source_Key",                  :limit => 8
    t.integer  "DIM_Currency_Key",                :limit => 8
    t.integer  "DIM_Scenario_Key",                :limit => 8
    t.integer  "DIM_Risk_Domicile_Key",           :limit => 8
    t.integer  "DIM_Consolidation_Key",           :limit => 8
    t.integer  "DIM_ACUDBU_Key",                  :limit => 8
    t.integer  "DIM_Resident_Key",                :limit => 8
    t.decimal  "CCY_Amount",                                     :precision => 28, :scale => 6
    t.decimal  "ECY_Amount",                                     :precision => 28, :scale => 6
    t.decimal  "GCY_Amount",                                     :precision => 28, :scale => 6
    t.decimal  "CCY_Amount2",                                    :precision => 28, :scale => 6
    t.decimal  "ECY_Amount2",                                    :precision => 28, :scale => 6
    t.decimal  "GCY_Amount2",                                    :precision => 28, :scale => 6
    t.decimal  "CCY_Amount3",                                    :precision => 28, :scale => 6
    t.decimal  "ECY_Amount3",                                    :precision => 28, :scale => 6
    t.decimal  "GCY_Amount3",                                    :precision => 28, :scale => 6
    t.decimal  "CCY_Amount4",                                    :precision => 28, :scale => 6
    t.decimal  "ECY_Amount4",                                    :precision => 28, :scale => 6
    t.decimal  "GCY_Amount4",                                    :precision => 28, :scale => 6
    t.decimal  "CCY_Amount5",                                    :precision => 28, :scale => 6
    t.decimal  "ECY_Amount5",                                    :precision => 28, :scale => 6
    t.decimal  "GCY_Amount5",                                    :precision => 28, :scale => 6
    t.decimal  "CCY_Amount6",                                    :precision => 28, :scale => 6
    t.decimal  "ECY_Amount6",                                    :precision => 28, :scale => 6
    t.decimal  "GCY_Amount6",                                    :precision => 28, :scale => 6
    t.datetime "Record_Creation_Date"
    t.string   "Record_Creator",                  :limit => 50,                                 :default => "suser_sname("
    t.datetime "Record_Modification_Date"
    t.string   "Record_Modifier",                 :limit => 50
    t.string   "Record_Modification_Application", :limit => 100
  end

  create_table "FAC_Limits", :force => true do |t|
    t.integer  "date_id",            :limit => 8,                     :null => false
    t.integer  "client_id",          :limit => 8,                     :null => false
    t.integer  "source_id",          :limit => 8,                     :null => false
    t.integer  "structure_id",       :limit => 8,                     :null => false
    t.string   "limit_type_id",      :limit => 3,                     :null => false
    t.integer  "currency_id",        :limit => 8,                     :null => false
    t.decimal  "amount_CCY",                        :default => 0.0,  :null => false
    t.decimal  "amount_LCY",                        :default => 0.0,  :null => false
    t.decimal  "unused_portion_LCY",                :default => 0.0,  :null => false
    t.datetime "created_at",                                          :null => false
    t.datetime "updated_at"
    t.string   "created_by",         :limit => 50
    t.string   "updated_by",         :limit => 50
    t.string   "created_with",       :limit => 100
    t.string   "updated_with",       :limit => 100
    t.boolean  "record_validity",                   :default => true
    t.integer  "key_id",             :limit => 8
  end

  create_table "FAC_Pledges", :force => true do |t|
    t.integer  "date_id",           :limit => 8,                     :null => false
    t.integer  "client_id",         :limit => 8,                     :null => false
    t.integer  "source_id",         :limit => 8,                     :null => false
    t.integer  "structure_id",      :limit => 8,                     :null => false
    t.integer  "pledge_giver_id",   :limit => 8,                     :null => false
    t.integer  "currency_id",       :limit => 8,                     :null => false
    t.decimal  "pledge_amount_CCY",               :default => 0.0,   :null => false
    t.decimal  "pledge_amount_LCY",               :default => 0.0,   :null => false
    t.boolean  "limited",                         :default => true
    t.boolean  "self_priority",                   :default => false
    t.datetime "created_at",                                         :null => false
    t.datetime "updated_at"
    t.string   "created_by",        :limit => 50
    t.string   "updated_by",        :limit => 50
    t.string   "created_with",      :limit => 50
    t.string   "updated_with",      :limit => 50
    t.boolean  "record_validity",                 :default => true
    t.integer  "key_id",            :limit => 8
  end

  create_table "FAC_Positions", :primary_key => "Fimis_Identifier", :force => true do |t|
    t.string   "DIM_Position_Identifier",            :limit => 50
    t.integer  "DIM_Client_Key",                     :limit => 8
    t.integer  "DIM_Organization_Key",               :limit => 8
    t.integer  "DIM_Date_Key",                       :limit => 8
    t.integer  "DIM_Source_Key",                     :limit => 8
    t.integer  "DIM_Maturity_Date_Key",              :limit => 8
    t.integer  "DIM_Asset_Management_Key",           :limit => 8
    t.integer  "DIM_Currency_Key",                   :limit => 8
    t.integer  "DIM_TimeBand_Key",                   :limit => 8
    t.integer  "DIM_Position_Type_Key",              :limit => 8
    t.integer  "DIM_Product_Key",                    :limit => 8
    t.integer  "DIM_Status_Key",                     :limit => 8
    t.integer  "DIM_Account_Plan_Key",               :limit => 8
    t.integer  "DIM_Scenario_Key",                   :limit => 8
    t.integer  "DIM_Category_Client_Key",            :limit => 8
    t.integer  "DIM_Demography_Key",                 :limit => 8
    t.integer  "DIM_Risk_Domicile_Key",              :limit => 8
    t.integer  "DIM_Legal_Domicile_Key",             :limit => 8
    t.integer  "DIM_Audit",                          :limit => 8
    t.integer  "DIM_ACUDBU_Key",                     :limit => 8
    t.integer  "DIM_Resident_Key",                   :limit => 8
    t.integer  "DIM_GroupMembership_Key"
    t.integer  "DIM_Asset_Size_Key",                 :limit => 8,                                  :default => 7
    t.decimal  "Position_Amount",                                   :precision => 26, :scale => 8
    t.decimal  "Position_Local_Currency_Amount",                    :precision => 26, :scale => 8
    t.decimal  "Position_Group_Currency_Amount",                    :precision => 26, :scale => 8
    t.decimal  "Position_Exchange_Rate",                            :precision => 10, :scale => 6
    t.integer  "Position_Currency_Factor",           :limit => nil, :precision => 18, :scale => 0
    t.integer  "DIM_Consolidation_Key",              :limit => 8
    t.integer  "DIM_Structure_Key",                  :limit => 8
    t.integer  "DIM_Original_Identifier",            :limit => 8
    t.integer  "DIM_Account_Plan_Type_Key",          :limit => 8
    t.decimal  "Position_Amount_MTD",                               :precision => 26, :scale => 8
    t.decimal  "Position_Local_Currency_Amount_MTD",                :precision => 26, :scale => 8
    t.decimal  "Position_Group_Currency_Amount_MTD",                :precision => 26, :scale => 8
    t.datetime "Record_Creation_Date"
    t.string   "Record_Creator",                     :limit => 50,                                 :default => "suser_sname("
    t.datetime "Record_Modification_Date"
    t.string   "Record_Modifier",                    :limit => 50
    t.integer  "DIM_GroupID_Key",                    :limit => 8,                                  :default => 9999
  end

  create_table "FIMIS_TA_SRC_OLY_0_Nomenclatures_FDBNUM", :id => false, :force => true do |t|
    t.string   "NUNIV",                :limit => 1,  :null => false
    t.string   "NURACI",               :limit => 7,  :null => false
    t.string   "NUGRE",                :limit => 3,  :null => false
    t.string   "NURUB",                :limit => 3,  :null => false
    t.string   "NUMON",                :limit => 3,  :null => false
    t.string   "NUTYPE",               :limit => 3,  :null => false
    t.string   "NUREFE",               :limit => 25, :null => false
    t.string   "NUETAT",               :limit => 1,  :null => false
    t.string   "NUMFIL",               :limit => 34, :null => false
    t.string   "fimis_status",         :limit => 1
    t.string   "Group_Identifier",     :limit => 50
    t.string   "Entity_Identifier",    :limit => 50
    t.string   "Source_Identifier",    :limit => 50
    t.datetime "Record_Creation_Date"
    t.string   "Source_Package",       :limit => 50
  end

  create_table "FIMIS_TA_SRC_OLY_0_Nomenclatures_FDBTAB", :force => true do |t|
    t.string   "TBID",                 :limit => 3,                                 :null => false
    t.string   "TBCODE",               :limit => 14,                                :null => false
    t.string   "TBETAT",               :limit => 1,                                 :null => false
    t.string   "TBDTOU",               :limit => 6,                                 :null => false
    t.string   "TBDTMU",               :limit => 6,                                 :null => false
    t.string   "TBOPRN",               :limit => 7,                                 :null => false
    t.string   "TBDES1",               :limit => 35,                                :null => false
    t.string   "TBDES2",               :limit => 35,                                :null => false
    t.string   "TBDES3",               :limit => 35,                                :null => false
    t.string   "TBDES4",               :limit => 35,                                :null => false
    t.string   "TBCOMP",               :limit => 73,                                :null => false
    t.integer  "TBNBRM",               :limit => nil, :precision => 6, :scale => 0
    t.string   "fimis_status",         :limit => 1
    t.string   "Group_Identifier",     :limit => 50
    t.string   "Entity_Identifier",    :limit => 50
    t.string   "Source_Identifier",    :limit => 50
    t.datetime "Record_Creation_Date"
    t.string   "Source_Package",       :limit => 50
  end

  create_table "FIMIS_TA_SRC_OLY_C_Clients_FDBCLI", :force => true do |t|
    t.string   "CLRACI",               :limit => 7
    t.string   "CLETAT",               :limit => 1
    t.string   "CLDTOU",               :limit => 8
    t.string   "CLDTMU",               :limit => 8
    t.string   "CLDTAN",               :limit => 8
    t.integer  "CLNBRM",               :limit => nil, :precision => 3, :scale => 0
    t.string   "CLOPRN",               :limit => 7
    t.string   "CLGRPE",               :limit => 7
    t.string   "CLAGNT",               :limit => 7
    t.string   "CLCENT",               :limit => 7
    t.string   "CLGERA",               :limit => 7
    t.string   "CLETCV",               :limit => 1
    t.string   "CLNOM",                :limit => 35
    t.string   "CLPRNM",               :limit => 35
    t.string   "CLORIG",               :limit => 35
    t.string   "CLTYPE",               :limit => 1
    t.string   "CLNOMC",               :limit => 25
    t.string   "CLDTNA",               :limit => 8
    t.string   "CLDTDC",               :limit => 8
    t.string   "CLSRCD",               :limit => 3
    t.integer  "CLLNGE",               :limit => nil, :precision => 1, :scale => 0
    t.string   "CLCDEX",               :limit => 1
    t.string   "CLDESI",               :limit => 3
    t.string   "CLAD01",               :limit => 35
    t.string   "CLAD02",               :limit => 35
    t.string   "CLAD03",               :limit => 35
    t.string   "CLAD04",               :limit => 35
    t.string   "CLAD05",               :limit => 35
    t.string   "CLAD06",               :limit => 35
    t.string   "CLDOMI",               :limit => 3
    t.string   "CLREGI",               :limit => 3
    t.string   "CLNATI",               :limit => 3
    t.string   "CLACTI",               :limit => 3
    t.string   "CLSECT",               :limit => 3
    t.string   "CLRGMA",               :limit => 3
    t.string   "CLSYMP",               :limit => 3
    t.string   "CLMONE",               :limit => 3
    t.string   "CLMONP",               :limit => 3
    t.string   "CLTLPH",               :limit => 12
    t.string   "CLTLEX",               :limit => 12
    t.string   "CLTLFX",               :limit => 12
    t.string   "CLSWFT",               :limit => 12
    t.string   "CLSIC",                :limit => 12
    t.string   "CLAUTR",               :limit => 12
    t.string   "CLGIRO",               :limit => 6
    t.string   "CLPROF",               :limit => 3
    t.string   "CLGEST",               :limit => 1
    t.string   "CLOBJE",               :limit => 1
    t.string   "CLGRPG",               :limit => 7
    t.string   "CLGER2",               :limit => 7
    t.string   "CLGER3",               :limit => 7
    t.string   "CLNATU",               :limit => 3
    t.string   "CLSCTE",               :limit => 7
    t.string   "CLNACP",               :limit => 3
    t.string   "CLDOMR",               :limit => 3
    t.string   "CLSEGM",               :limit => 3
    t.string   "CLPOTN",               :limit => 3
    t.string   "CLCTVA",               :limit => 1
    t.string   "CLCPIN",               :limit => 3
    t.string   "CLCPRI",               :limit => 3
    t.string   "CLCRIN",               :limit => 3
    t.string   "CLCPDN",               :limit => 3
    t.string   "CLFILL",               :limit => 194
    t.string   "CLFRES",               :limit => 2
    t.string   "CLTYES",               :limit => 2
    t.string   "CLFRFI",               :limit => 2
    t.string   "CLTYFI",               :limit => 2
    t.string   "CLFR03",               :limit => 2
    t.string   "CLTY03",               :limit => 2
    t.string   "CLSQ11",               :limit => 3
    t.string   "CLEX11",               :limit => 1
    t.string   "CLSQ12",               :limit => 3
    t.string   "CLEX12",               :limit => 1
    t.string   "CLSQ13",               :limit => 3
    t.string   "CLEX13",               :limit => 1
    t.string   "CLSQ14",               :limit => 3
    t.string   "CLEX14",               :limit => 1
    t.string   "CLSQ15",               :limit => 3
    t.string   "CLEX15",               :limit => 1
    t.string   "CLSQ21",               :limit => 3
    t.string   "CLEX21",               :limit => 1
    t.string   "CLSQ22",               :limit => 3
    t.string   "CLEX22",               :limit => 1
    t.string   "CLSQ23",               :limit => 3
    t.string   "CLEX23",               :limit => 1
    t.string   "CLSQ24",               :limit => 3
    t.string   "CLEX24",               :limit => 1
    t.string   "CLSQ25",               :limit => 3
    t.string   "CLEX25",               :limit => 1
    t.string   "CLSQ31",               :limit => 3
    t.string   "CLEX31",               :limit => 1
    t.string   "CLSQ32",               :limit => 3
    t.string   "CLEX32",               :limit => 1
    t.string   "CLSQ33",               :limit => 3
    t.string   "CLEX33",               :limit => 1
    t.string   "CLSQ34",               :limit => 3
    t.string   "CLEX34",               :limit => 1
    t.string   "CLSQ35",               :limit => 3
    t.string   "CLEX35",               :limit => 1
    t.string   "CLJU01",               :limit => 1
    t.string   "CLJU02",               :limit => 1
    t.string   "CLJU03",               :limit => 1
    t.string   "CLJU04",               :limit => 1
    t.string   "CLJU05",               :limit => 1
    t.string   "CLJU06",               :limit => 1
    t.string   "CLJU07",               :limit => 1
    t.string   "CLJU08",               :limit => 1
    t.string   "CLJU09",               :limit => 1
    t.string   "CLJU10",               :limit => 1
    t.string   "CLJU11",               :limit => 1
    t.string   "CLJU12",               :limit => 1
    t.string   "CLJU13",               :limit => 1
    t.string   "CLJU14",               :limit => 1
    t.string   "CLJU15",               :limit => 1
    t.string   "CLDS01",               :limit => 6
    t.string   "CLDR01",               :limit => 6
    t.string   "CLDS02",               :limit => 6
    t.string   "CLDR02",               :limit => 6
    t.string   "CLDS03",               :limit => 6
    t.string   "CLDR03",               :limit => 6
    t.string   "CLDS04",               :limit => 6
    t.string   "CLDR04",               :limit => 6
    t.string   "CLDS05",               :limit => 6
    t.string   "CLDR05",               :limit => 6
    t.string   "CLDS06",               :limit => 6
    t.string   "CLDR06",               :limit => 6
    t.string   "CLDS07",               :limit => 6
    t.string   "CLDR07",               :limit => 6
    t.string   "CLDS08",               :limit => 6
    t.string   "CLDR08",               :limit => 6
    t.string   "CLDS09",               :limit => 6
    t.string   "CLDR09",               :limit => 6
    t.string   "CLDS10",               :limit => 6
    t.string   "CLDR10",               :limit => 6
    t.string   "CLDS11",               :limit => 6
    t.string   "CLDR11",               :limit => 6
    t.string   "CLDS12",               :limit => 6
    t.string   "CLDR12",               :limit => 6
    t.string   "CLDS13",               :limit => 6
    t.string   "CLDR13",               :limit => 6
    t.string   "CLDS14",               :limit => 6
    t.string   "CLDR14",               :limit => 6
    t.string   "CLDS15",               :limit => 6
    t.string   "CLDR15",               :limit => 6
    t.string   "CLFI02",               :limit => 16
    t.string   "CLRFAR",               :limit => 7
    t.string   "CLRFAN",               :limit => 3
    t.string   "CLRMDU",               :limit => 6
    t.string   "CLRMAU",               :limit => 6
    t.string   "CLRMAR",               :limit => 7
    t.string   "CLRMAN",               :limit => 3
    t.string   "CLTENT",               :limit => 1
    t.string   "CLAFIL",               :limit => 2
    t.string   "CLDORM",               :limit => 1
    t.string   "CLDSPM",               :limit => 8
    t.string   "CLFI03",               :limit => 83
    t.string   "fimis_status",         :limit => 1
    t.string   "Group_Identifier",     :limit => 50
    t.string   "Entity_Identifier",    :limit => 50
    t.string   "Source_Identifier",    :limit => 50
    t.datetime "Record_Creation_Date"
    t.string   "Source_Package",       :limit => 50
  end

  create_table "FIMIS_TA_SRC_OLY_E_AccountLines_FDBCPT", :id => false, :force => true do |t|
    t.string   "CPRACI",               :limit => 7,                                  :null => false
    t.string   "CPGRE",                :limit => 3,                                  :null => false
    t.string   "CPRUB",                :limit => 3,                                  :null => false
    t.string   "CPMON",                :limit => 3,                                  :null => false
    t.string   "CPETAT",               :limit => 1,                                  :null => false
    t.string   "CPDTOU",               :limit => 8,                                  :null => false
    t.string   "CPDTMU",               :limit => 6,                                  :null => false
    t.string   "CPDTAN",               :limit => 8,                                  :null => false
    t.string   "CPNBRM",               :limit => 3
    t.string   "CPOPRN",               :limit => 7,                                  :null => false
    t.string   "CPGERA",               :limit => 7,                                  :null => false
    t.string   "CPCENT",               :limit => 7
    t.string   "CPTRUB",               :limit => 35,                                 :null => false
    t.string   "CPACPT",               :limit => 16
    t.string   "CPNATU",               :limit => 3,                                  :null => false
    t.string   "CPFRBO",               :limit => 2
    t.decimal  "CPMLIM",                              :precision => 15, :scale => 2, :null => false
    t.string   "CPDVDU",               :limit => 6
    t.string   "CPDVAU",               :limit => 6
    t.string   "CPFRAM",               :limit => 2
    t.decimal  "CPMTAM",                              :precision => 15, :scale => 2
    t.string   "CPDTAM",               :limit => 6
    t.string   "CPCPTI",               :limit => 16
    t.string   "CPCPTC",               :limit => 16
    t.string   "CPCPTF",               :limit => 16
    t.string   "CPNOLD",               :limit => 6
    t.string   "CPDTLD",               :limit => 6
    t.string   "CPLILD",               :limit => 6
    t.string   "CPPROC",               :limit => 1
    t.string   "CPUSUF",               :limit => 1
    t.string   "CPNANT",               :limit => 1
    t.string   "CPBLOC",               :limit => 1,                                  :null => false
    t.string   "CPCHEQ",               :limit => 1,                                  :null => false
    t.string   "CPECHQ",               :limit => 1,                                  :null => false
    t.string   "CPBNMA",               :limit => 1
    t.string   "CPBNCA",               :limit => 1
    t.string   "CPCNDS",               :limit => 1
    t.string   "CPFIL1",               :limit => 4
    t.string   "CPGEST",               :limit => 1
    t.string   "CPAVOP",               :limit => 1
    t.string   "CPEXTJ",               :limit => 1
    t.string   "CPATTE",               :limit => 1
    t.string   "CPDRES",               :limit => 1
    t.string   "CPRELV",               :limit => 1,                                  :null => false
    t.string   "CPECHL",               :limit => 1,                                  :null => false
    t.string   "CPDRE1",               :limit => 1
    t.string   "CPDRE2",               :limit => 1
    t.string   "CPDRE3",               :limit => 1
    t.string   "CPDRE4",               :limit => 1
    t.string   "CPFIL2",               :limit => 5
    t.string   "CPFRRL",               :limit => 2,                                  :null => false
    t.string   "CPFREC",               :limit => 2,                                  :null => false
    t.string   "CPCADR",               :limit => 1
    t.string   "CPSTDA",               :limit => 7
    t.string   "CPSTDS",               :limit => 3,                                  :null => false
    t.string   "CPBCAL",               :limit => 1,                                  :null => false
    t.string   "CPDVLT",               :limit => 6,                                  :null => false
    t.string   "CPDCBA",               :limit => 3,                                  :null => false
    t.decimal  "CPDTBA",                              :precision => 8,  :scale => 5, :null => false
    t.string   "CPDSIG",               :limit => 1,                                  :null => false
    t.decimal  "CPDMAR",                              :precision => 8,  :scale => 5, :null => false
    t.decimal  "CPDEFF",                              :precision => 8,  :scale => 5, :null => false
    t.string   "CPCCBA",               :limit => 3,                                  :null => false
    t.decimal  "CPCTBA",                              :precision => 8,  :scale => 5, :null => false
    t.string   "CPCSIG",               :limit => 1,                                  :null => false
    t.decimal  "CPCMAR",                              :precision => 8,  :scale => 5, :null => false
    t.decimal  "CPCEFF",                              :precision => 8,  :scale => 5, :null => false
    t.string   "CPCCOM",               :limit => 1,                                  :null => false
    t.string   "CPCBCL",               :limit => 2,                                  :null => false
    t.string   "CPCOFI",               :limit => 13
    t.string   "CPCDOR",               :limit => 1
    t.string   "CPDDOR",               :limit => 8
    t.string   "CPFAVI",               :limit => 2
    t.string   "CPFREL",               :limit => 2
    t.string   "CPFEXT",               :limit => 2
    t.string   "CPFANU",               :limit => 2
    t.string   "CPFBCL",               :limit => 2
    t.string   "CPFCOG",               :limit => 2
    t.string   "CPFCOM",               :limit => 2
    t.decimal  "CPSOLD",                              :precision => 15, :scale => 2, :null => false
    t.decimal  "CPSMLC",                              :precision => 15, :scale => 2, :null => false
    t.decimal  "CPSLIM",                              :precision => 15, :scale => 2
    t.integer  "CPDSEQ",               :limit => nil, :precision => 7,  :scale => 0
    t.integer  "CPDSQA",               :limit => nil, :precision => 7,  :scale => 0
    t.string   "CPDTDM",               :limit => 8
    t.string   "CPDTDB",               :limit => 8
    t.string   "CPDTAR",               :limit => 8
    t.string   "CPNMRJ",               :limit => 5,                                  :null => false
    t.string   "CPNMRP",               :limit => 5,                                  :null => false
    t.string   "CPNMRB",               :limit => 5,                                  :null => false
    t.string   "CPNMRX",               :limit => 5
    t.string   "CPDTEV",               :limit => 6,                                  :null => false
    t.decimal  "CPCTMG",                              :precision => 15, :scale => 2, :null => false
    t.decimal  "CPCTMS",                              :precision => 15, :scale => 2, :null => false
    t.decimal  "CPSLDP",                              :precision => 15, :scale => 2, :null => false
    t.decimal  "CPCTRV",                              :precision => 15, :scale => 2, :null => false
    t.string   "CPPLNT",               :limit => 1
    t.string   "CPPLNP",               :limit => 9
    t.string   "CPAMON",               :limit => 4
    t.string   "CPTYCL",               :limit => 1
    t.string   "CPNATI",               :limit => 3
    t.string   "CPDOMI",               :limit => 3
    t.string   "CPACTI",               :limit => 3
    t.string   "CPSECT",               :limit => 3
    t.string   "CPDTBC",               :limit => 8
    t.string   "CPDTB1",               :limit => 8
    t.string   "CPDTB2",               :limit => 8
    t.string   "CPCDBO",               :limit => 1
    t.string   "CPIMLT",               :limit => 1
    t.string   "CPIMLP",               :limit => 6
    t.string   "CPLTER",               :limit => 2
    t.string   "CPOPEV",               :limit => 1
    t.string   "CPSIMU",               :limit => 1
    t.string   "CPOPLN",               :limit => 1
    t.string   "CPNATC",               :limit => 3
    t.string   "CPDOMR",               :limit => 3
    t.string   "CPSEQD",               :limit => 3
    t.string   "CPMONL",               :limit => 3
    t.string   "CPMONS",               :limit => 3,                                  :null => false
    t.string   "CPMONG",               :limit => 3,                                  :null => false
    t.string   "CPDDRE",               :limit => 6
    t.string   "CPCMRE",               :limit => 1
    t.string   "CPFILL",               :limit => 109
    t.string   "CPCDNG",               :limit => 1
    t.string   "CPCADN",               :limit => 1
    t.decimal  "CPMGHY",                              :precision => 15, :scale => 2
    t.decimal  "CPMGTI",                              :precision => 15, :scale => 2
    t.decimal  "CPMGAU",                              :precision => 15, :scale => 2
    t.decimal  "CPMBLA",                              :precision => 15, :scale => 2
    t.decimal  "CPMBLS",                              :precision => 15, :scale => 2
    t.string   "CPGFIL",               :limit => 75
    t.string   "CPLIMC",               :limit => 1
    t.string   "CPFILE",               :limit => 100
    t.string   "CPCDOR2",              :limit => 1
    t.string   "CPDDOR2",              :limit => 8
    t.string   "CPFAVI2",              :limit => 2
    t.string   "CPFREL2",              :limit => 2
    t.string   "CPFEXT2",              :limit => 2
    t.string   "CPFANU2",              :limit => 2
    t.string   "CPFBCL2",              :limit => 2
    t.string   "CPFCOG2",              :limit => 2
    t.string   "CPFCOM2",              :limit => 2
    t.string   "fimis_status",         :limit => 1
    t.string   "Group_Identifier",     :limit => 50
    t.string   "Entity_Identifier",    :limit => 50
    t.string   "Source_Identifier",    :limit => 50
    t.datetime "Record_Creation_Date"
    t.string   "Source_Package",       :limit => 50
    t.string   "Load_Date",            :limit => 50
  end

  create_table "FIMIS_TA_SRC_OLY_E_AccountLines_FDHCPT", :id => false, :force => true do |t|
    t.string  "CPCTLD",            :limit => 8,                                  :null => false
    t.string  "CPCTLH",            :limit => 6,                                  :null => false
    t.string  "CPCTLO",            :limit => 7,                                  :null => false
    t.string  "CPCTLF",            :limit => 20,                                 :null => false
    t.string  "CPRACI",            :limit => 7,                                  :null => false
    t.string  "CPGRE",             :limit => 3,                                  :null => false
    t.string  "CPRUB",             :limit => 3,                                  :null => false
    t.string  "CPMON",             :limit => 3,                                  :null => false
    t.string  "CPETAT",            :limit => 1,                                  :null => false
    t.string  "CPDTOU",            :limit => 6,                                  :null => false
    t.string  "CPDTMU",            :limit => 6,                                  :null => false
    t.string  "CPDTAN",            :limit => 6,                                  :null => false
    t.string  "CPNBRM",            :limit => 3,                                  :null => false
    t.string  "CPOPRN",            :limit => 7,                                  :null => false
    t.string  "CPGERA",            :limit => 7,                                  :null => false
    t.string  "CPCENT",            :limit => 7,                                  :null => false
    t.string  "CPTRUB",            :limit => 35,                                 :null => false
    t.string  "CPACPT",            :limit => 16,                                 :null => false
    t.string  "CPNATU",            :limit => 3,                                  :null => false
    t.string  "CPFRBO",            :limit => 2,                                  :null => false
    t.decimal "CPMLIM",                           :precision => 15, :scale => 2, :null => false
    t.string  "CPDVDU",            :limit => 6,                                  :null => false
    t.string  "CPDVAU",            :limit => 6,                                  :null => false
    t.string  "CPFRAM",            :limit => 2,                                  :null => false
    t.decimal "CPMTAM",                           :precision => 15, :scale => 2, :null => false
    t.string  "CPDTAM",            :limit => 6,                                  :null => false
    t.string  "CPCPTI",            :limit => 16,                                 :null => false
    t.string  "CPCPTC",            :limit => 16,                                 :null => false
    t.string  "CPCPTF",            :limit => 16,                                 :null => false
    t.string  "CPNOLD",            :limit => 6,                                  :null => false
    t.string  "CPDTLD",            :limit => 6,                                  :null => false
    t.string  "CPLILD",            :limit => 6,                                  :null => false
    t.string  "CPPROC",            :limit => 1,                                  :null => false
    t.string  "CPUSUF",            :limit => 1,                                  :null => false
    t.string  "CPNANT",            :limit => 1,                                  :null => false
    t.string  "CPBLOC",            :limit => 1,                                  :null => false
    t.string  "CPCHEQ",            :limit => 1,                                  :null => false
    t.string  "CPECHQ",            :limit => 1,                                  :null => false
    t.string  "CPBNMA",            :limit => 1,                                  :null => false
    t.string  "CPBNCA",            :limit => 1,                                  :null => false
    t.string  "CPCNDS",            :limit => 1,                                  :null => false
    t.string  "CPFIL1",            :limit => 4,                                  :null => false
    t.string  "CPGEST",            :limit => 1,                                  :null => false
    t.string  "CPAVOP",            :limit => 1,                                  :null => false
    t.string  "CPEXTJ",            :limit => 1,                                  :null => false
    t.string  "CPATTE",            :limit => 1,                                  :null => false
    t.string  "CPDRES",            :limit => 1,                                  :null => false
    t.string  "CPRELV",            :limit => 1,                                  :null => false
    t.string  "CPECHL",            :limit => 1,                                  :null => false
    t.string  "CPDRE1",            :limit => 1,                                  :null => false
    t.string  "CPDRE2",            :limit => 1,                                  :null => false
    t.string  "CPDRE3",            :limit => 1,                                  :null => false
    t.string  "CPDRE4",            :limit => 1,                                  :null => false
    t.string  "CPFIL2",            :limit => 5,                                  :null => false
    t.string  "CPFRRL",            :limit => 2,                                  :null => false
    t.string  "CPFREC",            :limit => 2,                                  :null => false
    t.string  "CPCADR",            :limit => 1,                                  :null => false
    t.string  "CPSTDA",            :limit => 7,                                  :null => false
    t.string  "CPSTDS",            :limit => 3,                                  :null => false
    t.string  "CPBCAL",            :limit => 1,                                  :null => false
    t.string  "CPDVLT",            :limit => 6,                                  :null => false
    t.string  "CPDCBA",            :limit => 3,                                  :null => false
    t.decimal "CPDTBA",                           :precision => 8,  :scale => 5, :null => false
    t.string  "CPDSIG",            :limit => 1,                                  :null => false
    t.decimal "CPDMAR",                           :precision => 8,  :scale => 5, :null => false
    t.decimal "CPDEFF",                           :precision => 8,  :scale => 5, :null => false
    t.string  "CPCCBA",            :limit => 3,                                  :null => false
    t.decimal "CPCTBA",                           :precision => 8,  :scale => 5, :null => false
    t.string  "CPCSIG",            :limit => 1,                                  :null => false
    t.decimal "CPCMAR",                           :precision => 8,  :scale => 5, :null => false
    t.decimal "CPCEFF",                           :precision => 8,  :scale => 5, :null => false
    t.string  "CPCCOM",            :limit => 1,                                  :null => false
    t.string  "CPCBCL",            :limit => 2,                                  :null => false
    t.string  "CPCOFI",            :limit => 22,                                 :null => false
    t.string  "CPFAVI",            :limit => 2,                                  :null => false
    t.string  "CPFREL",            :limit => 2,                                  :null => false
    t.string  "CPFEXT",            :limit => 2,                                  :null => false
    t.string  "CPFANU",            :limit => 2,                                  :null => false
    t.string  "CPFBCL",            :limit => 2,                                  :null => false
    t.string  "CPFFIL",            :limit => 4,                                  :null => false
    t.decimal "CPSOLD",                           :precision => 15, :scale => 2, :null => false
    t.decimal "CPSMLC",                           :precision => 15, :scale => 2, :null => false
    t.decimal "CPSLIM",                           :precision => 15, :scale => 2, :null => false
    t.integer "CPDSEQ",            :limit => nil, :precision => 7,  :scale => 0, :null => false
    t.integer "CPDSQA",            :limit => nil, :precision => 7,  :scale => 0, :null => false
    t.string  "CPDTDM",            :limit => 8,                                  :null => false
    t.string  "CPDTDB",            :limit => 8,                                  :null => false
    t.string  "CPDTAR",            :limit => 8,                                  :null => false
    t.string  "CPNMRJ",            :limit => 5,                                  :null => false
    t.string  "CPNMRP",            :limit => 5,                                  :null => false
    t.string  "CPNMRB",            :limit => 5,                                  :null => false
    t.string  "CPNMRX",            :limit => 5,                                  :null => false
    t.string  "CPDTEV",            :limit => 6,                                  :null => false
    t.decimal "CPCTMG",                           :precision => 15, :scale => 2, :null => false
    t.decimal "CPCTMS",                           :precision => 15, :scale => 2, :null => false
    t.decimal "CPSLDP",                           :precision => 15, :scale => 2, :null => false
    t.decimal "CPCTRV",                           :precision => 15, :scale => 2, :null => false
    t.string  "CPPLNT",            :limit => 1,                                  :null => false
    t.string  "CPPLNP",            :limit => 9,                                  :null => false
    t.string  "CPAMON",            :limit => 4,                                  :null => false
    t.string  "CPTYCL",            :limit => 1,                                  :null => false
    t.string  "CPNATI",            :limit => 3,                                  :null => false
    t.string  "CPDOMI",            :limit => 3,                                  :null => false
    t.string  "CPACTI",            :limit => 3,                                  :null => false
    t.string  "CPSECT",            :limit => 3,                                  :null => false
    t.string  "CPDTBC",            :limit => 8,                                  :null => false
    t.string  "CPDTB1",            :limit => 8,                                  :null => false
    t.string  "CPDTB2",            :limit => 8,                                  :null => false
    t.string  "CPCDBO",            :limit => 1,                                  :null => false
    t.string  "CPIMLT",            :limit => 1,                                  :null => false
    t.string  "CPIMLP",            :limit => 6,                                  :null => false
    t.string  "CPLTER",            :limit => 2,                                  :null => false
    t.string  "CPOPEV",            :limit => 1,                                  :null => false
    t.string  "CPSIMU",            :limit => 1,                                  :null => false
    t.string  "CPOPLN",            :limit => 1,                                  :null => false
    t.string  "CPNATC",            :limit => 3,                                  :null => false
    t.string  "CPDOMR",            :limit => 3,                                  :null => false
    t.string  "CPSEQD",            :limit => 3,                                  :null => false
    t.string  "CPMONL",            :limit => 3,                                  :null => false
    t.string  "CPMONS",            :limit => 3,                                  :null => false
    t.string  "CPMONG",            :limit => 3,                                  :null => false
    t.string  "CPFILL",            :limit => 116,                                :null => false
    t.string  "CPCDNG",            :limit => 1,                                  :null => false
    t.string  "CPCADN",            :limit => 1,                                  :null => false
    t.decimal "CPMGHY",                           :precision => 15, :scale => 2, :null => false
    t.decimal "CPMGTI",                           :precision => 15, :scale => 2, :null => false
    t.decimal "CPMGAU",                           :precision => 15, :scale => 2, :null => false
    t.decimal "CPMBLA",                           :precision => 15, :scale => 2, :null => false
    t.decimal "CPMBLS",                           :precision => 15, :scale => 2, :null => false
    t.string  "CPGFIL",            :limit => 75,                                 :null => false
    t.string  "CPLIMC",            :limit => 1,                                  :null => false
    t.string  "CPFILE",            :limit => 100,                                :null => false
    t.string  "fimis_status",      :limit => 1
    t.string  "Group_Identifier",  :limit => 50
    t.string  "Entity_Identifier", :limit => 50
    t.string  "Source_Identifier", :limit => 50
  end

  create_table "FIMIS_TA_SRC_OLY_E_ContractLines_FDBCTR", :id => false, :force => true do |t|
    t.string   "CTID",                 :limit => 3,                                  :null => false
    t.string   "CTCONT",               :limit => 7,                                  :null => false
    t.string   "CTNOPR",               :limit => 3,                                  :null => false
    t.string   "CTDTOU",               :limit => 6,                                  :null => false
    t.string   "CTDTPR",               :limit => 6,                                  :null => false
    t.string   "CTDTLQ",               :limit => 6,                                  :null => false
    t.string   "CTOPER",               :limit => 1,                                  :null => false
    t.string   "CTSTAT",               :limit => 1,                                  :null => false
    t.string   "CTSAIP",               :limit => 7,                                  :null => false
    t.string   "CTCNTP",               :limit => 7,                                  :null => false
    t.string   "CTRACI",               :limit => 7,                                  :null => false
    t.string   "CTGRE",                :limit => 3,                                  :null => false
    t.string   "CTRUB",                :limit => 3,                                  :null => false
    t.string   "CTMON",                :limit => 3,                                  :null => false
    t.integer  "CTTYPE",               :limit => nil, :precision => 3,  :scale => 0, :null => false
    t.integer  "CTBACA",               :limit => nil, :precision => 1,  :scale => 0, :null => false
    t.string   "CTDTEJ",               :limit => 2,                                  :null => false
    t.string   "CTDTEM",               :limit => 2,                                  :null => false
    t.string   "CTDTEA",               :limit => 4,                                  :null => false
    t.string   "CTDJEX",               :limit => 2,                                  :null => false
    t.string   "CTDMEX",               :limit => 2,                                  :null => false
    t.string   "CTDAEX",               :limit => 4,                                  :null => false
    t.integer  "CTRECP",               :limit => nil, :precision => 3,  :scale => 0, :null => false
    t.string   "CTEMIP",               :limit => 7,                                  :null => false
    t.string   "CTEXEP",               :limit => 7,                                  :null => false
    t.string   "CTCHEZ",               :limit => 7
    t.string   "CTBIRA",               :limit => 7
    t.string   "CTCRAC",               :limit => 7,                                  :null => false
    t.string   "CTCGRE",               :limit => 3,                                  :null => false
    t.string   "CTCRUB",               :limit => 3,                                  :null => false
    t.string   "CTCMON",               :limit => 3,                                  :null => false
    t.string   "CTDRAC",               :limit => 7,                                  :null => false
    t.string   "CTDGRE",               :limit => 3,                                  :null => false
    t.string   "CTDRUB",               :limit => 3,                                  :null => false
    t.string   "CTDMON",               :limit => 3,                                  :null => false
    t.string   "CTCOM1",               :limit => 35
    t.string   "CTCOM2",               :limit => 35
    t.string   "CTCOM3",               :limit => 35
    t.string   "CTCOM4",               :limit => 35
    t.decimal  "CTCAPI",                              :precision => 15, :scale => 2, :null => false
    t.decimal  "CTTAUX",                              :precision => 10, :scale => 6, :null => false
    t.string   "CTDTVJ",               :limit => 2,                                  :null => false
    t.string   "CTDTVM",               :limit => 2,                                  :null => false
    t.string   "CTDTVA",               :limit => 4,                                  :null => false
    t.string   "CTECHJ",               :limit => 2,                                  :null => false
    t.string   "CTECHM",               :limit => 2,                                  :null => false
    t.string   "CTECHA",               :limit => 4,                                  :null => false
    t.string   "CTFCHJ",               :limit => 2,                                  :null => false
    t.string   "CTFCHM",               :limit => 2,                                  :null => false
    t.string   "CTFCHA",               :limit => 4,                                  :null => false
    t.integer  "CTNBRJ",               :limit => nil, :precision => 4,  :scale => 0, :null => false
    t.integer  "CTSJOU",               :limit => nil, :precision => 3,  :scale => 0, :null => false
    t.decimal  "CTINTE",                              :precision => 15, :scale => 2, :null => false
    t.decimal  "CTINML",                              :precision => 15, :scale => 2, :null => false
    t.decimal  "CTINTC",                              :precision => 13, :scale => 8, :null => false
    t.string   "CTCIMP",               :limit => 1,                                  :null => false
    t.decimal  "CTIMPO",                              :precision => 15, :scale => 2, :null => false
    t.decimal  "CTCOMM",                              :precision => 15, :scale => 2, :null => false
    t.decimal  "CTTCOM",                              :precision => 8,  :scale => 6, :null => false
    t.decimal  "CTCOMI",                              :precision => 15, :scale => 2, :null => false
    t.decimal  "CTFRAI",                              :precision => 15, :scale => 2, :null => false
    t.decimal  "CTOTAU",                              :precision => 10, :scale => 6, :null => false
    t.decimal  "CTOCAP",                              :precision => 15, :scale => 2, :null => false
    t.string   "CTODVJ",               :limit => 2,                                  :null => false
    t.string   "CTODVM",               :limit => 2,                                  :null => false
    t.string   "CTODVA",               :limit => 4,                                  :null => false
    t.string   "CTODEJ",               :limit => 2,                                  :null => false
    t.string   "CTODEM",               :limit => 2,                                  :null => false
    t.string   "CTODEA",               :limit => 4,                                  :null => false
    t.decimal  "CTTARE",                              :precision => 10, :scale => 6, :null => false
    t.decimal  "CTTASW",                              :precision => 10, :scale => 6, :null => false
    t.decimal  "CTCRCO",                              :precision => 13, :scale => 8, :null => false
    t.decimal  "CTCRTE",                              :precision => 13, :scale => 8, :null => false
    t.decimal  "CTTABA",                              :precision => 10, :scale => 6, :null => false
    t.string   "CTSIMA",               :limit => 1,                                  :null => false
    t.decimal  "CTMARG",                              :precision => 10, :scale => 6, :null => false
    t.string   "CTRORI",               :limit => 7
    t.string   "CTRGRP",               :limit => 7
    t.string   "CTVREF",               :limit => 16
    t.string   "CTFIOP",               :limit => 1
    t.string   "CTFRIN",               :limit => 2
    t.string   "CTDPIJ",               :limit => 2,                                  :null => false
    t.string   "CTDPIM",               :limit => 2,                                  :null => false
    t.string   "CTDPIA",               :limit => 4,                                  :null => false
    t.string   "CTDJIN",               :limit => 2,                                  :null => false
    t.string   "CTDMIN",               :limit => 2,                                  :null => false
    t.string   "CTDAIN",               :limit => 4,                                  :null => false
    t.string   "CTAMCD",               :limit => 1
    t.string   "CTAMFR",               :limit => 2
    t.decimal  "CTAMTX",                              :precision => 10, :scale => 6
    t.string   "CTAMDJ",               :limit => 2
    t.string   "CTAMDM",               :limit => 2
    t.string   "CTAMDA",               :limit => 4
    t.string   "CTADDJ",               :limit => 2
    t.string   "CTADDM",               :limit => 2
    t.string   "CTADDA",               :limit => 4
    t.decimal  "CTAMMT",                              :precision => 15, :scale => 2
    t.decimal  "CTAMCU",                              :precision => 15, :scale => 2
    t.integer  "CTAMNB",               :limit => nil, :precision => 3,  :scale => 0
    t.string   "CTAGNR",               :limit => 7
    t.decimal  "CTINTT",                              :precision => 15, :scale => 2, :null => false
    t.decimal  "CTCOMT",                              :precision => 15, :scale => 2, :null => false
    t.string   "CTFGRE",               :limit => 3,                                  :null => false
    t.string   "CTCCAP",               :limit => 1
    t.string   "CTCRET",               :limit => 1
    t.string   "CTTECH",               :limit => 1
    t.string   "CTCRNV",               :limit => 1
    t.string   "CTCDIN",               :limit => 1
    t.string   "CTIVDJ",               :limit => 2
    t.string   "CTIVDM",               :limit => 2
    t.string   "CTIVDA",               :limit => 4
    t.string   "CTIVAJ",               :limit => 2
    t.string   "CTIVAM",               :limit => 2
    t.string   "CTIVAA",               :limit => 4
    t.string   "CTATIO",               :limit => 1
    t.integer  "CTISMT",               :limit => nil, :precision => 11, :scale => 0
    t.integer  "CTSEUI",               :limit => nil, :precision => 11, :scale => 0
    t.string   "CTCORI",               :limit => 1
    t.string   "CTANCT",               :limit => 7
    t.string   "CTPLIO",               :limit => 1
    t.string   "CTPLRM",               :limit => 20
    t.string   "CTPLSY",               :limit => 3
    t.decimal  "CTPLAC",                              :precision => 15, :scale => 2
    t.string   "CTPLAS",               :limit => 1
    t.string   "CTPLTR",               :limit => 1
    t.string   "CTPLDU",               :limit => 4
    t.string   "CTPLPE",               :limit => 1
    t.string   "CTPLHR",               :limit => 2,                                  :null => false
    t.string   "CTPLMR",               :limit => 2,                                  :null => false
    t.string   "CTPLSR",               :limit => 2,                                  :null => false
    t.string   "CTPLBD",               :limit => 1,                                  :null => false
    t.string   "CTFIL1",               :limit => 2,                                  :null => false
    t.string   "CTFDEC",               :limit => 1,                                  :null => false
    t.string   "CTPTCI",               :limit => 1,                                  :null => false
    t.string   "CTSNJS",               :limit => 1,                                  :null => false
    t.integer  "CTNJSU",               :limit => nil, :precision => 1,  :scale => 0, :null => false
    t.decimal  "CTACIN",                              :precision => 15, :scale => 2, :null => false
    t.string   "CTACDJ",               :limit => 2,                                  :null => false
    t.string   "CTACDM",               :limit => 2,                                  :null => false
    t.string   "CTACDA",               :limit => 4,                                  :null => false
    t.string   "CTCCOM",               :limit => 1,                                  :null => false
    t.string   "CTTYPC",               :limit => 1,                                  :null => false
    t.string   "CTCENT",               :limit => 7,                                  :null => false
    t.decimal  "CTTAUI",                              :precision => 10, :scale => 6, :null => false
    t.string   "CTIESC",               :limit => 1,                                  :null => false
    t.string   "CTITRD",               :limit => 1,                                  :null => false
    t.string   "CTEMES",               :limit => 1,                                  :null => false
    t.string   "CTPMES",               :limit => 1,                                  :null => false
    t.integer  "CTNJRS",               :limit => nil, :precision => 2,  :scale => 0, :null => false
    t.string   "CTARAC",               :limit => 7,                                  :null => false
    t.string   "CTAGRE",               :limit => 3,                                  :null => false
    t.string   "CTARUB",               :limit => 3,                                  :null => false
    t.string   "CTAMON",               :limit => 3,                                  :null => false
    t.string   "CTADRA",               :limit => 7,                                  :null => false
    t.string   "CTADGR",               :limit => 3,                                  :null => false
    t.string   "CTADRU",               :limit => 3,                                  :null => false
    t.string   "CTADMO",               :limit => 3,                                  :null => false
    t.string   "CTACRA",               :limit => 7,                                  :null => false
    t.string   "CTACGR",               :limit => 3,                                  :null => false
    t.string   "CTACRU",               :limit => 3,                                  :null => false
    t.string   "CTACMO",               :limit => 3,                                  :null => false
    t.string   "CTAREC",               :limit => 3,                                  :null => false
    t.string   "CTDTOJ",               :limit => 2,                                  :null => false
    t.string   "CTDTOM",               :limit => 2,                                  :null => false
    t.string   "CTDTOA",               :limit => 4,                                  :null => false
    t.string   "CTGERA",               :limit => 7,                                  :null => false
    t.string   "CTSYMP",               :limit => 3,                                  :null => false
    t.string   "CTDURE",               :limit => 4,                                  :null => false
    t.string   "CTPERI",               :limit => 1,                                  :null => false
    t.string   "CTGROU",               :limit => 1,                                  :null => false
    t.string   "CTORMQ",               :limit => 38,                                 :null => false
    t.string   "CTINTV",               :limit => 1,                                  :null => false
    t.string   "CTSEQG",               :limit => 5,                                  :null => false
    t.string   "CTBRMQ",               :limit => 38,                                 :null => false
    t.string   "CTOPBO",               :limit => 7,                                  :null => false
    t.string   "CTSTBO",               :limit => 1,                                  :null => false
    t.string   "CTGDVJ",               :limit => 2,                                  :null => false
    t.string   "CTGDVM",               :limit => 2,                                  :null => false
    t.string   "CTGDVA",               :limit => 4,                                  :null => false
    t.string   "CTGDEJ",               :limit => 2,                                  :null => false
    t.string   "CTGDEM",               :limit => 2,                                  :null => false
    t.string   "CTGDEA",               :limit => 4,                                  :null => false
    t.string   "CTGRAC",               :limit => 7,                                  :null => false
    t.decimal  "CTGTAU",                              :precision => 10, :scale => 6, :null => false
    t.string   "CTCPTI",               :limit => 16,                                 :null => false
    t.string   "CTFORC",               :limit => 1,                                  :null => false
    t.string   "CTODRA",               :limit => 7,                                  :null => false
    t.string   "CTODGR",               :limit => 3,                                  :null => false
    t.string   "CTODRU",               :limit => 3,                                  :null => false
    t.string   "CTODMO",               :limit => 3,                                  :null => false
    t.string   "CTOCRA",               :limit => 7,                                  :null => false
    t.string   "CTOCGR",               :limit => 3,                                  :null => false
    t.string   "CTOCRU",               :limit => 3,                                  :null => false
    t.string   "CTOCMO",               :limit => 3,                                  :null => false
    t.string   "CTOCON",               :limit => 3,                                  :null => false
    t.string   "CTOGRP",               :limit => 1,                                  :null => false
    t.string   "CTOREM",               :limit => 38,                                 :null => false
    t.string   "CTOINT",               :limit => 1,                                  :null => false
    t.string   "CTOSYM",               :limit => 3,                                  :null => false
    t.string   "CTOPTI",               :limit => 1,                                  :null => false
    t.decimal  "CTTVA",                               :precision => 15, :scale => 2, :null => false
    t.decimal  "CTTTVA",                              :precision => 6,  :scale => 4, :null => false
    t.string   "CTCTVA",               :limit => 3,                                  :null => false
    t.string   "CTCASS",               :limit => 1,                                  :null => false
    t.decimal  "CTMONL",                              :precision => 15, :scale => 2, :null => false
    t.string   "CTBTVA",               :limit => 1,                                  :null => false
    t.decimal  "CTCOUR",                              :precision => 13, :scale => 8, :null => false
    t.string   "CTOPTD",               :limit => 1,                                  :null => false
    t.string   "CTRPLA",               :limit => 7,                                  :null => false
    t.string   "CTEPLA",               :limit => 1,                                  :null => false
    t.string   "CTTPLA",               :limit => 8,                                  :null => false
    t.string   "CTZCRC",               :limit => 16,                                 :null => false
    t.string   "CTZDBC",               :limit => 16,                                 :null => false
    t.string   "CTLAFL",               :limit => 7,                                  :null => false
    t.decimal  "CTTAUC",                              :precision => 10, :scale => 6, :null => false
    t.decimal  "CTTAUL",                              :precision => 10, :scale => 6, :null => false
    t.string   "CDTVIJ",               :limit => 2,                                  :null => false
    t.string   "CDTVIM",               :limit => 2,                                  :null => false
    t.string   "CDTVIA",               :limit => 4,                                  :null => false
    t.string   "CTTYPT",               :limit => 3,                                  :null => false
    t.string   "CTACPI",               :limit => 16,                                 :null => false
    t.string   "CTSGES",               :limit => 7,                                  :null => false
    t.string   "CTFIL3",               :limit => 206,                                :null => false
    t.string   "fimis_status",         :limit => 1
    t.string   "Group_Identifier",     :limit => 50
    t.string   "Entity_Identifier",    :limit => 50
    t.string   "Source_Identifier",    :limit => 50
    t.datetime "Record_Creation_Date"
    t.string   "Source_Package",       :limit => 50
    t.string   "Load_Date",            :limit => 50
  end

  create_table "FIMIS_TA_SRC_OLY_G_TransactionsOnCash_FDBLOP", :id => false, :force => true do |t|
    t.string   "LPLPRO",               :limit => 7
    t.string   "LPLID",                :limit => 3
    t.string   "LPLREF",               :limit => 7,                                 :null => false
    t.string   "LPLSEQ",               :limit => 5,                                 :null => false
    t.string   "LPSTAT",               :limit => 1,                                 :null => false
    t.string   "LPCPTA",               :limit => 1,                                 :null => false
    t.string   "LPCONF",               :limit => 1,                                 :null => false
    t.string   "LPDTJJ",               :limit => 2,                                 :null => false
    t.string   "LPDTMM",               :limit => 2,                                 :null => false
    t.string   "LPDTAA",               :limit => 4,                                 :null => false
    t.string   "LPTIME",               :limit => 6
    t.string   "LPLOPR",               :limit => 7,                                 :null => false
    t.string   "LPCTRL",               :limit => 7,                                 :null => false
    t.string   "OPID",                 :limit => 3,                                 :null => false
    t.string   "OPNOPE",               :limit => 7,                                 :null => false
    t.string   "OPNSEQ",               :limit => 5,                                 :null => false
    t.string   "OPCOPT",               :limit => 1,                                 :null => false
    t.string   "OPCSTS",               :limit => 1
    t.string   "OPOPER",               :limit => 7
    t.string   "OPCNTR",               :limit => 7
    t.string   "OPPEPA",               :limit => 1
    t.string   "OPPECO",               :limit => 1
    t.string   "OPSUPA",               :limit => 1
    t.string   "OPSUPM",               :limit => 1
    t.string   "OPFCT1",               :limit => 2,                                 :null => false
    t.string   "OPOPS1",               :limit => 7,                                 :null => false
    t.string   "OPFCT2",               :limit => 2,                                 :null => false
    t.string   "OPOPS2",               :limit => 7,                                 :null => false
    t.string   "OPOPEN",               :limit => 7,                                 :null => false
    t.string   "OPENRD",               :limit => 6,                                 :null => false
    t.string   "OPENRH",               :limit => 6,                                 :null => false
    t.string   "OPOPVI",               :limit => 7,                                 :null => false
    t.string   "OPSOPT",               :limit => 1
    t.string   "OPDJEX",               :limit => 1,                                 :null => false
    t.string   "OPRFEX",               :limit => 7,                                 :null => false
    t.string   "OPCEAV",               :limit => 1
    t.string   "OPSINI",               :limit => 7
    t.string   "OPNLOT",               :limit => 7
    t.string   "OPDLJJ",               :limit => 2
    t.string   "OPDLMM",               :limit => 2
    t.string   "OPDLAA",               :limit => 2
    t.string   "OPSLOT",               :limit => 1
    t.string   "OPILOT",               :limit => 1
    t.string   "OPFIL0",               :limit => 4
    t.string   "OPDBRC",               :limit => 7,                                 :null => false
    t.string   "OPDBGR",               :limit => 3,                                 :null => false
    t.string   "OPDBRU",               :limit => 3,                                 :null => false
    t.string   "OPDBNM",               :limit => 3,                                 :null => false
    t.string   "OPCRRC",               :limit => 7,                                 :null => false
    t.string   "OPCRGR",               :limit => 3,                                 :null => false
    t.string   "OPCRRU",               :limit => 3,                                 :null => false
    t.string   "OPCRNM",               :limit => 3,                                 :null => false
    t.string   "OPDBCC",               :limit => 7
    t.string   "OPCRCC",               :limit => 7
    t.string   "OPDORD",               :limit => 6,                                 :null => false
    t.string   "OPDOPE",               :limit => 6
    t.string   "OPRECP",               :limit => 3,                                 :null => false
    t.string   "OPVREF",               :limit => 16
    t.string   "OPEMIP",               :limit => 7,                                 :null => false
    t.string   "OPDBAO",               :limit => 3,                                 :null => false
    t.string   "OPDBAC",               :limit => 3,                                 :null => false
    t.string   "OPDBTV",               :limit => 3,                                 :null => false
    t.string   "OPDBAF",               :limit => 3,                                 :null => false
    t.string   "OPDBC1",               :limit => 3,                                 :null => false
    t.string   "OPDBC2",               :limit => 3,                                 :null => false
    t.string   "OPDBAT",               :limit => 3,                                 :null => false
    t.decimal  "OPDBMT",                             :precision => 13, :scale => 2, :null => false
    t.string   "OPDCCR",               :limit => 1,                                 :null => false
    t.decimal  "OPDCRS",                             :precision => 13, :scale => 8, :null => false
    t.decimal  "OPDBMC",                             :precision => 13, :scale => 2, :null => false
    t.decimal  "OPDTVA",                             :precision => 13, :scale => 2, :null => false
    t.decimal  "OPDFRS",                             :precision => 13, :scale => 2, :null => false
    t.decimal  "OPDCM1",                             :precision => 13, :scale => 2, :null => false
    t.decimal  "OPDCM2",                             :precision => 13, :scale => 2, :null => false
    t.decimal  "OPDNMC",                             :precision => 13, :scale => 2, :null => false
    t.string   "OPDDAV",               :limit => 6,                                 :null => false
    t.string   "OPCBAO",               :limit => 3,                                 :null => false
    t.string   "OPCBAC",               :limit => 3,                                 :null => false
    t.string   "OPCBTV",               :limit => 3,                                 :null => false
    t.string   "OPCBAF",               :limit => 3,                                 :null => false
    t.string   "OPCBC1",               :limit => 3,                                 :null => false
    t.string   "OPCBC2",               :limit => 3,                                 :null => false
    t.string   "OPCBAT",               :limit => 3,                                 :null => false
    t.decimal  "OPCBMT",                             :precision => 13, :scale => 2, :null => false
    t.string   "OPCCCR",               :limit => 1,                                 :null => false
    t.decimal  "OPCCRS",                             :precision => 13, :scale => 8, :null => false
    t.decimal  "OPCBMC",                             :precision => 13, :scale => 2, :null => false
    t.decimal  "OPCTVA",                             :precision => 13, :scale => 2, :null => false
    t.decimal  "OPCFRS",                             :precision => 13, :scale => 2, :null => false
    t.decimal  "OPCCM1",                             :precision => 13, :scale => 2, :null => false
    t.decimal  "OPCCM2",                             :precision => 13, :scale => 2, :null => false
    t.decimal  "OPCNMC",                             :precision => 13, :scale => 2, :null => false
    t.string   "OPCDAV",               :limit => 6,                                 :null => false
    t.string   "OPFBEN",               :limit => 1,                                 :null => false
    t.string   "OPFORD",               :limit => 1,                                 :null => false
    t.string   "OPDORA",               :limit => 7,                                 :null => false
    t.string   "OPDOA1",               :limit => 35,                                :null => false
    t.string   "OPDOA2",               :limit => 35,                                :null => false
    t.string   "OPDOA3",               :limit => 35
    t.string   "OPDOA4",               :limit => 35
    t.string   "OPBCO1",               :limit => 35
    t.string   "OPBCO2",               :limit => 35
    t.string   "OPBCO3",               :limit => 35
    t.string   "OPBCO4",               :limit => 35
    t.string   "OPBCO5",               :limit => 35
    t.string   "OPBIRA",               :limit => 7,                                 :null => false
    t.string   "OPBIA1",               :limit => 35,                                :null => false
    t.string   "OPBIA2",               :limit => 35,                                :null => false
    t.string   "OPBIA3",               :limit => 35
    t.string   "OPBIA4",               :limit => 35
    t.string   "OPBERA",               :limit => 7,                                 :null => false
    t.string   "OPBEA1",               :limit => 35,                                :null => false
    t.string   "OPBEA2",               :limit => 35
    t.string   "OPBEA3",               :limit => 35
    t.string   "OPBEA4",               :limit => 35
    t.string   "OPRBO1",               :limit => 35
    t.string   "OPRBO2",               :limit => 35
    t.string   "OPRBO3",               :limit => 35
    t.string   "OPRBO4",               :limit => 35
    t.string   "OPDBLI",               :limit => 35
    t.string   "OPCRLI",               :limit => 35
    t.string   "OPECHE",               :limit => 6,                                 :null => false
    t.string   "OPIBD1",               :limit => 3
    t.string   "OPIBD4",               :limit => 3
    t.string   "OPICR1",               :limit => 3
    t.string   "OPICR4",               :limit => 3
    t.string   "OPCCHQ",               :limit => 3,                                 :null => false
    t.string   "OPREFO",               :limit => 7,                                 :null => false
    t.string   "OPIMPC",               :limit => 1
    t.string   "OPDGEF",               :limit => 3,                                 :null => false
    t.string   "OPDRUF",               :limit => 3,                                 :null => false
    t.string   "OPCGEF",               :limit => 3,                                 :null => false
    t.string   "OPCRUF",               :limit => 3,                                 :null => false
    t.string   "OPECRA",               :limit => 10,                                :null => false
    t.string   "OPAGCE",               :limit => 7,                                 :null => false
    t.string   "OPFILL",               :limit => 2
    t.string   "OPBQDE",               :limit => 7,                                 :null => false
    t.string   "OPBQCD",               :limit => 7,                                 :null => false
    t.string   "OPBQIN",               :limit => 7,                                 :null => false
    t.string   "OPBQC1",               :limit => 35
    t.string   "OPBQC2",               :limit => 35
    t.string   "OPBQC3",               :limit => 35
    t.string   "OPBQC4",               :limit => 35
    t.string   "OPBQC5",               :limit => 35
    t.string   "OPBQC6",               :limit => 35
    t.string   "OPDMOP",               :limit => 3
    t.string   "OPDCNT",               :limit => 13
    t.string   "OPDCCC",               :limit => 1
    t.string   "OPDCCA",               :limit => 13
    t.string   "OPDIDA",               :limit => 3
    t.string   "OPDNDA",               :limit => 7
    t.string   "OPCMOP",               :limit => 3
    t.string   "OPCCNT",               :limit => 13
    t.string   "OPCCCL",               :limit => 1
    t.string   "OPCCCA",               :limit => 13
    t.string   "OPCIDA",               :limit => 3
    t.string   "OPCNOA",               :limit => 7
    t.string   "OPFILR",               :limit => 6
    t.string   "OPDBCT",               :limit => 7,                                 :null => false
    t.string   "OPDSFR",               :limit => 3,                                 :null => false
    t.decimal  "OPDCVC",                             :precision => 13, :scale => 2, :null => false
    t.decimal  "OPDTTC",                             :precision => 10, :scale => 6, :null => false
    t.string   "OPDCPR",               :limit => 3,                                 :null => false
    t.string   "OPDAST",               :limit => 1,                                 :null => false
    t.string   "OPDCTL",               :limit => 13,                                :null => false
    t.string   "OPDCCB",               :limit => 13,                                :null => false
    t.string   "OPDTSF",               :limit => 1,                                 :null => false
    t.string   "OPDTC1",               :limit => 1,                                 :null => false
    t.string   "OPDTC2",               :limit => 1,                                 :null => false
    t.string   "OPDTSB",               :limit => 1,                                 :null => false
    t.string   "OPDMCL",               :limit => 3,                                 :null => false
    t.string   "OPDCCH",               :limit => 13,                                :null => false
    t.string   "OPDCMC",               :limit => 1,                                 :null => false
    t.string   "OPDCFL",               :limit => 16,                                :null => false
    t.string   "OPCRCT",               :limit => 7,                                 :null => false
    t.string   "OPCSFR",               :limit => 3,                                 :null => false
    t.decimal  "OPCCVC",                             :precision => 13, :scale => 2, :null => false
    t.decimal  "OPCTTC",                             :precision => 10, :scale => 6, :null => false
    t.string   "OPCCPR",               :limit => 3,                                 :null => false
    t.string   "OPCAST",               :limit => 1,                                 :null => false
    t.string   "OPCDTL",               :limit => 13,                                :null => false
    t.string   "OPCCCB",               :limit => 13,                                :null => false
    t.string   "OPCTSF",               :limit => 1,                                 :null => false
    t.string   "OPCTC1",               :limit => 1,                                 :null => false
    t.string   "OPCTC2",               :limit => 1,                                 :null => false
    t.string   "OPCTSB",               :limit => 1,                                 :null => false
    t.string   "OPCMCL",               :limit => 3,                                 :null => false
    t.string   "OPCCCH",               :limit => 13,                                :null => false
    t.string   "OPCCCC",               :limit => 1,                                 :null => false
    t.string   "OPCCFL",               :limit => 16,                                :null => false
    t.string   "OPDSFS",               :limit => 1,                                 :null => false
    t.string   "OPDSC1",               :limit => 1,                                 :null => false
    t.string   "OPDSC2",               :limit => 1,                                 :null => false
    t.string   "OPDSTV",               :limit => 1,                                 :null => false
    t.string   "OPCSFA",               :limit => 1,                                 :null => false
    t.string   "OPCSC1",               :limit => 1,                                 :null => false
    t.string   "OPCSC2",               :limit => 1,                                 :null => false
    t.string   "OPCSTV",               :limit => 1,                                 :null => false
    t.string   "OPDDCD",               :limit => 3,                                 :null => false
    t.string   "OPCDCD",               :limit => 3,                                 :null => false
    t.string   "OPDFRT",               :limit => 6,                                 :null => false
    t.string   "OPDC1T",               :limit => 6,                                 :null => false
    t.string   "OPDC2T",               :limit => 6,                                 :null => false
    t.string   "OPDFRC",               :limit => 1,                                 :null => false
    t.string   "OPDC1C",               :limit => 1,                                 :null => false
    t.string   "OPDC2C",               :limit => 1,                                 :null => false
    t.string   "OPDTVC",               :limit => 1,                                 :null => false
    t.string   "OPCFRT",               :limit => 6,                                 :null => false
    t.string   "OPCC1T",               :limit => 6,                                 :null => false
    t.string   "OPCC2T",               :limit => 6,                                 :null => false
    t.string   "OPCFRC",               :limit => 1,                                 :null => false
    t.string   "OPCC1C",               :limit => 1,                                 :null => false
    t.string   "OPCC2C",               :limit => 1,                                 :null => false
    t.string   "OPCTVC",               :limit => 1,                                 :null => false
    t.decimal  "OPDTMR",                             :precision => 13, :scale => 2, :null => false
    t.decimal  "OPDTML",                             :precision => 13, :scale => 2, :null => false
    t.decimal  "OPDTCB",                             :precision => 13, :scale => 8, :null => false
    t.decimal  "OPCTMR",                             :precision => 13, :scale => 2, :null => false
    t.decimal  "OPCTML",                             :precision => 13, :scale => 2, :null => false
    t.decimal  "OPCTCB",                             :precision => 13, :scale => 8, :null => false
    t.string   "OPFILSU",              :limit => 48,                                :null => false
    t.string   "fimis_status",         :limit => 1
    t.datetime "record_creation_date"
    t.string   "Group_Identifier",     :limit => 50
    t.string   "Entity_Identifier",    :limit => 50
    t.string   "Source_Identifier",    :limit => 50
    t.string   "Source_Package",       :limit => 50
  end

  create_table "FIMIS_TA_SRC_OLY_G_TransactionsOnContracts_FDCLOG", :id => false, :force => true do |t|
    t.integer  "LCLPRO",               :limit => nil, :precision => 7,  :scale => 0, :null => false
    t.integer  "LCLID",                :limit => nil, :precision => 3,  :scale => 0, :null => false
    t.string   "LCLSEQ",               :limit => 7,                                  :null => false
    t.string   "CTID",                 :limit => 3,                                  :null => false
    t.string   "CTCONT",               :limit => 10,                                 :null => false
    t.string   "CTNOPR",               :limit => 5,                                  :null => false
    t.string   "CTDTOU",               :limit => 6,                                  :null => false
    t.string   "CTDTPR",               :limit => 6,                                  :null => false
    t.string   "CTDTLQ",               :limit => 6,                                  :null => false
    t.string   "CTOPER",               :limit => 1,                                  :null => false
    t.string   "CTSTAT",               :limit => 1,                                  :null => false
    t.string   "CTSAIP",               :limit => 7,                                  :null => false
    t.string   "CTCNTP",               :limit => 7,                                  :null => false
    t.string   "CTRACI",               :limit => 7,                                  :null => false
    t.string   "CTGRE",                :limit => 3,                                  :null => false
    t.string   "CTRUB",                :limit => 3,                                  :null => false
    t.string   "CTMON",                :limit => 3,                                  :null => false
    t.integer  "CTTYPE",               :limit => nil, :precision => 3,  :scale => 0, :null => false
    t.integer  "CTBACA",               :limit => nil, :precision => 1,  :scale => 0, :null => false
    t.string   "CTDTEJ",               :limit => 2,                                  :null => false
    t.string   "CTDTEM",               :limit => 2,                                  :null => false
    t.string   "CTDTEA",               :limit => 4,                                  :null => false
    t.string   "CTDJEX",               :limit => 2,                                  :null => false
    t.string   "CTDMEX",               :limit => 2,                                  :null => false
    t.string   "CTDAEX",               :limit => 4,                                  :null => false
    t.integer  "CTRECP",               :limit => nil, :precision => 3,  :scale => 0, :null => false
    t.string   "CTEMIP",               :limit => 7,                                  :null => false
    t.string   "CTEXEP",               :limit => 7,                                  :null => false
    t.string   "CTCHEZ",               :limit => 7,                                  :null => false
    t.string   "CTBIRA",               :limit => 7,                                  :null => false
    t.string   "CTCRAC",               :limit => 7,                                  :null => false
    t.string   "CTCGRE",               :limit => 3,                                  :null => false
    t.string   "CTCRUB",               :limit => 3,                                  :null => false
    t.string   "CTCMON",               :limit => 3,                                  :null => false
    t.string   "CTDRAC",               :limit => 7,                                  :null => false
    t.string   "CTDGRE",               :limit => 3,                                  :null => false
    t.string   "CTDRUB",               :limit => 3,                                  :null => false
    t.string   "CTDMON",               :limit => 3,                                  :null => false
    t.string   "CTCOM1",               :limit => 35,                                 :null => false
    t.string   "CTCOM2",               :limit => 35,                                 :null => false
    t.string   "CTCOM3",               :limit => 35,                                 :null => false
    t.string   "CTCOM4",               :limit => 35,                                 :null => false
    t.decimal  "CTCAPI",                              :precision => 15, :scale => 2, :null => false
    t.decimal  "CTTAUX",                              :precision => 10, :scale => 6, :null => false
    t.string   "CTDTVJ",               :limit => 2,                                  :null => false
    t.string   "CTDTVM",               :limit => 2,                                  :null => false
    t.string   "CTDTVA",               :limit => 4,                                  :null => false
    t.string   "CTECHJ",               :limit => 2,                                  :null => false
    t.string   "CTECHM",               :limit => 2,                                  :null => false
    t.string   "CTECHA",               :limit => 4,                                  :null => false
    t.string   "CTFCHJ",               :limit => 2,                                  :null => false
    t.string   "CTFCHM",               :limit => 2,                                  :null => false
    t.string   "CTFCHA",               :limit => 4,                                  :null => false
    t.integer  "CTNBRJ",               :limit => nil, :precision => 4,  :scale => 0, :null => false
    t.integer  "CTSJOU",               :limit => nil, :precision => 3,  :scale => 0, :null => false
    t.decimal  "CTINTE",                              :precision => 15, :scale => 2, :null => false
    t.decimal  "CTINML",                              :precision => 15, :scale => 2, :null => false
    t.decimal  "CTINTC",                              :precision => 13, :scale => 8, :null => false
    t.string   "CTCIMP",               :limit => 1,                                  :null => false
    t.decimal  "CTIMPO",                              :precision => 15, :scale => 2, :null => false
    t.decimal  "CTCOMM",                              :precision => 15, :scale => 2, :null => false
    t.decimal  "CTTCOM",                              :precision => 8,  :scale => 6, :null => false
    t.decimal  "CTCOMI",                              :precision => 15, :scale => 2, :null => false
    t.decimal  "CTFRAI",                              :precision => 15, :scale => 2, :null => false
    t.decimal  "CTOTAU",                              :precision => 10, :scale => 6, :null => false
    t.decimal  "CTOCAP",                              :precision => 15, :scale => 2, :null => false
    t.string   "CTODVJ",               :limit => 2,                                  :null => false
    t.string   "CTODVM",               :limit => 2,                                  :null => false
    t.string   "CTODVA",               :limit => 4,                                  :null => false
    t.string   "CTODEJ",               :limit => 2,                                  :null => false
    t.string   "CTODEM",               :limit => 2,                                  :null => false
    t.string   "CTODEA",               :limit => 4,                                  :null => false
    t.decimal  "CTTARE",                              :precision => 10, :scale => 6, :null => false
    t.decimal  "CTTASW",                              :precision => 10, :scale => 6, :null => false
    t.decimal  "CTCRCO",                              :precision => 13, :scale => 8, :null => false
    t.decimal  "CTCRTE",                              :precision => 13, :scale => 8, :null => false
    t.decimal  "CTTABA",                              :precision => 10, :scale => 6, :null => false
    t.string   "CTSIMA",               :limit => 1,                                  :null => false
    t.decimal  "CTMARG",                              :precision => 10, :scale => 6, :null => false
    t.string   "CTRORI",               :limit => 7,                                  :null => false
    t.string   "CTRGRP",               :limit => 7,                                  :null => false
    t.string   "CTVREF",               :limit => 16,                                 :null => false
    t.string   "CTFIOP",               :limit => 1,                                  :null => false
    t.string   "CTFRIN",               :limit => 2,                                  :null => false
    t.string   "CTDPIJ",               :limit => 2,                                  :null => false
    t.string   "CTDPIM",               :limit => 2,                                  :null => false
    t.string   "CTDPIA",               :limit => 4,                                  :null => false
    t.string   "CTDJIN",               :limit => 2,                                  :null => false
    t.string   "CTDMIN",               :limit => 2,                                  :null => false
    t.string   "CTDAIN",               :limit => 4,                                  :null => false
    t.string   "CTAMCD",               :limit => 1,                                  :null => false
    t.string   "CTAMFR",               :limit => 2,                                  :null => false
    t.decimal  "CTAMTX",                              :precision => 10, :scale => 6, :null => false
    t.string   "CTAMDJ",               :limit => 2,                                  :null => false
    t.string   "CTAMDM",               :limit => 2,                                  :null => false
    t.string   "CTAMDA",               :limit => 4,                                  :null => false
    t.string   "CTADDJ",               :limit => 2,                                  :null => false
    t.string   "CTADDM",               :limit => 2,                                  :null => false
    t.string   "CTADDA",               :limit => 4,                                  :null => false
    t.decimal  "CTAMMT",                              :precision => 15, :scale => 2, :null => false
    t.decimal  "CTAMCU",                              :precision => 15, :scale => 2, :null => false
    t.integer  "CTAMNB",               :limit => nil, :precision => 3,  :scale => 0, :null => false
    t.string   "CTAGNR",               :limit => 7,                                  :null => false
    t.decimal  "CTINTT",                              :precision => 15, :scale => 2, :null => false
    t.decimal  "CTCOMT",                              :precision => 15, :scale => 2, :null => false
    t.string   "CTFGRE",               :limit => 3,                                  :null => false
    t.string   "CTCCAP",               :limit => 1,                                  :null => false
    t.string   "CTCRET",               :limit => 1,                                  :null => false
    t.string   "CTTECH",               :limit => 1,                                  :null => false
    t.string   "CTCRNV",               :limit => 1,                                  :null => false
    t.string   "CTCDIN",               :limit => 1,                                  :null => false
    t.string   "CTIVDJ",               :limit => 2,                                  :null => false
    t.string   "CTIVDM",               :limit => 2,                                  :null => false
    t.string   "CTIVDA",               :limit => 4,                                  :null => false
    t.string   "CTIVAJ",               :limit => 2,                                  :null => false
    t.string   "CTIVAM",               :limit => 2,                                  :null => false
    t.string   "CTIVAA",               :limit => 4,                                  :null => false
    t.string   "CTATIO",               :limit => 1,                                  :null => false
    t.integer  "CTISMT",               :limit => nil, :precision => 11, :scale => 0, :null => false
    t.integer  "CTSEUI",               :limit => nil, :precision => 11, :scale => 0, :null => false
    t.string   "CTCORI",               :limit => 1,                                  :null => false
    t.string   "CTANCT",               :limit => 7,                                  :null => false
    t.string   "CTPLIO",               :limit => 1,                                  :null => false
    t.string   "CTPLRM",               :limit => 20,                                 :null => false
    t.string   "CTPLSY",               :limit => 3,                                  :null => false
    t.decimal  "CTPLAC",                              :precision => 15, :scale => 2, :null => false
    t.string   "CTPLAS",               :limit => 1,                                  :null => false
    t.string   "CTPLTR",               :limit => 1,                                  :null => false
    t.string   "CTPLDU",               :limit => 4,                                  :null => false
    t.string   "CTPLPE",               :limit => 1,                                  :null => false
    t.string   "CTPLHR",               :limit => 2,                                  :null => false
    t.string   "CTPLMR",               :limit => 2,                                  :null => false
    t.string   "CTPLSR",               :limit => 2,                                  :null => false
    t.string   "CTPLBD",               :limit => 1,                                  :null => false
    t.string   "CTFIL1",               :limit => 2,                                  :null => false
    t.string   "CTFDEC",               :limit => 1,                                  :null => false
    t.string   "CTPTCI",               :limit => 1,                                  :null => false
    t.string   "CTSNJS",               :limit => 1,                                  :null => false
    t.integer  "CTNJSU",               :limit => nil, :precision => 1,  :scale => 0, :null => false
    t.decimal  "CTACIN",                              :precision => 15, :scale => 2, :null => false
    t.string   "CTACDJ",               :limit => 2,                                  :null => false
    t.string   "CTACDM",               :limit => 2,                                  :null => false
    t.string   "CTACDA",               :limit => 4,                                  :null => false
    t.string   "CTCCOM",               :limit => 1,                                  :null => false
    t.string   "CTTYPC",               :limit => 1,                                  :null => false
    t.string   "CTCENT",               :limit => 7,                                  :null => false
    t.decimal  "CTTAUI",                              :precision => 10, :scale => 6, :null => false
    t.string   "CTIESC",               :limit => 1,                                  :null => false
    t.string   "CTITRD",               :limit => 1,                                  :null => false
    t.string   "CTEMES",               :limit => 1,                                  :null => false
    t.string   "CTPMES",               :limit => 1,                                  :null => false
    t.integer  "CTNJRS",               :limit => nil, :precision => 2,  :scale => 0, :null => false
    t.string   "CTARAC",               :limit => 7,                                  :null => false
    t.string   "CTAGRE",               :limit => 3,                                  :null => false
    t.string   "CTARUB",               :limit => 3,                                  :null => false
    t.string   "CTAMON",               :limit => 3,                                  :null => false
    t.string   "CTADRA",               :limit => 7,                                  :null => false
    t.string   "CTADGR",               :limit => 3,                                  :null => false
    t.string   "CTADRU",               :limit => 3,                                  :null => false
    t.string   "CTADMO",               :limit => 3,                                  :null => false
    t.string   "CTACRA",               :limit => 7,                                  :null => false
    t.string   "CTACGR",               :limit => 3,                                  :null => false
    t.string   "CTACRU",               :limit => 3,                                  :null => false
    t.string   "CTACMO",               :limit => 3,                                  :null => false
    t.string   "CTAREC",               :limit => 3,                                  :null => false
    t.string   "CTDTOJ",               :limit => 2,                                  :null => false
    t.string   "CTDTOM",               :limit => 2,                                  :null => false
    t.string   "CTDTOA",               :limit => 4,                                  :null => false
    t.string   "CTGERA",               :limit => 7,                                  :null => false
    t.string   "CTSYMP",               :limit => 3,                                  :null => false
    t.string   "CTDURE",               :limit => 4,                                  :null => false
    t.string   "CTPERI",               :limit => 1,                                  :null => false
    t.string   "CTGROU",               :limit => 1,                                  :null => false
    t.string   "CTORMQ",               :limit => 38,                                 :null => false
    t.string   "CTINTV",               :limit => 1,                                  :null => false
    t.string   "CTSEQG",               :limit => 5,                                  :null => false
    t.string   "CTBRMQ",               :limit => 38,                                 :null => false
    t.string   "CTOPBO",               :limit => 7,                                  :null => false
    t.string   "CTSTBO",               :limit => 1,                                  :null => false
    t.string   "CTGDVJ",               :limit => 2,                                  :null => false
    t.string   "CTGDVM",               :limit => 2,                                  :null => false
    t.string   "CTGDVA",               :limit => 4,                                  :null => false
    t.string   "CTGDEJ",               :limit => 2,                                  :null => false
    t.string   "CTGDEM",               :limit => 2,                                  :null => false
    t.string   "CTGDEA",               :limit => 4,                                  :null => false
    t.string   "CTGRAC",               :limit => 7,                                  :null => false
    t.decimal  "CTGTAU",                              :precision => 10, :scale => 6, :null => false
    t.string   "CTCPTI",               :limit => 16,                                 :null => false
    t.string   "CTFORC",               :limit => 1,                                  :null => false
    t.string   "CTODRA",               :limit => 7,                                  :null => false
    t.string   "CTODGR",               :limit => 3,                                  :null => false
    t.string   "CTODRU",               :limit => 3,                                  :null => false
    t.string   "CTODMO",               :limit => 3,                                  :null => false
    t.string   "CTOCRA",               :limit => 7,                                  :null => false
    t.string   "CTOCGR",               :limit => 3,                                  :null => false
    t.string   "CTOCRU",               :limit => 3,                                  :null => false
    t.string   "CTOCMO",               :limit => 3,                                  :null => false
    t.string   "CTOCON",               :limit => 3,                                  :null => false
    t.string   "CTOGRP",               :limit => 1,                                  :null => false
    t.string   "CTOREM",               :limit => 38,                                 :null => false
    t.string   "CTOINT",               :limit => 1,                                  :null => false
    t.string   "CTOSYM",               :limit => 3,                                  :null => false
    t.string   "CTOPTI",               :limit => 1,                                  :null => false
    t.decimal  "CTTVA",                               :precision => 15, :scale => 2, :null => false
    t.decimal  "CTTTVA",                              :precision => 6,  :scale => 4, :null => false
    t.string   "CTCTVA",               :limit => 3,                                  :null => false
    t.string   "CTCASS",               :limit => 1,                                  :null => false
    t.decimal  "CTMONL",                              :precision => 15, :scale => 2, :null => false
    t.string   "CTBTVA",               :limit => 1,                                  :null => false
    t.decimal  "CTCOUR",                              :precision => 13, :scale => 8, :null => false
    t.string   "CTOPTD",               :limit => 1,                                  :null => false
    t.string   "CTRPLA",               :limit => 7,                                  :null => false
    t.string   "CTEPLA",               :limit => 1,                                  :null => false
    t.string   "CTTPLA",               :limit => 8,                                  :null => false
    t.string   "CTZCRC",               :limit => 16,                                 :null => false
    t.string   "CTZDBC",               :limit => 16,                                 :null => false
    t.string   "CTLAFL",               :limit => 7,                                  :null => false
    t.decimal  "CTTAUC",                              :precision => 10, :scale => 6, :null => false
    t.decimal  "CTTAUL",                              :precision => 10, :scale => 6, :null => false
    t.string   "CDTVIJ",               :limit => 2,                                  :null => false
    t.string   "CDTVIM",               :limit => 2,                                  :null => false
    t.string   "CDTVIA",               :limit => 4,                                  :null => false
    t.string   "CTTYPT",               :limit => 3,                                  :null => false
    t.string   "CTACPI",               :limit => 16,                                 :null => false
    t.string   "CTSGES",               :limit => 7,                                  :null => false
    t.string   "CTFIL3",               :limit => 206,                                :null => false
    t.string   "LCSTAT",               :limit => 1,                                  :null => false
    t.string   "LCCPTA",               :limit => 1,                                  :null => false
    t.string   "LCCONF",               :limit => 1,                                  :null => false
    t.string   "LCDTSY",               :limit => 8,                                  :null => false
    t.string   "LCTIME",               :limit => 6,                                  :null => false
    t.string   "LCLOPR",               :limit => 7,                                  :null => false
    t.string   "fimis_status",         :limit => 1
    t.datetime "record_creation_date"
    t.string   "Group_Identifier",     :limit => 50
    t.string   "Entity_Identifier",    :limit => 50
    t.string   "Source_Identifier",    :limit => 50
    t.string   "Source_Package",       :limit => 50
  end

  create_table "FIMIS_TA_SRC_OLY_G_TransactionsOnForex_FDBLOD", :id => false, :force => true do |t|
    t.integer  "LDLPRO",               :limit => nil, :precision => 7,  :scale => 0,                                          :null => false
    t.integer  "LDLID",                :limit => nil, :precision => 3,  :scale => 0,                                          :null => false
    t.integer  "LDLREF",               :limit => nil, :precision => 7,  :scale => 0,                                          :null => false
    t.integer  "LDLSEQ",               :limit => nil, :precision => 5,  :scale => 0,                                          :null => false
    t.string   "LDSTAT",               :limit => 1,                                                                           :null => false
    t.string   "LDCPTA",               :limit => 1,                                                                           :null => false
    t.string   "LDCONF",               :limit => 1,                                                                           :null => false
    t.string   "LDDTJJ",               :limit => 2,                                                                           :null => false
    t.string   "LDDTMM",               :limit => 2,                                                                           :null => false
    t.string   "LDDTAA",               :limit => 2,                                                                           :null => false
    t.string   "LDTIME",               :limit => 6,                                                                           :null => false
    t.integer  "LDLOPR",               :limit => nil, :precision => 7,  :scale => 0, :default => 0
    t.integer  "LDCTRL",               :limit => nil, :precision => 7,  :scale => 0, :default => 0
    t.string   "LDCHID",               :limit => 3,                                                                           :null => false
    t.string   "LDCONT",               :limit => 7,                                                                           :null => false
    t.string   "LDACTN",               :limit => 1,                                                                           :null => false
    t.string   "LDOPTN",               :limit => 1,                                                                           :null => false
    t.string   "LDETAT",               :limit => 1,                                                                           :null => false
    t.string   "LDRACI",               :limit => 7,                                                                           :null => false
    t.string   "LDAD01",               :limit => 35,                                                                          :null => false
    t.string   "LDAD02",               :limit => 35,                                                                          :null => false
    t.string   "LDAD03",               :limit => 35,                                                                          :null => false
    t.string   "LDAD04",               :limit => 35,                                                                          :null => false
    t.string   "LDOPER",               :limit => 7,                                                                           :null => false
    t.string   "LDCNTR",               :limit => 7,                                                                           :null => false
    t.string   "LDDTDJ",               :limit => 2,                                                                           :null => false
    t.string   "LDDTDM",               :limit => 2,                                                                           :null => false
    t.string   "LDDTDA",               :limit => 4,                                                                           :null => false
    t.string   "LDDTOJ",               :limit => 2,                                                                           :null => false
    t.string   "LDDTOM",               :limit => 2,                                                                           :null => false
    t.string   "LDDTOA",               :limit => 4,                                                                           :null => false
    t.string   "LDRECP",               :limit => 3,                                                                           :null => false
    t.string   "LDRECT",               :limit => 16,                                                                          :null => false
    t.string   "LDEMIS",               :limit => 7,                                                                           :null => false
    t.string   "LDEMIT",               :limit => 16,                                                                          :null => false
    t.string   "LDEXEC",               :limit => 7,                                                                           :null => false
    t.string   "LDEXET",               :limit => 16,                                                                          :null => false
    t.string   "LDAAMN",               :limit => 3,                                                                           :null => false
    t.string   "LDANMN",               :limit => 3,                                                                           :null => false
    t.decimal  "LDAMNT",                              :precision => 15, :scale => 2, :default => 0.0
    t.string   "LDVAMN",               :limit => 3,                                                                           :null => false
    t.string   "LDVNMN",               :limit => 3,                                                                           :null => false
    t.decimal  "LDVMNT",                              :precision => 15, :scale => 2, :default => 0.0
    t.string   "LDFCRS",               :limit => 1,                                                                           :null => false
    t.decimal  "LDCRSP",                              :precision => 13, :scale => 8, :default => 0.0
    t.string   "LDPMSW",               :limit => 1,                                                                           :null => false
    t.decimal  "LDCRSW",                              :precision => 13, :scale => 8, :default => 0.0
    t.decimal  "LDCRNT",                              :precision => 13, :scale => 8, :default => 0.0
    t.decimal  "LDCNTV",                              :precision => 15, :scale => 2, :default => 0.0
    t.string   "LDDTVJ",               :limit => 2,                                                                           :null => false
    t.string   "LDDTVM",               :limit => 2,                                                                           :null => false
    t.string   "LDDTVA",               :limit => 4,                                                                           :null => false
    t.string   "LDDTSJ",               :limit => 2,                                                                           :null => false
    t.string   "LDDTSM",               :limit => 2,                                                                           :null => false
    t.string   "LDDTSA",               :limit => 4,                                                                           :null => false
    t.decimal  "LDVCNT",                              :precision => 15, :scale => 2, :default => 0.0
    t.decimal  "LDACNT",                              :precision => 15, :scale => 2, :default => 0.0
    t.decimal  "LDPCNT",                              :precision => 6,  :scale => 3, :default => 0.0
    t.string   "LDCOPE",               :limit => 3,                                                                           :null => false
    t.string   "LDFOPT",               :limit => 1,                                                                           :null => false
    t.string   "LDRFOR",               :limit => 7,                                                                           :null => false
    t.string   "LDTYPC",               :limit => 3,                                                                           :null => false
    t.string   "LDTTPC",               :limit => 5,                                                                           :null => false
    t.string   "LDCRTT",               :limit => 7,                                                                           :null => false
    t.string   "LDTDRA",               :limit => 7,                                                                           :null => false
    t.string   "LDTDGR",               :limit => 3,                                                                           :null => false
    t.string   "LDTDRU",               :limit => 3,                                                                           :null => false
    t.string   "LDTDMN",               :limit => 3,                                                                           :null => false
    t.string   "LDTCRA",               :limit => 7,                                                                           :null => false
    t.string   "LDTCGR",               :limit => 3,                                                                           :null => false
    t.string   "LDTCRU",               :limit => 3,                                                                           :null => false
    t.string   "LDTCMN",               :limit => 3,                                                                           :null => false
    t.string   "LDDBRA",               :limit => 7,                                                                           :null => false
    t.string   "LDDBGR",               :limit => 3,                                                                           :null => false
    t.string   "LDDBRU",               :limit => 3,                                                                           :null => false
    t.string   "LDDBMN",               :limit => 3,                                                                           :null => false
    t.string   "LDDBA1",               :limit => 35,                                                                          :null => false
    t.string   "LDDBA2",               :limit => 35,                                                                          :null => false
    t.string   "LDDBA3",               :limit => 35,                                                                          :null => false
    t.string   "LDDAB4",               :limit => 35,                                                                          :null => false
    t.string   "LDCRRA",               :limit => 7,                                                                           :null => false
    t.string   "LDCRGR",               :limit => 3,                                                                           :null => false
    t.string   "LDCRRU",               :limit => 3,                                                                           :null => false
    t.string   "LDCRMN",               :limit => 3,                                                                           :null => false
    t.string   "LDCRA1",               :limit => 35,                                                                          :null => false
    t.string   "LDCRA2",               :limit => 35,                                                                          :null => false
    t.string   "LDCRA3",               :limit => 35,                                                                          :null => false
    t.string   "LDCRB4",               :limit => 35,                                                                          :null => false
    t.string   "LDCRCH",               :limit => 7,                                                                           :null => false
    t.string   "LDCHA1",               :limit => 35,                                                                          :null => false
    t.string   "LDCHA2",               :limit => 35,                                                                          :null => false
    t.string   "LDCHA3",               :limit => 35,                                                                          :null => false
    t.string   "LDCHB4",               :limit => 35,                                                                          :null => false
    t.string   "LDREM1",               :limit => 35,                                                                          :null => false
    t.string   "LDREM2",               :limit => 35,                                                                          :null => false
    t.string   "LDREM3",               :limit => 35,                                                                          :null => false
    t.string   "LDREM4",               :limit => 35,                                                                          :null => false
    t.decimal  "LDACOM",                              :precision => 13, :scale => 2, :default => 0.0
    t.decimal  "LDVCOM",                              :precision => 13, :scale => 2, :default => 0.0
    t.string   "LDTCFJ",               :limit => 2,                                                                           :null => false
    t.string   "LDTCFM",               :limit => 2,                                                                           :null => false
    t.string   "LDTCFA",               :limit => 4,                                                                           :null => false
    t.string   "LDCFIL",               :limit => 3,                                                                           :null => false
    t.string   "LDREFR",               :limit => 16,                                                                          :null => false
    t.string   "LDFCLS",               :limit => 1,                                                                           :null => false
    t.decimal  "LDCMLS",                              :precision => 13, :scale => 8, :default => 0.0
    t.string   "LDFCLT",               :limit => 1,                                                                           :null => false
    t.decimal  "LDCMLT",                              :precision => 13, :scale => 8, :default => 0.0
    t.string   "LDCENM",               :limit => 1,                                                                           :null => false
    t.string   "LDCPCN",               :limit => 1,                                                                           :null => false
    t.string   "LDCPCO",               :limit => 1,                                                                           :null => false
    t.string   "LDBIRC",               :limit => 7,                                                                           :null => false
    t.string   "LDBIA1",               :limit => 35,                                                                          :null => false
    t.string   "LDBIA2",               :limit => 35,                                                                          :null => false
    t.string   "LDBIA3",               :limit => 35,                                                                          :null => false
    t.string   "LDBIA4",               :limit => 35,                                                                          :null => false
    t.string   "LDRFEX",               :limit => 7,                                                                           :null => false
    t.string   "LDCOEX",               :limit => 1,                                                                           :null => false
    t.integer  "LDGRE",                :limit => nil, :precision => 3,  :scale => 0, :default => 0
    t.integer  "LDAVCD",               :limit => nil, :precision => 3,  :scale => 0, :default => 0
    t.string   "LDAVFL",               :limit => 5,                                                                           :null => false
    t.decimal  "LDTTMA",                              :precision => 10, :scale => 6, :default => 0.0
    t.decimal  "LDTTMV",                              :precision => 10, :scale => 6, :default => 0.0
    t.decimal  "LDTCMA",                              :precision => 10, :scale => 6, :default => 0.0
    t.decimal  "LDTCMV",                              :precision => 10, :scale => 6, :default => 0.0
    t.decimal  "LDCRSM",                              :precision => 13, :scale => 8, :default => 0.0
    t.integer  "LDMCLI",               :limit => nil, :precision => 3,  :scale => 0, :default => 0
    t.decimal  "LDCVC",                               :precision => 15, :scale => 2, :default => 0.0
    t.decimal  "LDTCVC",                              :precision => 15, :scale => 2, :default => 0.0
    t.decimal  "LDRSML",                              :precision => 15, :scale => 2, :default => 0.0
    t.integer  "LDLIRV",               :limit => nil, :precision => 7,  :scale => 0, :default => 0
    t.decimal  "LDESAM",                              :precision => 15, :scale => 2, :default => 0.0
    t.decimal  "LDESVM",                              :precision => 15, :scale => 2, :default => 0.0
    t.integer  "LDCOVI",               :limit => nil, :precision => 7,  :scale => 0, :default => 0
    t.string   "CHCENT",               :limit => 7,                                                                           :null => false
    t.string   "CHIDSF",               :limit => 3,                                                                           :null => false
    t.string   "LDFILL",               :limit => 141,                                                                         :null => false
    t.string   "fimis_status",         :limit => 1
    t.datetime "Record_Creation_Date"
    t.string   "Group_Identifier",     :limit => 50,                                 :default => "Hapoalim Switzerland Ltd."
    t.string   "Entity_Identifier",    :limit => 50
    t.string   "Source_Identifier",    :limit => 50,                                 :default => "EOM"
    t.string   "Source_Package",       :limit => 50,                                 :default => "OLY"
  end

  create_table "FIMIS_TA_SRC_OLY_G_TransactionsOnSecurities_FDBLOT", :id => false, :force => true do |t|
    t.string   "LTLPRO",               :limit => 7,                                  :null => false
    t.string   "LTLID",                :limit => 3,                                  :null => false
    t.string   "LTLREF",               :limit => 7,                                  :null => false
    t.string   "LTLSEQ",               :limit => 5,                                  :null => false
    t.string   "LTSTAT",               :limit => 1,                                  :null => false
    t.string   "LTCPTA",               :limit => 1,                                  :null => false
    t.string   "LTCONF",               :limit => 1,                                  :null => false
    t.string   "LTDTJJ",               :limit => 2,                                  :null => false
    t.string   "LTDTMM",               :limit => 2,                                  :null => false
    t.string   "LTDTAA",               :limit => 2,                                  :null => false
    t.string   "LTTIME",               :limit => 6,                                  :null => false
    t.integer  "LTLOPR",               :limit => nil, :precision => 7,  :scale => 0, :null => false
    t.integer  "LTCTRL",               :limit => nil, :precision => 7,  :scale => 0, :null => false
    t.string   "LTCLIR",               :limit => 7,                                  :null => false
    t.string   "LTCLIS",               :limit => 3,                                  :null => false
    t.string   "LTVALR",               :limit => 7,                                  :null => false
    t.string   "LTVALS",               :limit => 3,                                  :null => false
    t.string   "LTDEPR",               :limit => 7,                                  :null => false
    t.string   "LTDEPS",               :limit => 3,                                  :null => false
    t.string   "LTCOPE",               :limit => 3,                                  :null => false
    t.string   "LTFCOP",               :limit => 3,                                  :null => false
    t.integer  "LTQEX1",               :limit => nil, :precision => 13, :scale => 0
    t.decimal  "LTCEX1",                              :precision => 12, :scale => 5
    t.integer  "LTQEX2",               :limit => nil, :precision => 13, :scale => 0
    t.decimal  "LTCEX2",                              :precision => 12, :scale => 5
    t.integer  "LTQEX3",               :limit => nil, :precision => 13, :scale => 0
    t.decimal  "LTCEX3",                              :precision => 12, :scale => 5
    t.integer  "LTQEX4",               :limit => nil, :precision => 13, :scale => 0
    t.decimal  "LTCEX4",                              :precision => 12, :scale => 5
    t.integer  "LTQEX5",               :limit => nil, :precision => 13, :scale => 0
    t.decimal  "LTCEX5",                              :precision => 12, :scale => 5
    t.integer  "LTQEXE",               :limit => nil, :precision => 13, :scale => 0, :null => false
    t.decimal  "LTCEXE",                              :precision => 12, :scale => 5, :null => false
    t.string   "LTMCRS",               :limit => 3,                                  :null => false
    t.string   "LTMTIT",               :limit => 3,                                  :null => false
    t.string   "LTMREG",               :limit => 3,                                  :null => false
    t.decimal  "LTCCRS",                              :precision => 13, :scale => 8, :null => false
    t.decimal  "LTCTIT",                              :precision => 13, :scale => 8, :null => false
    t.decimal  "LTCREG",                              :precision => 13, :scale => 8, :null => false
    t.decimal  "LTCCPT",                              :precision => 13, :scale => 8, :null => false
    t.string   "LTDTOJ",               :limit => 2,                                  :null => false
    t.string   "LTDTOM",               :limit => 2,                                  :null => false
    t.string   "LTDTOA",               :limit => 4,                                  :null => false
    t.string   "LTDTVJ",               :limit => 2,                                  :null => false
    t.string   "LTDTVM",               :limit => 2,                                  :null => false
    t.string   "LTDTVA",               :limit => 4,                                  :null => false
    t.string   "LTDTSJ",               :limit => 2,                                  :null => false
    t.string   "LTDTSM",               :limit => 2,                                  :null => false
    t.string   "LTDTSA",               :limit => 4,                                  :null => false
    t.string   "LTOPRN",               :limit => 7,                                  :null => false
    t.string   "LTEMIP",               :limit => 7,                                  :null => false
    t.string   "LTCNTP",               :limit => 7,                                  :null => false
    t.string   "LTOPRT",               :limit => 7,                                  :null => false
    t.string   "LTPLBO",               :limit => 3,                                  :null => false
    t.string   "LTTEXE",               :limit => 1,                                  :null => false
    t.string   "LTCEXT",               :limit => 1,                                  :null => false
    t.string   "LTRACI",               :limit => 7,                                  :null => false
    t.string   "LTGRE",                :limit => 3,                                  :null => false
    t.string   "LTRUB",                :limit => 3,                                  :null => false
    t.string   "LTMON",                :limit => 3,                                  :null => false
    t.string   "LTCRAC",               :limit => 7,                                  :null => false
    t.string   "LTCGRE",               :limit => 3,                                  :null => false
    t.string   "LTCRUB",               :limit => 3,                                  :null => false
    t.string   "LTCMON",               :limit => 3,                                  :null => false
    t.string   "LTDCRA",               :limit => 7,                                  :null => false
    t.string   "LTDCSU",               :limit => 3,                                  :null => false
    t.string   "LTCSRC",               :limit => 1,                                  :null => false
    t.string   "LTCRES",               :limit => 1,                                  :null => false
    t.string   "LTCLIV",               :limit => 3,                                  :null => false
    t.string   "LTRLIQ",               :limit => 3,                                  :null => false
    t.string   "LTTOPE",               :limit => 1,                                  :null => false
    t.string   "LTRORI",               :limit => 7,                                  :null => false
    t.string   "LTGENF",               :limit => 1,                                  :null => false
    t.string   "LTRUBT",               :limit => 3,                                  :null => false
    t.string   "LTGTIT",               :limit => 3,                                  :null => false
    t.string   "LTMCLI",               :limit => 3,                                  :null => false
    t.decimal  "LTCCLI",                              :precision => 13, :scale => 8, :null => false
    t.string   "LTIRAC",               :limit => 7,                                  :null => false
    t.string   "LTIGRE",               :limit => 3,                                  :null => false
    t.string   "LTIRUB",               :limit => 3,                                  :null => false
    t.string   "LTIMON",               :limit => 3,                                  :null => false
    t.decimal  "LTAGIO",                              :precision => 12, :scale => 5
    t.decimal  "LTNTMC",                              :precision => 15, :scale => 2
    t.string   "LTLVCD",               :limit => 1
    t.integer  "LTLVQN",               :limit => nil, :precision => 11, :scale => 0
    t.string   "LTLVDT",               :limit => 6
    t.string   "LTLVOP",               :limit => 7
    t.string   "LTLVTR",               :limit => 3
    t.string   "LTLVEX",               :limit => 1
    t.string   "LTLVST",               :limit => 1
    t.string   "LTLVDS",               :limit => 6
    t.string   "LTRFEX",               :limit => 7,                                  :null => false
    t.string   "LTOPEX",               :limit => 1,                                  :null => false
    t.string   "LTRFLV",               :limit => 7,                                  :null => false
    t.decimal  "LTCRBK",                              :precision => 12, :scale => 5, :null => false
    t.decimal  "LTDMMC",                              :precision => 15, :scale => 2, :null => false
    t.decimal  "LTDMMR",                              :precision => 15, :scale => 2, :null => false
    t.string   "LTMGGN",               :limit => 1,                                  :null => false
    t.string   "LTDQTE",               :limit => 3,                                  :null => false
    t.string   "LTMSTA",               :limit => 1,                                  :null => false
    t.string   "LTCMTR",               :limit => 1,                                  :null => false
    t.string   "LTDISR",               :limit => 7,                                  :null => false
    t.string   "LTDISS",               :limit => 3,                                  :null => false
    t.string   "LTEFIL",               :limit => 68,                                 :null => false
    t.decimal  "LTRMPF",                              :precision => 15, :scale => 2, :null => false
    t.decimal  "LTRMTF",                              :precision => 15, :scale => 2, :null => false
    t.decimal  "LTRMCF",                              :precision => 15, :scale => 2, :null => false
    t.decimal  "LTRCPF",                              :precision => 15, :scale => 2, :null => false
    t.decimal  "LTRCTF",                              :precision => 15, :scale => 2, :null => false
    t.decimal  "LTRCCF",                              :precision => 15, :scale => 2, :null => false
    t.string   "LTAMC2",               :limit => 3,                                  :null => false
    t.decimal  "LTMNT",                               :precision => 15, :scale => 2, :null => false
    t.decimal  "LTINT",                               :precision => 15, :scale => 2, :null => false
    t.string   "LTNJRS",               :limit => 3,                                  :null => false
    t.string   "LTSJRS",               :limit => 3,                                  :null => false
    t.decimal  "LTBRUT",                              :precision => 15, :scale => 2, :null => false
    t.string   "LTCCCR",               :limit => 1,                                  :null => false
    t.decimal  "LTCMCR",                              :precision => 11, :scale => 6, :null => false
    t.string   "LTAMR2",               :limit => 3
    t.decimal  "LTBTMR",                              :precision => 15, :scale => 2, :null => false
    t.decimal  "LTDEC1",                              :precision => 15, :scale => 2, :null => false
    t.decimal  "LTDEC2",                              :precision => 15, :scale => 2, :null => false
    t.decimal  "LTDEC3",                              :precision => 15, :scale => 2, :null => false
    t.decimal  "LTDEC4",                              :precision => 15, :scale => 2, :null => false
    t.decimal  "LTDEC5",                              :precision => 15, :scale => 2, :null => false
    t.decimal  "LTDEC6",                              :precision => 15, :scale => 2, :null => false
    t.string   "LTAMR3",               :limit => 3
    t.decimal  "LTNTMR",                              :precision => 15, :scale => 2, :null => false
    t.string   "LTCCRP",               :limit => 1,                                  :null => false
    t.decimal  "LTCMRP",                              :precision => 11, :scale => 6, :null => false
    t.string   "LTAMP2",               :limit => 3
    t.decimal  "LTNTMP",                              :precision => 15, :scale => 2, :null => false
    t.decimal  "LTNTML",                              :precision => 15, :scale => 2, :null => false
    t.decimal  "LTCOMM",                              :precision => 15, :scale => 2
    t.decimal  "LTTXIM",                              :precision => 7,  :scale => 5
    t.decimal  "LTTXRC",                              :precision => 7,  :scale => 5
    t.decimal  "LTTXNR",                              :precision => 7,  :scale => 5
    t.decimal  "LTRECU",                              :precision => 15, :scale => 2
    t.decimal  "LTNREC",                              :precision => 15, :scale => 2
    t.decimal  "LTIMPO",                              :precision => 15, :scale => 2
    t.string   "LTDTEX",               :limit => 6
    t.string   "LTCPNO",               :limit => 3
    t.string   "LTFRCP",               :limit => 2
    t.decimal  "LTTAUX",                              :precision => 9,  :scale => 6
    t.string   "LTEDTX",               :limit => 8
    t.decimal  "LTTXCO",                              :precision => 7,  :scale => 5
    t.decimal  "LTTXFR",                              :precision => 7,  :scale => 5
    t.string   "LTCTRT",               :limit => 1
    t.string   "LTRSRC",               :limit => 1
    t.string   "LTCCCP",               :limit => 1
    t.string   "LTCCNF",               :limit => 1
    t.string   "LTSTMB",               :limit => 1
    t.decimal  "LTTTMB",                              :precision => 5,  :scale => 3
    t.string   "LTSDRT",               :limit => 1
    t.decimal  "LTTDRT",                              :precision => 5,  :scale => 3
    t.string   "LTCSOU",               :limit => 1
    t.decimal  "LTTFL1",                              :precision => 5,  :scale => 3
    t.string   "LTCJOU",               :limit => 1
    t.string   "LTTCF1",               :limit => 1
    t.string   "LTTCF2",               :limit => 1
    t.string   "LTTFIL",               :limit => 2
    t.decimal  "LTRESQ",                              :precision => 17, :scale => 4, :null => false
    t.decimal  "LTRSMP",                              :precision => 15, :scale => 2, :null => false
    t.decimal  "LTRSMT",                              :precision => 15, :scale => 2, :null => false
    t.decimal  "LTRSCC",                              :precision => 15, :scale => 2, :null => false
    t.decimal  "LTRCMT",                              :precision => 15, :scale => 2, :null => false
    t.decimal  "LTFRSP",                              :precision => 12, :scale => 5, :null => false
    t.decimal  "LTCRAN",                              :precision => 12, :scale => 5, :null => false
    t.string   "LTTRFC",               :limit => 1,                                  :null => false
    t.decimal  "LTCTML",                              :precision => 15, :scale => 2, :null => false
    t.decimal  "LTCTMT",                              :precision => 15, :scale => 2, :null => false
    t.decimal  "LTCTMC",                              :precision => 15, :scale => 2, :null => false
    t.decimal  "LTPRML",                              :precision => 15, :scale => 2, :null => false
    t.decimal  "LTPRMT",                              :precision => 15, :scale => 2, :null => false
    t.decimal  "LTPRMC",                              :precision => 15, :scale => 2, :null => false
    t.decimal  "LTRSMC",                              :precision => 15, :scale => 2, :null => false
    t.decimal  "LTRCMC",                              :precision => 15, :scale => 2, :null => false
    t.string   "LTCCCC",               :limit => 1,                                  :null => false
    t.decimal  "LTCHCC",                              :precision => 11, :scale => 6, :null => false
    t.string   "LTTYPD",               :limit => 1
    t.integer  "LTBQTE",               :limit => nil, :precision => 15, :scale => 0
    t.string   "LTBVRC",               :limit => 7
    t.string   "LTBVRB",               :limit => 3
    t.decimal  "LTBMNT",                              :precision => 15, :scale => 2
    t.string   "LTBDRC",               :limit => 7
    t.string   "LTBDGR",               :limit => 3
    t.string   "LTBDRB",               :limit => 3
    t.string   "LTBDMN",               :limit => 3
    t.string   "LTBCRC",               :limit => 7
    t.string   "LTBCGR",               :limit => 3
    t.string   "LTBCRB",               :limit => 3
    t.string   "LTBCMN",               :limit => 3
    t.string   "LTNCTR",               :limit => 7
    t.decimal  "LTTAVR",                              :precision => 5,  :scale => 3
    t.decimal  "LTTAVD",                              :precision => 5,  :scale => 3
    t.decimal  "LTTRBR",                              :precision => 5,  :scale => 3
    t.decimal  "LTTRBD",                              :precision => 5,  :scale => 3
    t.string   "LTSEXT",               :limit => 20
    t.decimal  "LTSRS1",                              :precision => 15, :scale => 2
    t.decimal  "LTSRS2",                              :precision => 15, :scale => 2
    t.decimal  "LTSRS3",                              :precision => 15, :scale => 2
    t.decimal  "LTSRS4",                              :precision => 15, :scale => 2
    t.decimal  "LTSRS5",                              :precision => 15, :scale => 2
    t.decimal  "LTSRS6",                              :precision => 15, :scale => 2
    t.decimal  "LTSRS7",                              :precision => 15, :scale => 2
    t.decimal  "LTSRS8",                              :precision => 15, :scale => 2
    t.integer  "LTSRFE",               :limit => nil, :precision => 7,  :scale => 0
    t.string   "LTSRFB",               :limit => 20
    t.string   "LTSRFL",               :limit => 20
    t.decimal  "LTDCCL",                              :precision => 14, :scale => 6
    t.decimal  "LTDEFI",                              :precision => 15, :scale => 2
    t.decimal  "LTCRMR",                              :precision => 11, :scale => 6
    t.string   "LTDFDV",               :limit => 6
    t.decimal  "LTDFIS",                              :precision => 15, :scale => 2
    t.decimal  "LTDFIR",                              :precision => 15, :scale => 2
    t.string   "LTDFNJ",               :limit => 3
    t.string   "LTDFSJ",               :limit => 3
    t.string   "FILLER2",              :limit => 111
    t.string   "LTAVI1",               :limit => 35
    t.string   "LTAVI2",               :limit => 35
    t.string   "LTAVI3",               :limit => 35
    t.string   "LTAVI4",               :limit => 35
    t.string   "LTAVI5",               :limit => 35
    t.string   "LTAVI6",               :limit => 35
    t.string   "fimis_status",         :limit => 1
    t.datetime "Record_Creation_Date"
    t.string   "Group_Identifier",     :limit => 50
    t.string   "Entity_Identifier",    :limit => 50
    t.string   "Source_Identifier",    :limit => 50
    t.string   "Source_Package",       :limit => 50
  end

  create_table "FIMIS_TA_SRC_OLY_H_Limit_FDBLIM", :id => false, :force => true do |t|
    t.string   "LIRACI",               :limit => 7,                                  :null => false
    t.string   "LITYPE",               :limit => 3,                                  :null => false
    t.string   "LIMON",                :limit => 3,                                  :null => false
    t.integer  "LIMONT",               :limit => nil, :precision => 11, :scale => 0, :null => false
    t.string   "LIDTDB",               :limit => 6,                                  :null => false
    t.string   "LIDTFI",               :limit => 6,                                  :null => false
    t.string   "LIETAT",               :limit => 1,                                  :null => false
    t.string   "LIOPRN",               :limit => 7,                                  :null => false
    t.string   "Group_Identifier",     :limit => 50
    t.string   "Entity_Identifier",    :limit => 50
    t.string   "Source_Identifier",    :limit => 50
    t.datetime "Record_Creation_Date"
    t.string   "Source_Package",       :limit => 50
    t.integer  "Dim_Key"
    t.string   "Load_Date",            :limit => 50
  end

  create_table "FIMIS_TA_SRC_OLY_H_SecurityCharacterics_FDBVAL", :id => false, :force => true do |t|
    t.string   "VLVALR",               :limit => 7
    t.string   "VLVALS",               :limit => 3
    t.string   "VLGTI",                :limit => 3
    t.string   "VLETAT",               :limit => 1
    t.string   "VLDTOU",               :limit => 6
    t.string   "VLDTMU",               :limit => 6
    t.string   "VLDTAN",               :limit => 6
    t.integer  "VLNBRM",               :limit => nil, :precision => 5,  :scale => 0
    t.string   "VLOPRN",               :limit => 25
    t.string   "VLNOM1",               :limit => 35
    t.string   "VLNOM2",               :limit => 35
    t.string   "VLNOM3",               :limit => 35
    t.string   "VLNOM4",               :limit => 35
    t.string   "VLEDTX",               :limit => 8
    t.string   "VLNOMC",               :limit => 35
    t.integer  "VLNATU",               :limit => nil, :precision => 3,  :scale => 0
    t.string   "VLMONT",               :limit => 25
    t.string   "VLMONR",               :limit => 25
    t.integer  "VLCAPI",               :limit => nil, :precision => 13, :scale => 0
    t.integer  "VLNOMI",               :limit => nil, :precision => 11, :scale => 0
    t.integer  "VLNONV",               :limit => nil, :precision => 11, :scale => 0
    t.string   "VLDECQ",               :limit => 25
    t.string   "VLDLIB",               :limit => 8
    t.string   "VLDECH",               :limit => 8
    t.string   "VLDRBT",               :limit => 8
    t.decimal  "VLTAUX",                              :precision => 9,  :scale => 6
    t.string   "VLBSCL",               :limit => 25
    t.string   "VLDJOJ",               :limit => 2
    t.string   "VLDJOM",               :limit => 2
    t.string   "VLDJOA",               :limit => 4
    t.decimal  "VLVTMI",                              :precision => 9,  :scale => 6
    t.decimal  "VLVTMA",                              :precision => 9,  :scale => 6
    t.integer  "VLCPSA",               :limit => nil, :precision => 3,  :scale => 0
    t.string   "VLDRNC",               :limit => 8
    t.integer  "VLFRCP",               :limit => nil, :precision => 2,  :scale => 0
    t.string   "VLTITU",               :limit => 7
    t.integer  "VLDEQN",               :limit => nil, :precision => 1,  :scale => 0
    t.string   "VLRUBN",               :limit => 3
    t.string   "VLMTRN",               :limit => 1
    t.string   "VLCRET",               :limit => 1
    t.string   "VLBSFI",               :limit => 3
    t.string   "VLNATI",               :limit => 25
    t.string   "VLPAYS",               :limit => 25
    t.string   "VLBNSI",               :limit => 25
    t.string   "VLBNSN",               :limit => 25
    t.integer  "VLGRPT",               :limit => nil, :precision => 3,  :scale => 0
    t.integer  "VLGARN",               :limit => nil, :precision => 3,  :scale => 0
    t.integer  "VLDEPR",               :limit => nil, :precision => 7,  :scale => 0
    t.integer  "VLGERA",               :limit => nil, :precision => 7,  :scale => 0
    t.string   "VLPLBO",               :limit => 25
    t.integer  "VLCOTM",               :limit => nil, :precision => 3,  :scale => 0
    t.string   "VLCOTS",               :limit => 25
    t.integer  "VLCOTU",               :limit => nil, :precision => 2,  :scale => 0
    t.integer  "VLCOTB",               :limit => nil, :precision => 2,  :scale => 0
    t.string   "VLCOCC",               :limit => 1
    t.decimal  "VLCOCH",                              :precision => 9,  :scale => 5
    t.string   "VLRM01",               :limit => 1
    t.string   "VLRM02",               :limit => 1
    t.string   "VLRM03",               :limit => 1
    t.string   "VLRM04",               :limit => 1
    t.string   "VLRM05",               :limit => 1
    t.string   "VLRM06",               :limit => 1
    t.string   "VLRM07",               :limit => 1
    t.string   "VLCLSE",               :limit => 3
    t.decimal  "VLCRE1",                              :precision => 13, :scale => 5
    t.string   "VLCED1",               :limit => 6
    t.decimal  "VLCRE2",                              :precision => 13, :scale => 5
    t.string   "VLCED2",               :limit => 6
    t.decimal  "VLCRE3",                              :precision => 13, :scale => 5
    t.string   "VLCED3",               :limit => 6
    t.decimal  "VLCRF1",                              :precision => 13, :scale => 5
    t.string   "VLCFD1",               :limit => 6
    t.decimal  "VLCRF2",                              :precision => 13, :scale => 5
    t.string   "VLCFD2",               :limit => 6
    t.decimal  "VLCRF3",                              :precision => 13, :scale => 5
    t.string   "VLCFD3",               :limit => 6
    t.decimal  "VLCRB1",                              :precision => 13, :scale => 5
    t.string   "VLCBD1",               :limit => 6
    t.decimal  "VLCRB2",                              :precision => 13, :scale => 5
    t.string   "VLCBD2",               :limit => 6
    t.decimal  "VLCRB3",                              :precision => 13, :scale => 5
    t.string   "VLCBD3",               :limit => 6
    t.integer  "VLCPSN",               :limit => nil, :precision => 3,  :scale => 0
    t.string   "VLCDTX",               :limit => 8
    t.string   "VLCDTP",               :limit => 8
    t.string   "VLCDTV",               :limit => 8
    t.integer  "VLCMON",               :limit => nil, :precision => 3,  :scale => 0
    t.decimal  "VLCMNT",                              :precision => 13, :scale => 5
    t.decimal  "VLCCHG",                              :precision => 10, :scale => 6
    t.string   "VLCCCH",               :limit => 1
    t.integer  "VLSCPS",               :limit => nil, :precision => 3,  :scale => 0
    t.string   "VLSDTX",               :limit => 8
    t.string   "VLSDTP",               :limit => 8
    t.string   "VLSDTV",               :limit => 8
    t.integer  "VLSMON",               :limit => nil, :precision => 3,  :scale => 0
    t.decimal  "VLSMNT",                              :precision => 13, :scale => 5
    t.decimal  "VLSCHG",                              :precision => 10, :scale => 6
    t.string   "VLSCCH",               :limit => 1
    t.string   "VLCSPC",               :limit => 1
    t.string   "VLCTRT",               :limit => 1
    t.string   "VLCIMP",               :limit => 1
    t.decimal  "VLCEMF",                              :precision => 5,  :scale => 2
    t.decimal  "VLCRAF",                              :precision => 5,  :scale => 2
    t.string   "VLCFIL",               :limit => 1
    t.string   "VLECHP",               :limit => 16
    t.decimal  "VLCPIM",                              :precision => 7,  :scale => 5
    t.decimal  "VLCPF2",                              :precision => 7,  :scale => 5
    t.decimal  "VLCPDE",                              :precision => 7,  :scale => 5
    t.string   "VLDCSO",               :limit => 1
    t.string   "VLDCTA",               :limit => 1
    t.decimal  "VLDCOU",                              :precision => 7,  :scale => 2
    t.decimal  "VLDSMA",                              :precision => 7,  :scale => 2
    t.decimal  "VLDSMI",                              :precision => 7,  :scale => 2
    t.string   "VLDCSN",               :limit => 1
    t.decimal  "VLDRES",                              :precision => 6,  :scale => 2
    t.string   "VLDFIL",               :limit => 1
    t.decimal  "VLDREE",                              :precision => 6,  :scale => 2
    t.string   "VLEDEM",               :limit => 8
    t.integer  "VLEMMR",               :limit => nil, :precision => 3,  :scale => 0
    t.decimal  "VLEMPR",                              :precision => 12, :scale => 5
    t.decimal  "VLEMCH",                              :precision => 10, :scale => 6
    t.string   "VLEMCC",               :limit => 1
    t.string   "VLCNDL",               :limit => 8
    t.string   "VLCNEC",               :limit => 8
    t.string   "VLCNNV",               :limit => 10
    t.string   "VLCNGV",               :limit => 3
    t.integer  "VLCNMV",               :limit => nil, :precision => 3,  :scale => 0
    t.integer  "VLCNNO",               :limit => nil, :precision => 10, :scale => 0
    t.decimal  "VLCNPR",                              :precision => 12, :scale => 5
    t.decimal  "VLCNCH",                              :precision => 10, :scale => 6
    t.string   "VLCNCC",               :limit => 1
    t.decimal  "VLPEMF",                              :precision => 13, :scale => 2
    t.decimal  "VLTREM",                              :precision => 5,  :scale => 3
    t.string   "VLCREI",               :limit => 1
    t.string   "VLCNFI",               :limit => 1
    t.string   "VLOPNA",               :limit => 3
    t.string   "VLOPGE",               :limit => 3
    t.string   "VLOPMA",               :limit => 3
    t.string   "VLOPTR",               :limit => 3
    t.string   "VLOPVL",               :limit => 10
    t.decimal  "VLOPPR",                              :precision => 12, :scale => 5
    t.decimal  "VLOPFD",                              :precision => 7,  :scale => 4
    t.string   "VLOPMP",               :limit => 3
    t.string   "VLOPFL",               :limit => 60
    t.string   "VLDTFD",               :limit => 8
    t.integer  "VLRBMN",               :limit => nil, :precision => 3,  :scale => 0
    t.decimal  "VLRBCH",                              :precision => 10, :scale => 6
    t.string   "VLRBCC",               :limit => 1
    t.string   "VLRBCD",               :limit => 330
    t.string   "VLDASS",               :limit => 8
    t.string   "VLDRAD",               :limit => 8
    t.integer  "VLRDRS",               :limit => nil, :precision => 3,  :scale => 0
    t.integer  "VLGPR1",               :limit => nil, :precision => 7,  :scale => 0
    t.integer  "VLGPRP",               :limit => nil, :precision => 7,  :scale => 0
    t.string   "VLATNR",               :limit => 1
    t.integer  "VLPRSR",               :limit => nil, :precision => 4,  :scale => 0
    t.integer  "VLPRSC",               :limit => nil, :precision => 4,  :scale => 0
    t.string   "VLPNRE",               :limit => 3
    t.string   "VLPNBA",               :limit => 3
    t.string   "VLCPGF",               :limit => 1
    t.integer  "VLQUOT",               :limit => nil, :precision => 11, :scale => 0
    t.string   "VLSJRC",               :limit => 25
    t.string   "VLSJSF",               :limit => 25
    t.string   "VLMONA",               :limit => 3
    t.string   "VLMONB",               :limit => 3
    t.string   "VLNATO",               :limit => 25
    t.decimal  "VLSTRI",                              :precision => 18, :scale => 6
    t.string   "VLFDEV",               :limit => 3
    t.string   "VLDLIV",               :limit => 8
    t.integer  "VLOBRK",               :limit => nil, :precision => 7,  :scale => 0
    t.decimal  "VLMGIN",                              :precision => 5,  :scale => 2
    t.decimal  "VLMGOU",                              :precision => 5,  :scale => 2
    t.integer  "VLTAIL",               :limit => nil, :precision => 13, :scale => 0
    t.integer  "VLTRAI",               :limit => nil, :precision => 1,  :scale => 0
    t.decimal  "VLTICK",                              :precision => 9,  :scale => 6
    t.decimal  "VLVTIC",                              :precision => 14, :scale => 6
    t.decimal  "VLMARI",                              :precision => 15, :scale => 5
    t.decimal  "VLMARS",                              :precision => 15, :scale => 5
    t.decimal  "VLKNIN",                              :precision => 14, :scale => 6
    t.decimal  "VLKNOU",                              :precision => 14, :scale => 6
    t.integer  "VLQUOM",               :limit => nil, :precision => 11, :scale => 0
    t.integer  "VLQUOE",               :limit => nil, :precision => 11, :scale => 0
    t.decimal  "VLPRAF",                              :precision => 13, :scale => 5
    t.string   "VLCTAR",               :limit => 3
    t.string   "VLFILL1",              :limit => 86
    t.string   "VLINTERN",             :limit => 1
    t.string   "VLFILL2",              :limit => 41
    t.string   "fimis_status",         :limit => 1
    t.string   "Group_Identifier",     :limit => 50
    t.string   "Entity_Identifier",    :limit => 50
    t.string   "Source_Identifier",    :limit => 50
    t.datetime "Record_Creation_Date"
    t.string   "Source_Package",       :limit => 50
  end

  create_table "FIMIS_TA_SRC_OLY_J_ACT_FDBSTA", :id => false, :force => true do |t|
    t.string   "STARAC",               :limit => 7,                                                    :null => false
    t.string   "STAGRE",               :limit => 3,                                                    :null => false
    t.string   "STARUB",               :limit => 3,                                                    :null => false
    t.string   "STAMON",               :limit => 3,                                                    :null => false
    t.integer  "STALTE",               :limit => nil, :precision => 2,  :scale => 0,                   :null => false
    t.string   "STATPO",               :limit => 1,                                                    :null => false
    t.string   "STAORG",               :limit => 50,                                                   :null => false
    t.string   "STATGR",               :limit => 1,                                                    :null => false
    t.string   "STACEN",               :limit => 7,                                                    :null => false
    t.string   "STANAT",               :limit => 3,                                                    :null => false
    t.string   "STANCL",               :limit => 3,                                                    :null => false
    t.string   "STADRI",               :limit => 3,                                                    :null => false
    t.string   "STADLE",               :limit => 3,                                                    :null => false
    t.string   "STASEC",               :limit => 3,                                                    :null => false
    t.string   "STATGES",              :limit => 3,                                                    :null => false
    t.string   "STATCLI",              :limit => 1,                                                    :null => false
    t.integer  "STADOU",               :limit => nil, :precision => 8,  :scale => 0,                   :null => false
    t.integer  "STAECH",               :limit => nil, :precision => 8,  :scale => 0,                   :null => false
    t.integer  "STABCA1",              :limit => nil, :precision => 1,  :scale => 0,                   :null => false
    t.integer  "STADUI1",              :limit => nil, :precision => 7,  :scale => 0,                   :null => false
    t.integer  "STADUR1",              :limit => nil, :precision => 7,  :scale => 0,                   :null => false
    t.integer  "STABCA2",              :limit => nil, :precision => 1,  :scale => 0,                   :null => false
    t.integer  "STADUI2",              :limit => nil, :precision => 7,  :scale => 0,                   :null => false
    t.integer  "STADUR2",              :limit => nil, :precision => 7,  :scale => 0,                   :null => false
    t.integer  "STABCA3",              :limit => nil, :precision => 1,  :scale => 0,                   :null => false
    t.integer  "STADUI3",              :limit => nil, :precision => 7,  :scale => 0,                   :null => false
    t.integer  "STADUR3",              :limit => nil, :precision => 7,  :scale => 0,                   :null => false
    t.integer  "STAFRP",               :limit => nil, :precision => 2,  :scale => 0,                   :null => false
    t.integer  "STADAP",               :limit => nil, :precision => 8,  :scale => 0,                   :null => false
    t.decimal  "STATX1",                              :precision => 10, :scale => 6,                   :null => false
    t.integer  "STATCTR",              :limit => nil, :precision => 3,  :scale => 0,                   :null => false
    t.integer  "STATLIG",              :limit => nil, :precision => 1,  :scale => 0,                   :null => false
    t.integer  "STATIDL",              :limit => nil, :precision => 3,  :scale => 0,                   :null => false
    t.integer  "STATRFL",              :limit => nil, :precision => 7,  :scale => 0,                   :null => false
    t.integer  "STATEMP",              :limit => nil, :precision => 7,  :scale => 0,                   :null => false
    t.integer  "STAIDAF",              :limit => nil, :precision => 3,  :scale => 0,                   :null => false
    t.integer  "STANUAF",              :limit => nil, :precision => 7,  :scale => 0,                   :null => false
    t.integer  "STACTRI",              :limit => nil, :precision => 3,  :scale => 0,                   :null => false
    t.integer  "STACTRN",              :limit => nil, :precision => 7,  :scale => 0,                   :null => false
    t.string   "STAGTI",               :limit => 10,                                                   :null => false
    t.string   "STAMON1",              :limit => 3,                                                    :null => false
    t.string   "STATITU",              :limit => 7,                                                    :null => false
    t.integer  "STATDOR",              :limit => nil, :precision => 3,  :scale => 0,                   :null => false
    t.integer  "STATDOL",              :limit => nil, :precision => 3,  :scale => 0,                   :null => false
    t.integer  "STATNTC",              :limit => nil, :precision => 3,  :scale => 0,                   :null => false
    t.integer  "STATSEC",              :limit => nil, :precision => 3,  :scale => 0,                   :null => false
    t.integer  "STANOMI",              :limit => nil, :precision => 11, :scale => 0,                   :null => false
    t.integer  "STAQTE",               :limit => nil, :precision => 15, :scale => 0,                   :null => false
    t.integer  "STAVLR",               :limit => nil, :precision => 7,  :scale => 0,                   :null => false
    t.integer  "STAVLS",               :limit => nil, :precision => 3,  :scale => 0,                   :null => false
    t.integer  "STAAEM",               :limit => nil, :precision => 13, :scale => 0,                   :null => false
    t.string   "STAGAR",               :limit => 21,                                                   :null => false
    t.integer  "STADGAR",              :limit => nil, :precision => 3,  :scale => 0,                   :null => false
    t.integer  "STANGAR",              :limit => nil, :precision => 3,  :scale => 0,                   :null => false
    t.integer  "STADVA",               :limit => nil, :precision => 8,  :scale => 0,                   :null => false
    t.decimal  "STASOLD",                             :precision => 15, :scale => 2,                   :null => false
    t.decimal  "STASCRV",                             :precision => 15, :scale => 2,                   :null => false
    t.decimal  "STASMT1",                             :precision => 15, :scale => 2,                   :null => false
    t.decimal  "STASMT2",                             :precision => 15, :scale => 2,                   :null => false
    t.decimal  "STASMT3",                             :precision => 15, :scale => 2,                   :null => false
    t.decimal  "STASMT4",                             :precision => 15, :scale => 2,                   :null => false
    t.decimal  "STASMT5",                             :precision => 15, :scale => 2,                   :null => false
    t.decimal  "STASMT6",                             :precision => 15, :scale => 2,                   :null => false
    t.decimal  "STASMT7",                             :precision => 15, :scale => 2,                   :null => false
    t.decimal  "STASMT8",                             :precision => 15, :scale => 2,                   :null => false
    t.decimal  "STASMT9",                             :precision => 15, :scale => 2,                   :null => false
    t.integer  "STADSPOT",             :limit => nil, :precision => 8,  :scale => 0,                   :null => false
    t.integer  "STADFIX",              :limit => nil, :precision => 8,  :scale => 0,                   :null => false
    t.string   "STAPLNB",              :limit => 10,                                                   :null => false
    t.string   "STAPLNI",              :limit => 7,                                                    :null => false
    t.string   "STAFILL",              :limit => 100,                                                  :null => false
    t.string   "Fimis_status",         :limit => 1
    t.string   "Group_Identifier",     :limit => 50
    t.string   "Entity_Identifier",    :limit => 50
    t.string   "Source_Identifier",    :limit => 50
    t.datetime "Record_Creation_Date"
    t.string   "Source_Package",       :limit => 50
    t.string   "Load_Date",            :limit => 50
    t.boolean  "record_validity",                                                    :default => true
  end

  create_table "FIMIS_TA_SRC_OLY_J_FDBECH", :id => false, :force => true do |t|
    t.string  "EHID",              :limit => 3,                                  :null => false
    t.integer "EHCONT",            :limit => nil, :precision => 7,  :scale => 0, :null => false
    t.string  "EHKRAC",            :limit => 7,                                  :null => false
    t.string  "EHKID",             :limit => 3,                                  :null => false
    t.string  "EHKECH",            :limit => 8,                                  :null => false
    t.integer "EHKCON",            :limit => nil, :precision => 7,  :scale => 0, :null => false
    t.string  "EHSTAT",            :limit => 1,                                  :null => false
    t.string  "LDCHID",            :limit => 3,                                  :null => false
    t.string  "LDCONT",            :limit => 7,                                  :null => false
    t.string  "LDACTN",            :limit => 1,                                  :null => false
    t.string  "LDOPTN",            :limit => 1,                                  :null => false
    t.string  "LDETAT",            :limit => 1,                                  :null => false
    t.string  "LDRACI",            :limit => 7,                                  :null => false
    t.string  "LDAD01",            :limit => 35,                                 :null => false
    t.string  "LDAD02",            :limit => 35,                                 :null => false
    t.string  "LDAD03",            :limit => 35,                                 :null => false
    t.string  "LDAD04",            :limit => 35,                                 :null => false
    t.string  "LDOPER",            :limit => 7,                                  :null => false
    t.string  "LDCNTR",            :limit => 7,                                  :null => false
    t.string  "LDDTDJ",            :limit => 2,                                  :null => false
    t.string  "LDDTDM",            :limit => 2,                                  :null => false
    t.string  "LDDTDA",            :limit => 4,                                  :null => false
    t.string  "LDDTOJ",            :limit => 2,                                  :null => false
    t.string  "LDDTOM",            :limit => 2,                                  :null => false
    t.string  "LDDTOA",            :limit => 4,                                  :null => false
    t.string  "LDRECP",            :limit => 3,                                  :null => false
    t.string  "LDRECT",            :limit => 16,                                 :null => false
    t.string  "LDEMIS",            :limit => 7,                                  :null => false
    t.string  "LDEMIT",            :limit => 16,                                 :null => false
    t.string  "LDEXEC",            :limit => 7,                                  :null => false
    t.string  "LDEXET",            :limit => 16,                                 :null => false
    t.string  "LDAAMN",            :limit => 3,                                  :null => false
    t.string  "LDANMN",            :limit => 3,                                  :null => false
    t.decimal "LDAMNT",                           :precision => 15, :scale => 2, :null => false
    t.string  "LDVAMN",            :limit => 3,                                  :null => false
    t.string  "LDVNMN",            :limit => 3,                                  :null => false
    t.decimal "LDVMNT",                           :precision => 15, :scale => 2, :null => false
    t.string  "LDFCRS",            :limit => 1,                                  :null => false
    t.decimal "LDCRSP",                           :precision => 13, :scale => 8, :null => false
    t.string  "LDPMSW",            :limit => 1,                                  :null => false
    t.decimal "LDCRSW",                           :precision => 13, :scale => 8, :null => false
    t.decimal "LDCRNT",                           :precision => 13, :scale => 8, :null => false
    t.decimal "LDCNTV",                           :precision => 15, :scale => 2, :null => false
    t.string  "LDDTVJ",            :limit => 2,                                  :null => false
    t.string  "LDDTVM",            :limit => 2,                                  :null => false
    t.string  "LDDTVA",            :limit => 4,                                  :null => false
    t.string  "LDDTSJ",            :limit => 2,                                  :null => false
    t.string  "LDDTSM",            :limit => 2,                                  :null => false
    t.string  "LDDTSA",            :limit => 4,                                  :null => false
    t.decimal "LDVCNT",                           :precision => 15, :scale => 2, :null => false
    t.decimal "LDACNT",                           :precision => 15, :scale => 2, :null => false
    t.decimal "LDPCNT",                           :precision => 6,  :scale => 3, :null => false
    t.string  "LDCOPE",            :limit => 3,                                  :null => false
    t.string  "LDFOPT",            :limit => 1,                                  :null => false
    t.string  "LDRFOR",            :limit => 7,                                  :null => false
    t.string  "LDTYPC",            :limit => 3,                                  :null => false
    t.string  "LDTTPC",            :limit => 5,                                  :null => false
    t.string  "LDCRTT",            :limit => 7,                                  :null => false
    t.string  "LDTDRA",            :limit => 7,                                  :null => false
    t.string  "LDTDGR",            :limit => 3,                                  :null => false
    t.string  "LDTDRU",            :limit => 3,                                  :null => false
    t.string  "LDTDMN",            :limit => 3,                                  :null => false
    t.string  "LDTCRA",            :limit => 7,                                  :null => false
    t.string  "LDTCGR",            :limit => 3,                                  :null => false
    t.string  "LDTCRU",            :limit => 3,                                  :null => false
    t.string  "LDTCMN",            :limit => 3,                                  :null => false
    t.string  "LDDBRA",            :limit => 7,                                  :null => false
    t.string  "LDDBGR",            :limit => 3,                                  :null => false
    t.string  "LDDBRU",            :limit => 3,                                  :null => false
    t.string  "LDDBMN",            :limit => 3,                                  :null => false
    t.string  "LDDBA1",            :limit => 35,                                 :null => false
    t.string  "LDDBA2",            :limit => 35,                                 :null => false
    t.string  "LDDBA3",            :limit => 35,                                 :null => false
    t.string  "LDDAB4",            :limit => 35,                                 :null => false
    t.string  "LDCRRA",            :limit => 7,                                  :null => false
    t.string  "LDCRGR",            :limit => 3,                                  :null => false
    t.string  "LDCRRU",            :limit => 3,                                  :null => false
    t.string  "LDCRMN",            :limit => 3,                                  :null => false
    t.string  "LDCRA1",            :limit => 35,                                 :null => false
    t.string  "LDCRA2",            :limit => 35,                                 :null => false
    t.string  "LDCRA3",            :limit => 35,                                 :null => false
    t.string  "LDCRB4",            :limit => 35,                                 :null => false
    t.string  "LDCRCH",            :limit => 7,                                  :null => false
    t.string  "LDCHA1",            :limit => 35,                                 :null => false
    t.string  "LDCHA2",            :limit => 35,                                 :null => false
    t.string  "LDCHA3",            :limit => 35,                                 :null => false
    t.string  "LDCHB4",            :limit => 35,                                 :null => false
    t.string  "LDREM1",            :limit => 35,                                 :null => false
    t.string  "LDREM2",            :limit => 35,                                 :null => false
    t.string  "LDREM3",            :limit => 35,                                 :null => false
    t.string  "LDREM4",            :limit => 35,                                 :null => false
    t.decimal "LDACOM",                           :precision => 13, :scale => 2, :null => false
    t.decimal "LDVCOM",                           :precision => 13, :scale => 2, :null => false
    t.string  "LDTCFJ",            :limit => 2,                                  :null => false
    t.string  "LDTCFM",            :limit => 2,                                  :null => false
    t.string  "LDTCFA",            :limit => 4,                                  :null => false
    t.string  "LDCFIL",            :limit => 3,                                  :null => false
    t.string  "LDREFR",            :limit => 16,                                 :null => false
    t.string  "LDFCLS",            :limit => 1,                                  :null => false
    t.decimal "LDCMLS",                           :precision => 13, :scale => 8, :null => false
    t.string  "LDFCLT",            :limit => 1,                                  :null => false
    t.decimal "LDCMLT",                           :precision => 13, :scale => 8, :null => false
    t.string  "LDCENM",            :limit => 1,                                  :null => false
    t.string  "LDCPCN",            :limit => 1,                                  :null => false
    t.string  "LDCPCO",            :limit => 1,                                  :null => false
    t.string  "LDBIRC",            :limit => 7,                                  :null => false
    t.string  "LDBIA1",            :limit => 35,                                 :null => false
    t.string  "LDBIA2",            :limit => 35,                                 :null => false
    t.string  "LDBIA3",            :limit => 35,                                 :null => false
    t.string  "LDBIA4",            :limit => 35,                                 :null => false
    t.string  "LDRFEX",            :limit => 7,                                  :null => false
    t.string  "LDCOEX",            :limit => 1,                                  :null => false
    t.integer "LDGRE",             :limit => nil, :precision => 3,  :scale => 0, :null => false
    t.integer "LDAVCD",            :limit => nil, :precision => 3,  :scale => 0, :null => false
    t.string  "LDAVFL",            :limit => 5,                                  :null => false
    t.decimal "LDTTMA",                           :precision => 10, :scale => 6, :null => false
    t.decimal "LDTTMV",                           :precision => 10, :scale => 6, :null => false
    t.decimal "LDTCMA",                           :precision => 10, :scale => 6, :null => false
    t.decimal "LDTCMV",                           :precision => 10, :scale => 6, :null => false
    t.decimal "LDCRSM",                           :precision => 13, :scale => 8, :null => false
    t.integer "LDMCLI",            :limit => nil, :precision => 3,  :scale => 0, :null => false
    t.decimal "LDCVC",                            :precision => 15, :scale => 2, :null => false
    t.decimal "LDTCVC",                           :precision => 15, :scale => 2, :null => false
    t.decimal "LDRSML",                           :precision => 15, :scale => 2, :null => false
    t.integer "LDLIRV",            :limit => nil, :precision => 7,  :scale => 0, :null => false
    t.decimal "LDESAM",                           :precision => 15, :scale => 2, :null => false
    t.decimal "LDESVM",                           :precision => 15, :scale => 2, :null => false
    t.integer "LDCOVI",            :limit => nil, :precision => 7,  :scale => 0, :null => false
    t.string  "CHCENT",            :limit => 7,                                  :null => false
    t.string  "CHIDSF",            :limit => 3,                                  :null => false
    t.string  "LDFILL",            :limit => 141,                                :null => false
    t.string  "Group_Identifier",  :limit => 50
    t.string  "Entity_Identifier", :limit => 50
    t.string  "Source_Identifier", :limit => 50
    t.string  "Source_Package",    :limit => 50
    t.boolean "Fimis_Status"
  end

  create_table "FIMIS_TA_SRC_OLY_L_FDBCTO", :id => false, :force => true do |t|
    t.string   "COID",                        :limit => 3,                                                                           :null => false
    t.string   "COCONT",                      :limit => 7,                                                                           :null => false
    t.string   "CODOUV",                      :limit => 8,                                                                           :null => false
    t.string   "CODOPE",                      :limit => 8,                                                                           :null => false
    t.string   "CODVAL",                      :limit => 8,                                                                           :null => false
    t.string   "CODSYS",                      :limit => 8,                                                                           :null => false
    t.string   "COHRSO",                      :limit => 6,                                                                           :null => false
    t.string   "COOPEO",                      :limit => 7,                                                                           :null => false
    t.string   "CODCLO",                      :limit => 8,                                                                           :null => false
    t.string   "CODOPC",                      :limit => 8,                                                                           :null => false
    t.string   "CODVAC",                      :limit => 8,                                                                           :null => false
    t.string   "CODSYC",                      :limit => 8,                                                                           :null => false
    t.string   "COHRSC",                      :limit => 6,                                                                           :null => false
    t.string   "COOPEC",                      :limit => 7,                                                                           :null => false
    t.string   "COSTAT",                      :limit => 1,                                                                           :null => false
    t.string   "COSAIP",                      :limit => 7,                                                                           :null => false
    t.string   "COCNTP",                      :limit => 7,                                                                           :null => false
    t.string   "COEXTO",                      :limit => 1,                                                                           :null => false
    t.string   "COCLIR",                      :limit => 7,                                                                           :null => false
    t.string   "COCLIS",                      :limit => 3,                                                                           :null => false
    t.string   "COVALR",                      :limit => 7,                                                                           :null => false
    t.string   "COVALS",                      :limit => 3,                                                                           :null => false
    t.string   "CORADO",                      :limit => 7,                                                                           :null => false
    t.string   "CORUDO",                      :limit => 3,                                                                           :null => false
    t.string   "CORACN",                      :limit => 7,                                                                           :null => false
    t.string   "CORUBN",                      :limit => 3,                                                                           :null => false
    t.string   "COCOPE",                      :limit => 3,                                                                           :null => false
    t.string   "CONATU",                      :limit => 3,                                                                           :null => false
    t.string   "CODECH",                      :limit => 8,                                                                           :null => false
    t.integer  "COCPLB",                      :limit => nil, :precision => 3,  :scale => 0,                                          :null => false
    t.decimal  "COSTRK",                                     :precision => 14, :scale => 6,                                          :null => false
    t.integer  "COCMON",                      :limit => nil, :precision => 3,  :scale => 0,                                          :null => false
    t.integer  "COTCTR",                      :limit => nil, :precision => 13, :scale => 0,                                          :null => false
    t.string   "COVARS",                      :limit => 7,                                                                           :null => false
    t.string   "COVASS",                      :limit => 3,                                                                           :null => false
    t.string   "CORADS",                      :limit => 7,                                                                           :null => false
    t.string   "CORUDS",                      :limit => 3,                                                                           :null => false
    t.integer  "COFACM",                      :limit => nil, :precision => 11, :scale => 0,                                          :null => false
    t.integer  "CODECF",                      :limit => nil, :precision => 1,  :scale => 0,                                          :null => false
    t.integer  "COCOTU",                      :limit => nil, :precision => 2,  :scale => 0,                                          :null => false
    t.decimal  "COCRSO",                                     :precision => 14, :scale => 6,                                          :null => false
    t.decimal  "COCRSC",                                     :precision => 14, :scale => 6,                                          :null => false
    t.string   "COTEXE",                      :limit => 1,                                                                           :null => false
    t.string   "CORFOP",                      :limit => 7,                                                                           :null => false
    t.string   "CORFMV",                      :limit => 7,                                                                           :null => false
    t.integer  "COQUAN",                      :limit => nil, :precision => 11, :scale => 0,                                          :null => false
    t.integer  "COQUAR",                      :limit => nil, :precision => 11, :scale => 0,                                          :null => false
    t.integer  "COQUCL",                      :limit => nil, :precision => 11, :scale => 0,                                          :null => false
    t.string   "COSTCL",                      :limit => 1,                                                                           :null => false
    t.decimal  "COCRSM",                                     :precision => 14, :scale => 6,                                          :null => false
    t.string   "COSTAC",                      :limit => 1,                                                                           :null => false
    t.string   "COCOPL",                      :limit => 3,                                                                           :null => false
    t.string   "COLRAC",                      :limit => 7,                                                                           :null => false
    t.string   "COLGRE",                      :limit => 3,                                                                           :null => false
    t.string   "COLRUB",                      :limit => 3,                                                                           :null => false
    t.string   "COLMOC",                      :limit => 3,                                                                           :null => false
    t.decimal  "PSMTMT",                                     :precision => 15, :scale => 2,                                          :null => false
    t.decimal  "PSMTML",                                     :precision => 15, :scale => 2,                                          :null => false
    t.decimal  "PSMTMC",                                     :precision => 15, :scale => 2,                                          :null => false
    t.decimal  "PSMAMT",                                     :precision => 15, :scale => 2,                                          :null => false
    t.decimal  "PSMAML",                                     :precision => 15, :scale => 2,                                          :null => false
    t.decimal  "PSMAMC",                                     :precision => 15, :scale => 2,                                          :null => false
    t.decimal  "PSRCMT",                                     :precision => 15, :scale => 2,                                          :null => false
    t.decimal  "PSRCML",                                     :precision => 15, :scale => 2,                                          :null => false
    t.decimal  "PSRCMC",                                     :precision => 15, :scale => 2,                                          :null => false
    t.decimal  "PSRTMT",                                     :precision => 15, :scale => 2,                                          :null => false
    t.decimal  "PSRTML",                                     :precision => 15, :scale => 2,                                          :null => false
    t.decimal  "PSRTMC",                                     :precision => 15, :scale => 2,                                          :null => false
    t.string   "CODRNM",                      :limit => 1,                                                                           :null => false
    t.decimal  "COPINI",                                     :precision => 15, :scale => 2,                                          :null => false
    t.decimal  "COPRIM",                                     :precision => 15, :scale => 2,                                          :null => false
    t.decimal  "COMINI",                                     :precision => 15, :scale => 2,                                          :null => false
    t.decimal  "COMSPR",                                     :precision => 15, :scale => 2,                                          :null => false
    t.decimal  "COMARG",                                     :precision => 15, :scale => 2,                                          :null => false
    t.decimal  "CODRCR",                                     :precision => 14, :scale => 6,                                          :null => false
    t.integer  "COQTBL",                      :limit => nil, :precision => 15, :scale => 0,                                          :null => false
    t.decimal  "COMTBL",                                     :precision => 15, :scale => 2,                                          :null => false
    t.string   "CORACD",                      :limit => 7,                                                                           :null => false
    t.string   "COGRED",                      :limit => 3,                                                                           :null => false
    t.string   "CORUBD",                      :limit => 3,                                                                           :null => false
    t.string   "COMOND",                      :limit => 3,                                                                           :null => false
    t.string   "CORACC",                      :limit => 7,                                                                           :null => false
    t.string   "COGREC",                      :limit => 3,                                                                           :null => false
    t.string   "CORUBC",                      :limit => 3,                                                                           :null => false
    t.string   "COMONC",                      :limit => 3,                                                                           :null => false
    t.string   "COTYOP",                      :limit => 1,                                                                           :null => false
    t.string   "COBTRA",                      :limit => 7,                                                                           :null => false
    t.string   "COBTRU",                      :limit => 3,                                                                           :null => false
    t.decimal  "COKNIN",                                     :precision => 14, :scale => 6,                                          :null => false
    t.decimal  "COKOUT",                                     :precision => 14, :scale => 6,                                          :null => false
    t.string   "COMONA",                      :limit => 3,                                                                           :null => false
    t.string   "COMONB",                      :limit => 3,                                                                           :null => false
    t.decimal  "CODAPM",                                     :precision => 15, :scale => 2,                                          :null => false
    t.string   "COFIL1",                      :limit => 284,                                                                         :null => false
    t.string   "Group_Identifier",            :limit => 50,                                 :default => "Hapoalim Switzerland Ltd."
    t.string   "Entity_Identifier",           :limit => 50
    t.string   "Source_Identifier",           :limit => 50,                                 :default => "EOM"
    t.datetime "Record_Creation_Date"
    t.string   "Record_Creator",              :limit => 50
    t.string   "Record_Creation_Application", :limit => 100
    t.string   "Source_Package",              :limit => 50,                                 :default => "OLY"
  end

  create_table "HLP_AccountPlan", :primary_key => "Fimis_identifier", :force => true do |t|
    t.integer "Account_ID",        :limit => 8,   :null => false
    t.integer "Parent_ID",         :limit => 8
    t.integer "Depth_from_Parent", :limit => 8,   :null => false
    t.boolean "Lowest_Flag"
    t.boolean "TopMost_Flag"
    t.string  "Hierarchy",         :limit => 900
    t.integer "Group_By1",         :limit => 8
    t.integer "Group_By2",         :limit => 8
    t.integer "Group_By3",         :limit => 8
    t.integer "Group_By4",         :limit => 8
    t.integer "Group_By5",         :limit => 8
    t.integer "Group_By6",         :limit => 8
    t.integer "Group_By7",         :limit => 8
    t.integer "Group_By8",         :limit => 8
    t.integer "Group_By9",         :limit => 8
    t.integer "Group_By10",        :limit => 8
  end

  create_table "PAR_Mapping", :force => true do |t|
    t.string   "Group_Identifier",        :limit => 50
    t.string   "Entity_Identifier",       :limit => 50
    t.string   "Information_Mapped",      :limit => 50
    t.string   "Source_code",             :limit => 50
    t.string   "Dimension_Code",          :limit => 50
    t.string   "Dimension_description_1", :limit => 100
    t.string   "Group_1",                 :limit => 50
    t.string   "Group_description_1",     :limit => 100
    t.string   "Group_2",                 :limit => 50
    t.string   "Group_description_2",     :limit => 100
    t.string   "Group_3",                 :limit => 50
    t.string   "Group_description_3",     :limit => 100
    t.datetime "Validity_Start",                         :null => false
    t.datetime "Validity_End",                           :null => false
    t.boolean  "Do_Not_Update",                          :null => false
    t.boolean  "Record_Validity"
    t.datetime "created_at",                             :null => false
    t.string   "Record_Creator",          :limit => 50,  :null => false
    t.datetime "updated_at"
    t.string   "Record_Modifier",         :limit => 50
  end

  create_table "ReportLines$", :id => false, :force => true do |t|
    t.string "Line_ID"
    t.string "Line_Description"
    t.string "Parent_Line"
  end

  create_table "ReportStructure$", :id => false, :force => true do |t|
    t.string "Line_ID"
    t.string "Line_Description"
    t.string "GL_Account_ID"
  end

  create_table "ReportStructure_2$", :id => false, :force => true do |t|
    t.string "Line_ID"
    t.string "Line_Description"
    t.string "GL_Account_ID"
  end

  create_table "SRC_ClientSecurityPositions", :force => true do |t|
    t.string   "Group_Identifier",               :limit => 50,                                                                                 :null => false
    t.string   "Entity_Identifier",              :limit => 50,                                                                                 :null => false
    t.datetime "DownloadDate",                                                                                                                 :null => false
    t.string   "Client_Identifier",              :limit => 50,                                                                                 :null => false
    t.string   "Portfolio_Identifier",           :limit => 50,                                                                                 :null => false
    t.string   "Security_Identifier",            :limit => 50,                                                                                 :null => false
    t.string   "Security_Suffix",                :limit => 50,                                                                                 :null => false
    t.string   "Security_Custodian_Identifier",  :limit => 50,                                                                                 :null => false
    t.string   "Security_Custodian_Suffix",      :limit => 50,                                                                                 :null => false
    t.string   "Security_Currency",              :limit => 50,                                                                                 :null => false
    t.decimal  "Security_Quantity",                             :precision => 26, :scale => 8, :default => 0.0,                                :null => false
    t.decimal  "Security_Net_Quantity",                         :precision => 26, :scale => 8, :default => 0.0,                                :null => false
    t.decimal  "Security_Price",                                :precision => 26, :scale => 8, :default => 0.0,                                :null => false
    t.decimal  "Security_Local_Currency_Price",                 :precision => 26, :scale => 8, :default => 0.0,                                :null => false
    t.decimal  "Security_Amount",                               :precision => 26, :scale => 8, :default => 0.0,                                :null => false
    t.decimal  "Security_Local_Currency_Amount",                :precision => 26, :scale => 8, :default => 0.0
    t.datetime "Value_Date"
    t.string   "Source_Identifier",              :limit => 50,                                                                                 :null => false
    t.datetime "Record_Creation_Date",                                                                                                         :null => false
    t.string   "Record_Creator",                 :limit => 100,                                :default => "suser_sname() + '-' + user_name(", :null => false
    t.datetime "Record_Modification_Date"
    t.string   "Record_Modifier",                :limit => 50
    t.integer  "Security_Revaluation_Frequency"
    t.integer  "Security_Quoted"
    t.string   "Source_Package",                 :limit => 50
    t.string   "Load_Date",                      :limit => 50
  end

  create_table "SRC_Group_Membership", :force => true do |t|
    t.string "Client_Identifier",            :limit => 7,  :null => false
    t.string "Client_Description",           :limit => 50
    t.string "Group_Membership_Level",       :limit => 50, :null => false
    t.string "Group_Membership_Description", :limit => 50
    t.string "Location",                     :limit => 50
  end

  create_table "account_plan_types", :force => true do |t|
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "assignments", :id => false, :force => true do |t|
    t.integer "role_id"
    t.integer "user_id"
  end

  create_table "b2_ta_mapping", :force => true do |t|
    t.string   "information_mapped",      :limit => 50,  :null => false
    t.string   "group_id",                :limit => 50,  :null => false
    t.string   "entity_id",               :limit => 50,  :null => false
    t.string   "source_code",             :limit => 50
    t.string   "description",             :limit => 50
    t.string   "dimension_code",          :limit => 50
    t.string   "dimension_description",   :limit => 100
    t.string   "destination_code",        :limit => 50
    t.string   "destination_description", :limit => 100
    t.boolean  "record_validity"
    t.datetime "created_at",                             :null => false
    t.datetime "updated_at"
    t.string   "created_by",              :limit => 50
    t.string   "updated_by",              :limit => 50
    t.string   "created_using",           :limit => 50
    t.string   "updated_using",           :limit => 50
  end

  create_table "commands", :force => true do |t|
    t.string   "execute"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "exchange_rates", :force => true do |t|
    t.string   "SMONNAIE",          :limit => 3,                                                   :null => false
    t.string   "SANNEE",            :limit => 4,                                                   :null => false
    t.string   "SMOIS",             :limit => 2,                                                   :null => false
    t.string   "SJOUR",             :limit => 2,                                                   :null => false
    t.float    "SCOURS",            :limit => nil,                                                 :null => false
    t.string   "Group_Identifier",  :limit => 50
    t.string   "Entity_Identifier", :limit => 50
    t.string   "Source_Identifier", :limit => 50
    t.datetime "Reference_Date"
    t.datetime "created_at",                                                                       :null => false
    t.string   "created_by",        :limit => 50,  :default => "suser_sname() + '-' + user_name(", :null => false
    t.datetime "updated_at"
    t.string   "updated_by",        :limit => 50
    t.string   "created_with",      :limit => 100, :default => "app_name("
    t.string   "updated_with",      :limit => 100
    t.integer  "key_id"
  end

  create_table "homes", :force => true do |t|
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "incorrect_bills", :force => true do |t|
    t.datetime "rejection_date"
    t.string   "rejected_by"
    t.string   "provider"
    t.integer  "amount",         :limit => nil, :precision => 18, :scale => 0
    t.string   "department"
    t.string   "reason"
    t.boolean  "solved"
    t.text     "comments"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "open_id_authentication_associations", :force => true do |t|
    t.integer "issued"
    t.integer "lifetime"
    t.string  "handle"
    t.string  "assoc_type"
    t.binary  "server_url"
    t.binary  "secret"
  end

  create_table "open_id_authentication_nonces", :force => true do |t|
    t.integer "timestamp",  :null => false
    t.string  "server_url"
    t.string  "salt",       :null => false
  end

  create_table "pages", :force => true do |t|
    t.integer  "parent_id"
    t.string   "name"
    t.text     "content"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "passwords", :force => true do |t|
    t.integer  "user_id"
    t.string   "reset_code"
    t.datetime "expiration_date"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "people", :force => true do |t|
    t.string   "name"
    t.string   "surname"
    t.string   "location"
    t.integer  "amount"
    t.string   "perimeter"
    t.text     "comment"
    t.string   "delegated_by"
    t.datetime "from"
    t.datetime "to"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "portals", :force => true do |t|
    t.string   "title"
    t.text     "description2"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "logo_file_name"
    t.string   "logo_content_type"
    t.integer  "logo_file_size"
    t.datetime "logo_updated_at"
  end

  create_table "posts", :force => true do |t|
    t.string   "title"
    t.text     "body"
    t.boolean  "èublished"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "recs_type", :id => false, :force => true do |t|
    t.string   "C003", :limit => 5
    t.string   "C004", :limit => 2
    t.string   "C007", :limit => 3
    t.string   "C008", :limit => 2
    t.string   "C009", :limit => 2
    t.string   "C010", :limit => 2
    t.string   "C012", :limit => 2
    t.string   "C014", :limit => 30
    t.string   "C015", :limit => 30
    t.integer  "C026", :limit => 2
    t.float    "C040", :limit => nil
    t.float    "C041", :limit => nil
    t.float    "C042", :limit => nil
    t.float    "C043", :limit => nil
    t.float    "C044", :limit => nil
    t.float    "C045", :limit => nil
    t.float    "C046", :limit => nil
    t.integer  "C510", :limit => 2
    t.datetime "C518"
    t.integer  "C519", :limit => 2
    t.integer  "C520", :limit => 2
    t.integer  "C522", :limit => 2
    t.integer  "C523", :limit => 2
    t.integer  "C524", :limit => 2
    t.integer  "C530", :limit => 2
    t.integer  "C532", :limit => 2
    t.integer  "C533", :limit => 2
    t.integer  "C534", :limit => 2
    t.integer  "C535", :limit => 2
    t.integer  "C536", :limit => 2
    t.integer  "C538", :limit => 2
    t.integer  "C540"
    t.integer  "C541", :limit => 2
    t.integer  "C543", :limit => 2
    t.integer  "C545", :limit => 2
    t.string   "C547", :limit => 20
    t.string   "C551", :limit => 20
    t.integer  "C553", :limit => 2
    t.integer  "C555", :limit => 2
    t.integer  "C560", :limit => 2
    t.string   "C561", :limit => 20
    t.float    "C562", :limit => nil
    t.integer  "C563", :limit => 2
    t.datetime "C564"
    t.float    "C565", :limit => nil
    t.string   "C566", :limit => 20
    t.string   "C567", :limit => 20
    t.string   "C568", :limit => 32
    t.float    "C569", :limit => nil
    t.float    "C570", :limit => nil
    t.float    "C571", :limit => nil
    t.integer  "C572", :limit => 2
    t.integer  "C573", :limit => 2
    t.datetime "C574"
    t.float    "C575", :limit => nil
    t.integer  "C576", :limit => 2
    t.string   "C577", :limit => 15
    t.string   "C578", :limit => 5
    t.string   "C579", :limit => 2
    t.string   "C580", :limit => 20
    t.datetime "C581"
    t.integer  "C582", :limit => 2
    t.string   "C583", :limit => 2
    t.string   "C584", :limit => 20
    t.string   "C585", :limit => 20
  end

  create_table "roles", :force => true do |t|
    t.string "name"
  end

  create_table "sessions", :force => true do |t|
    t.string   "session_id", :null => false
    t.text     "data"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "sessions", ["session_id"], :name => "index_sessions_on_session_id"
  add_index "sessions", ["updated_at"], :name => "index_sessions_on_updated_at"

  create_table "users", :force => true do |t|
    t.string   "login",                     :limit => 40
    t.string   "name",                      :limit => 100, :default => ""
    t.string   "email",                     :limit => 100
    t.string   "crypted_password",          :limit => 40
    t.string   "salt",                      :limit => 40
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "remember_token",            :limit => 40
    t.datetime "remember_token_expires_at"
  end

  add_index "users", ["login"], :name => "index_users_on_login", :unique => true

  create_table "validationrules", :force => true do |t|
    t.string   "rule_identification", :limit => 20,   :null => false
    t.string   "rule_description",    :limit => 200,  :null => false
    t.string   "rule_scope",          :limit => 15,   :null => false
    t.string   "rule_hint",           :limit => 500
    t.string   "rule_sql_query",      :limit => 1000
    t.datetime "created_at",                          :null => false
    t.datetime "updated_at"
    t.string   "rule_type",           :limit => 20,   :null => false
  end

end
