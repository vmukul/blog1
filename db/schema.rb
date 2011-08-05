# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# Note that this schema.rb definition is the authoritative source for your
# database schema. If you need to create the application database on another
# system, you should be using db:schema:load, not running all the migrations
# from scratch. The latter is a flawed and unsustainable approach (the more migrations
# you'll amass, the slower it'll run and the greater likelihood for issues).
#
# It's strongly recommended to check this file into your version control system.

ActiveRecord::Schema.define(:version => 20110805191032) do

  create_table "ad_data_files", :id => false, :force => true do |t|
    t.string  "file_name",       :limit => 513
    t.decimal "file_id"
    t.string  "tablespace_name", :limit => 30
    t.decimal "bytes"
    t.decimal "blocks"
    t.string  "status",          :limit => 9
    t.decimal "relative_fno"
    t.string  "autoextensible",  :limit => 3
    t.decimal "maxbytes"
    t.decimal "maxblocks"
    t.decimal "increment_by"
    t.decimal "user_bytes"
    t.decimal "user_blocks"
    t.string  "online_status",   :limit => 7
  end

  create_table "ads_adlrx", :id => false, :force => true do |t|
    t.string  "lastname",                       :limit => 16,                               :null => false
    t.string  "firstname",                      :limit => 16
    t.string  "address",                        :limit => 56,                               :null => false
    t.string  "city",                           :limit => 18,                               :null => false
    t.string  "state",                          :limit => 6,                                :null => false
    t.string  "zip",                            :limit => 6,                                :null => false
    t.string  "specialty",                      :limit => 18
    t.integer "ad_nrx",                         :limit => 6,  :precision => 6, :scale => 0, :null => false
    t.integer "ad_trx",                         :limit => 6,  :precision => 6, :scale => 0, :null => false
    t.integer "rank_trx",                       :limit => 6,  :precision => 6, :scale => 0, :null => false
    t.integer "quintile_trx",                   :limit => 2,  :precision => 2, :scale => 0, :null => false
    t.integer "ad_nps",                         :limit => 6,  :precision => 6, :scale => 0, :null => false
    t.integer "rank_nps",                       :limit => 6,  :precision => 6, :scale => 0, :null => false
    t.integer "quintile_nps",                   :limit => 2,  :precision => 2, :scale => 0, :null => false
    t.integer "sulfonylureas_nps",              :limit => 6,  :precision => 6, :scale => 0, :null => false
    t.integer "alpha_glucosidase_nps",          :limit => 6,  :precision => 6, :scale => 0, :null => false
    t.integer "all_other_nps",                  :limit => 6,  :precision => 6, :scale => 0, :null => false
    t.integer "tzd_nps",                        :limit => 6,  :precision => 6, :scale => 0, :null => false
    t.integer "actos_nps",                      :limit => 6,  :precision => 6, :scale => 0, :null => false
    t.integer "avandia_nps",                    :limit => 6,  :precision => 6, :scale => 0, :null => false
    t.decimal "actos_share",                                  :precision => 5, :scale => 2
    t.decimal "avandia_share",                                :precision => 5, :scale => 2
    t.integer "switch_cl_to_sulfonylureas",     :limit => 6,  :precision => 6, :scale => 0, :null => false
    t.integer "switch_cl_to_tzd",               :limit => 6,  :precision => 6, :scale => 0, :null => false
    t.integer "switch_cl_to_alpha_glucosidase", :limit => 6,  :precision => 6, :scale => 0, :null => false
    t.integer "switch_cl_to_all_other",         :limit => 6,  :precision => 6, :scale => 0, :null => false
    t.integer "tzd_innovate",                   :limit => 6,  :precision => 6, :scale => 0, :null => false
    t.decimal "rel_persist",                                  :precision => 5, :scale => 2, :null => false
    t.integer "rel_persist_rank",               :limit => 6,  :precision => 6, :scale => 0, :null => false
    t.integer "num_patients",                   :limit => 6,  :precision => 6, :scale => 0, :null => false
    t.integer "churn_rating",                   :limit => 6,  :precision => 6, :scale => 0, :null => false
    t.integer "innovation_rating",              :limit => 6,  :precision => 6, :scale => 0, :null => false
    t.decimal "tzd_launch_index",                             :precision => 8, :scale => 3, :null => false
    t.integer "tzd_launch_rank",                :limit => 6,  :precision => 6, :scale => 0, :null => false
    t.integer "lrx_quintile",                   :limit => 2,  :precision => 2, :scale => 0, :null => false
    t.decimal "ump_id",                                                                     :null => false
  end

  create_table "ads_agency_dimn", :primary_key => "agency_id", :force => true do |t|
    t.string  "agency_name", :limit => 50
    t.integer "salesrep_id", :limit => 4,  :precision => 4, :scale => 0
    t.integer "source_id",   :limit => 2,  :precision => 2, :scale => 0
  end

  create_table "ads_backorders_temp", :id => false, :force => true do |t|
    t.string  "event",             :limit => 30
    t.string  "organization_code", :limit => 3
    t.string  "item_number",       :limit => 30
    t.decimal "quantity"
  end

  create_table "ads_batch_variance_rules", :id => false, :force => true do |t|
    t.decimal  "batch_variance_rule_id",                :null => false
    t.datetime "creation_date",                         :null => false
    t.decimal  "created_by",                            :null => false
    t.datetime "last_update_date",                      :null => false
    t.decimal  "last_updated_by",                       :null => false
    t.decimal  "last_update_login"
    t.decimal  "request_id"
    t.decimal  "program_application_id"
    t.decimal  "program_id"
    t.datetime "program_update_date"
    t.decimal  "category_set_id",                       :null => false
    t.decimal  "category_id",                           :null => false
    t.string   "period_type",            :limit => 30
    t.string   "period",                 :limit => 30
    t.datetime "period_start_date"
    t.datetime "period_end_date"
    t.decimal  "material_variance"
    t.decimal  "resource_variance"
    t.decimal  "product_variance"
    t.string   "variance_uom",           :limit => 30
    t.string   "attribute_category",     :limit => 30
    t.string   "attribute1",             :limit => 150
    t.string   "attribute2",             :limit => 150
    t.string   "attribute3",             :limit => 150
    t.string   "attribute4",             :limit => 150
    t.string   "attribute5",             :limit => 150
    t.string   "attribute6",             :limit => 150
    t.string   "attribute7",             :limit => 150
    t.string   "attribute8",             :limit => 150
    t.string   "attribute9",             :limit => 150
    t.string   "attribute10",            :limit => 150
    t.string   "attribute11",            :limit => 150
    t.string   "attribute12",            :limit => 150
    t.string   "attribute13",            :limit => 150
    t.string   "attribute14",            :limit => 150
    t.string   "attribute15",            :limit => 150
  end

  add_index "ads_batch_variance_rules", ["batch_variance_rule_id"], :name => "ads_batch_variance_rules_u1", :unique => true, :tablespace => "apps_ts_tx_idx"
  add_index "ads_batch_variance_rules", ["category_id"], :name => "ads_batch_variance_rules_n2", :tablespace => "apps_ts_tx_idx"
  add_index "ads_batch_variance_rules", ["category_set_id"], :name => "ads_batch_variance_rules_n1", :tablespace => "apps_ts_tx_idx"

  create_table "ads_branch_dimn", :primary_key => "branch_id", :force => true do |t|
    t.string "branch_name", :limit => 50
    t.string "region_id",   :limit => 3
  end

  create_table "ads_broadcast", :id => false, :force => true do |t|
    t.string "message",    :limit => 2000
    t.string "enabled",    :limit => 1
    t.string "updated_by", :limit => 35
  end

  create_table "ads_claims_amt_fact", :primary_key => "claim_id", :force => true do |t|
    t.integer "agency_id",     :limit => 6, :precision => 6,  :scale => 0
    t.integer "product_id",    :limit => 3, :precision => 3,  :scale => 0
    t.integer "month_id",      :limit => 6, :precision => 6,  :scale => 0
    t.decimal "claims_amount",              :precision => 11, :scale => 2
  end

  create_table "ads_claims_fact", :id => false, :force => true do |t|
    t.integer "agency_id",       :limit => 6, :precision => 6,  :scale => 0, :null => false
    t.integer "product_id",      :limit => 3, :precision => 3,  :scale => 0, :null => false
    t.integer "month_id",        :limit => 6, :precision => 6,  :scale => 0, :null => false
    t.decimal "claims_payments",              :precision => 11, :scale => 2
    t.decimal "claims_est_bf",                :precision => 11, :scale => 2
    t.decimal "claims_est_cf",                :precision => 11, :scale => 2
    t.decimal "claims_incurred",              :precision => 11, :scale => 2
    t.integer "claims_count",    :limit => 3, :precision => 3,  :scale => 0
    t.decimal "claims_avg_cost",              :precision => 11, :scale => 2
    t.decimal "claims_amount1",               :precision => 11, :scale => 2
    t.decimal "claims_amount2",               :precision => 11, :scale => 2
    t.decimal "claims_amount3",               :precision => 11, :scale => 2
    t.decimal "claims_amount4",               :precision => 11, :scale => 2
    t.decimal "claims_amount5",               :precision => 11, :scale => 2
    t.decimal "claims_amount6",               :precision => 11, :scale => 2
    t.decimal "claims_amount7",               :precision => 11, :scale => 2
    t.decimal "claims_amount8",               :precision => 11, :scale => 2
    t.decimal "claims_amount9",               :precision => 11, :scale => 2
    t.decimal "claims_amount10",              :precision => 11, :scale => 2
    t.decimal "claims_amount11",              :precision => 11, :scale => 2
    t.decimal "claims_amount12",              :precision => 11, :scale => 2
    t.decimal "claims_amount13",              :precision => 11, :scale => 2
    t.decimal "claims_amount14",              :precision => 11, :scale => 2
    t.decimal "claims_amount15",              :precision => 11, :scale => 2
    t.decimal "claims_amount16",              :precision => 11, :scale => 2
    t.decimal "claims_amount17",              :precision => 11, :scale => 2
    t.decimal "claims_amount18",              :precision => 11, :scale => 2
    t.decimal "claims_amount19",              :precision => 11, :scale => 2
    t.decimal "claims_amount20",              :precision => 11, :scale => 2
  end

  create_table "ads_customer_api", :primary_key => "seq_id", :force => true do |t|
    t.string  "cust_acct_rec",            :limit => 4000
    t.string  "organization_rec",         :limit => 4000
    t.string  "customer_profile_rec",     :limit => 4000
    t.decimal "customer_profile_amt"
    t.decimal "cust_account_id"
    t.string  "account_number",           :limit => 2000
    t.decimal "party_id"
    t.string  "party_number",             :limit => 2000
    t.decimal "profile_id"
    t.string  "address1",                 :limit => 1000
    t.string  "city",                     :limit => 1000
    t.string  "state",                    :limit => 1000
    t.string  "postal_code",              :limit => 1000
    t.string  "created_by_module",        :limit => 1000, :default => "TCA_V2_API"
    t.string  "location_rec",             :limit => 2000
    t.decimal "location_id"
    t.string  "party_site_rec",           :limit => 2000
    t.decimal "party_site_id"
    t.string  "identifying_address_flag", :limit => 1
    t.string  "create_party_site",        :limit => 1
    t.string  "address_usage",            :limit => 25
    t.string  "organization_name",        :limit => 100
    t.string  "duns_number",              :limit => 100
    t.decimal "ssm_id"
    t.string  "salesperson_first_name",   :limit => 100
    t.string  "salesperson_last_name",    :limit => 100
    t.decimal "cust_acct_site_id"
    t.decimal "site_use_id"
    t.decimal "language"
    t.string  "party_site_number",        :limit => 2000
    t.decimal "cust_party_site_id"
    t.string  "processed_flag",           :limit => 3
    t.string  "orig_system",              :limit => 30
    t.decimal "orig_system_id"
    t.string  "orig_system_reference",    :limit => 30
  end

  create_table "ads_dbi_request_set", :id => false, :force => true do |t|
    t.integer "request_id",   :limit => 15, :precision => 15, :scale => 0
    t.string  "request_name", :limit => 30
    t.string  "status",       :limit => 30
    t.string  "phase",        :limit => 30
  end

  create_table "ads_debugg", :id => false, :force => true do |t|
    t.integer "party_id",      :limit => 20,  :precision => 20, :scale => 0
    t.string  "party_number",  :limit => 100
    t.string  "location_id",   :limit => 20
    t.string  "party_site_id", :limit => 20
  end

  create_table "ads_default_folder", :primary_key => "cat_id", :force => true do |t|
    t.string "default_folder_location", :limit => 1000
  end

  create_table "ads_denaalrx", :primary_key => "ump_id", :force => true do |t|
    t.integer "aa_nrx",            :limit => 6, :precision => 6, :scale => 0, :null => false
    t.integer "aa_trx",            :limit => 6, :precision => 6, :scale => 0, :null => false
    t.integer "rank_trx",          :limit => 6, :precision => 6, :scale => 0, :null => false
    t.integer "quintile_trx",      :limit => 2, :precision => 2, :scale => 0, :null => false
    t.integer "aa_nps",            :limit => 6, :precision => 6, :scale => 0, :null => false
    t.integer "rank_nps",          :limit => 6, :precision => 6, :scale => 0, :null => false
    t.integer "quintile_nps",      :limit => 2, :precision => 2, :scale => 0, :null => false
    t.integer "analgesic_nps",     :limit => 6, :precision => 6, :scale => 0, :null => false
    t.integer "nsaid_nps",         :limit => 6, :precision => 6, :scale => 0, :null => false
    t.integer "all_other_nps",     :limit => 6, :precision => 6, :scale => 0, :null => false
    t.integer "cox2_nps",          :limit => 6, :precision => 6, :scale => 0, :null => false
    t.integer "vioxx_nps",         :limit => 6, :precision => 6, :scale => 0, :null => false
    t.integer "celebrex_nps",      :limit => 6, :precision => 6, :scale => 0, :null => false
    t.decimal "vioxx_share",                    :precision => 5, :scale => 2
    t.decimal "celebrex_share",                 :precision => 5, :scale => 2
    t.integer "sw_cl_analgesic",   :limit => 6, :precision => 6, :scale => 0, :null => false
    t.integer "sw_cl_cox2",        :limit => 6, :precision => 6, :scale => 0, :null => false
    t.integer "sw_cl_nsaid",       :limit => 6, :precision => 6, :scale => 0, :null => false
    t.integer "sw_cl_allother",    :limit => 6, :precision => 6, :scale => 0, :null => false
    t.integer "cox2_innovate",     :limit => 6, :precision => 6, :scale => 0, :null => false
    t.decimal "rel_persist",                    :precision => 5, :scale => 2, :null => false
    t.integer "rel_persist_rank",  :limit => 6, :precision => 6, :scale => 0, :null => false
    t.integer "num_patients",      :limit => 6, :precision => 6, :scale => 0, :null => false
    t.integer "churn_rating",      :limit => 6, :precision => 6, :scale => 0, :null => false
    t.integer "innovation_rating", :limit => 6, :precision => 6, :scale => 0, :null => false
    t.decimal "cox2_launch_index",              :precision => 8, :scale => 3, :null => false
    t.integer "cox2_launch_rank",  :limit => 6, :precision => 6, :scale => 0, :null => false
    t.integer "lrx_quintile",      :limit => 2, :precision => 2, :scale => 0, :null => false
  end

  create_table "ads_dendoc", :id => false, :force => true do |t|
    t.string "lastname",  :limit => 12, :null => false
    t.string "firstname", :limit => 12
    t.string "specialty", :limit => 18
    t.string "ump_id",    :limit => 15, :null => false
    t.string "address",   :limit => 36, :null => false
    t.string "city",      :limit => 18, :null => false
    t.string "state",     :limit => 6,  :null => false
    t.string "zip",       :limit => 6,  :null => false
    t.string "type",      :limit => 6
  end

  add_index "ads_dendoc", ["ump_id"], :name => "men_unique_2", :unique => true, :tablespace => "apps_ts_tx_idx"

  create_table "ads_fax", :primary_key => "fax_id", :force => true do |t|
    t.decimal  "application_id",                                                     :null => false
    t.decimal  "concurrent_program_id",                                              :null => false
    t.integer  "user_id",               :limit => 15, :precision => 15, :scale => 0, :null => false
    t.string   "fax_number",            :limit => 50,                                :null => false
    t.datetime "expiration_date",                                                    :null => false
  end

  create_table "ads_fax_log", :id => false, :force => true do |t|
    t.decimal  "request_id"
    t.string   "fax_number", :limit => 50
    t.datetime "send_date"
  end

  create_table "ads_hri_obi_cl_per_person", :id => false, :force => true do |t|
    t.integer  "per_person_pk",                :limit => 10,   :precision => 10, :scale => 0
    t.string   "per_person_name",              :limit => 4000
    t.string   "per_first_name",               :limit => 4000
    t.string   "per_middle_names",             :limit => 4000
    t.string   "per_last_name",                :limit => 4000
    t.string   "per_person_name_unq",          :limit => 4000
    t.string   "per_person_lcl_name",          :limit => 4000
    t.string   "per_person_gbl_name",          :limit => 4000
    t.string   "per_suffix",                   :limit => 30
    t.string   "per_honors",                   :limit => 45
    t.string   "per_known_as",                 :limit => 150
    t.string   "per_title",                    :limit => 30
    t.string   "per_pre_name_adjunct",         :limit => 30
    t.string   "per_order_by",                 :limit => 301
    t.string   "per_applicant_number",         :limit => 4000
    t.string   "per_employee_number",          :limit => 4000
    t.string   "per_npw_number",               :limit => 4000
    t.string   "per_apl_flag_code",            :limit => 30
    t.string   "per_emp_flag_code",            :limit => 30
    t.string   "per_cwk_flag_code",            :limit => 30
    t.string   "per_worker_flag_code",         :limit => 30
    t.string   "per_buyer_flag_code",          :limit => 30
    t.string   "per_apl_flag",                 :limit => 4000
    t.string   "per_emp_flag",                 :limit => 4000
    t.string   "per_cwk_flag",                 :limit => 4000
    t.string   "per_worker_flag",              :limit => 4000
    t.string   "per_buyer_flag",               :limit => 4000
    t.datetime "per_date_of_birth"
    t.string   "per_place_of_birth",           :limit => 4000
    t.string   "per_country_of_birth",         :limit => 4000
    t.datetime "per_date_of_death"
    t.string   "per_work_email",               :limit => 4000
    t.string   "per_work_phone_number",        :limit => 4000
    t.string   "per_marital_status_crnt_code", :limit => 30
    t.string   "per_gender_crnt_code",         :limit => 30
    t.string   "per_marital_status_crnt",      :limit => 4000
    t.string   "per_gender_crnt",              :limit => 4000
  end

  add_index "ads_hri_obi_cl_per_person", ["per_person_pk"], :name => "ads_hri_obi_person_index1", :tablespace => "apps_ts_tx_idx"

  create_table "ads_industry_data", :id => false, :force => true do |t|
    t.string  "setup_type", :limit => 100
    t.string  "k1",         :limit => 256
    t.string  "k2",         :limit => 256
    t.string  "k3",         :limit => 256
    t.string  "k4",         :limit => 256
    t.string  "d1",         :limit => 2000
    t.string  "d2",         :limit => 2000
    t.string  "d3",         :limit => 2000
    t.string  "language",   :limit => 4
    t.string  "industry",   :limit => 100
    t.decimal "org_id"
  end

  add_index "ads_industry_data", ["industry", "org_id", "setup_type", "language", "k1", "k2", "k3", "k4"], :name => "ads_industry_data_u1", :unique => true, :tablespace => "apps_ts_tx_idx"

  create_table "ads_industry_history", :id => false, :force => true do |t|
    t.datetime "creation_date"
    t.string   "industry",         :limit => 100
    t.string   "industry_setting", :limit => 30
    t.string   "status",           :limit => 20
    t.decimal  "request_id"
    t.string   "data",             :limit => 1
    t.string   "labels",           :limit => 1
    t.string   "dbi",              :limit => 1
  end

  create_table "ads_industry_lookups", :primary_key => "lookup_id", :force => true do |t|
    t.string   "lookup_name",        :limit => 60
    t.string   "value",              :limit => 240
    t.string   "value_abbreviation", :limit => 100
    t.string   "value_type",         :limit => 5
    t.integer  "display_order",      :limit => 10,  :precision => 10, :scale => 0
    t.string   "enabled",            :limit => 1
    t.string   "privileged",         :limit => 1
    t.datetime "last_update_date"
  end

  add_index "ads_industry_lookups", ["lookup_name"], :name => "ads_industry_name", :tablespace => "apps_ts_tx_idx"

  create_table "ads_industry_metadata", :id => false, :force => true do |t|
    t.string "enabled",      :limit => 1
    t.string "direction",    :limit => 30
    t.string "setup_type",   :limit => 100
    t.string "table_name",   :limit => 40
    t.string "k1",           :limit => 30
    t.string "k2",           :limit => 30
    t.string "k3",           :limit => 30
    t.string "k4",           :limit => 30
    t.string "d1",           :limit => 30
    t.string "d2",           :limit => 30
    t.string "d3",           :limit => 30
    t.string "d4",           :limit => 30
    t.string "d5",           :limit => 30
    t.string "d6",           :limit => 30
    t.string "d7",           :limit => 30
    t.string "mls",          :limit => 1
    t.string "where_clause", :limit => 1000
  end

  create_table "ads_item_map", :id => false, :force => true do |t|
    t.string "old_item", :limit => 15
    t.string "new_item", :limit => 15
  end

  create_table "ads_last_read_seq_id", :id => false, :force => true do |t|
    t.string   "table_name",   :limit => 256
    t.decimal  "last_read_id"
    t.datetime "last_updated"
  end

  create_table "ads_lossratio_fact", :id => false, :force => true do |t|
    t.integer "agency_id",       :limit => 6, :precision => 6,  :scale => 0, :null => false
    t.integer "product_id",      :limit => 3, :precision => 3,  :scale => 0, :null => false
    t.integer "month_id",        :limit => 6, :precision => 6,  :scale => 0, :null => false
    t.decimal "earned_premium",               :precision => 18, :scale => 2
    t.decimal "claims_incurred",              :precision => 18, :scale => 2
    t.decimal "loss_ratio",                   :precision => 18, :scale => 2
  end

  create_table "ads_material_transactions", :id => false, :force => true do |t|
    t.decimal  "transaction_id"
    t.string   "transaction_type",     :limit => 20
    t.datetime "threshhold_date"
    t.string   "product_item",         :limit => 15
    t.decimal  "product_item_id"
    t.string   "transaction_item",     :limit => 15
    t.decimal  "transaction_item_id"
    t.string   "inventory_org",        :limit => 3
    t.decimal  "inventory_org_id"
    t.string   "subinventory_code",    :limit => 15
    t.decimal  "transaction_quantity"
    t.string   "transaction_uom",      :limit => 10
    t.string   "operation_sequence",   :limit => 10
    t.datetime "processed_date"
    t.decimal  "reason_id"
    t.string   "reason_name",          :limit => 20
  end

  add_index "ads_material_transactions", ["transaction_id"], :name => "ads_material_transactions_uk", :unique => true, :tablespace => "apps_ts_tx_idx"

  create_table "ads_odp_olap_lines", :id => false, :force => true do |t|
    t.decimal "request_id"
    t.string  "demand_plan_name", :limit => 30
    t.string  "level_name",       :limit => 30
    t.decimal "level_pk"
    t.string  "new_sdesc",        :limit => 60
    t.string  "new_ldesc",        :limit => 60
    t.string  "pl1_factor",       :limit => 60
    t.string  "pl2_factor",       :limit => 60
    t.string  "pl_round",         :limit => 60
  end

  create_table "ads_odp_olap_req", :id => false, :force => true do |t|
    t.decimal "request_id"
    t.string  "request_type",     :limit => 30
    t.string  "demand_plan_name", :limit => 30
  end

  create_table "ads_odp_sizes", :id => false, :force => true do |t|
    t.decimal "demand_plan_id"
    t.string  "demand_plan_name", :limit => 40
    t.decimal "demand_plan_size"
  end

  create_table "ads_oe_siebel_int", :id => false, :force => true do |t|
    t.decimal  "order_number"
    t.datetime "inserted_date"
    t.decimal  "header_id"
    t.string   "header_status", :limit => 30
    t.string   "line_status",   :limit => 30
    t.decimal  "line_number"
    t.decimal  "line_id"
    t.decimal  "line_row_id"
  end

  create_table "ads_opm_supply_interface", :id => false, :force => true do |t|
    t.string "opm_supply_interface_id", :limit => 40
    t.string "mrp_id",                  :limit => 40
    t.string "creation_date",           :limit => 20
    t.string "created_by",              :limit => 40
    t.string "interface_type",          :limit => 30
    t.string "interface_status",        :limit => 30
    t.string "error_message_count",     :limit => 40
    t.string "error_message",           :limit => 2000
    t.string "item_no",                 :limit => 32
    t.string "lot_no",                  :limit => 32
    t.string "sublot_no",               :limit => 32
    t.string "location",                :limit => 16
    t.string "plant_code",              :limit => 4
    t.string "whse_code",               :limit => 4
    t.string "batch_no",                :limit => 32
    t.string "line_no",                 :limit => 40
    t.string "line_type",               :limit => 40
    t.string "fmeff_id",                :limit => 40
    t.string "item_trans_qty",          :limit => 40
    t.string "item_trans_qty2",         :limit => 40
    t.string "item_um",                 :limit => 30
    t.string "item_um2",                :limit => 30
    t.string "batch_type",              :limit => 40
    t.string "start_date",              :limit => 20
    t.string "completion_date",         :limit => 20
    t.string "due_date",                :limit => 20
    t.string "close_date",              :limit => 20
    t.string "trans_type",              :limit => 40
    t.string "co_code",                 :limit => 4
    t.string "lot_status",              :limit => 4
    t.string "qc_grade",                :limit => 4
    t.string "trans_date",              :limit => 20
    t.string "reason_code",             :limit => 4
    t.string "accept_shortage",         :limit => 40
    t.string "completed_ind",           :limit => 1
    t.string "accept_zero",             :limit => 40
    t.string "accept_incomplete",       :limit => 40
    t.string "item_type",               :limit => 30
  end

  create_table "ads_order_transactions", :id => false, :force => true do |t|
    t.string   "operating_unit",        :limit => 60
    t.string   "orig_sys_document_ref", :limit => 10
    t.string   "customer_number",       :limit => 10
    t.string   "order_type",            :limit => 30
    t.datetime "enter_date"
    t.string   "enter_status",          :limit => 1
    t.decimal  "cancelled_delta"
    t.string   "cancelled_status",      :limit => 1
    t.string   "item_number1",          :limit => 30
    t.decimal  "ordered_quantity1"
    t.string   "ordered_uom1",          :limit => 10
    t.string   "ship_from_whse_code1",  :limit => 3
    t.decimal  "shipment_delta1"
    t.string   "shipment_status1",      :limit => 1
    t.decimal  "request_date_delta1"
    t.string   "item_number2",          :limit => 30
    t.decimal  "ordered_quantity2"
    t.string   "ordered_uom2",          :limit => 10
    t.string   "ship_from_whse_code2",  :limit => 3
    t.decimal  "shipment_delta2"
    t.string   "shipment_status2",      :limit => 1
    t.decimal  "request_date_delta2"
    t.string   "item_number3",          :limit => 30
    t.decimal  "ordered_quantity3"
    t.string   "ordered_uom3",          :limit => 10
    t.string   "ship_from_whse_code3",  :limit => 3
    t.decimal  "shipment_delta3"
    t.string   "shipment_status3",      :limit => 1
    t.decimal  "request_date_delta3"
    t.string   "item_number4",          :limit => 30
    t.decimal  "ordered_quantity4"
    t.string   "ordered_uom4",          :limit => 10
    t.string   "ship_from_whse_code4",  :limit => 3
    t.decimal  "shipment_delta4"
    t.string   "shipment_status4",      :limit => 1
    t.decimal  "request_date_delta4"
    t.string   "item_number5",          :limit => 30
    t.decimal  "ordered_quantity5"
    t.string   "ordered_uom5",          :limit => 10
    t.string   "ship_from_whse_code5",  :limit => 3
    t.decimal  "shipment_delta5"
    t.string   "shipment_status5",      :limit => 1
    t.decimal  "request_date_delta5"
    t.decimal  "order_seq"
    t.decimal  "ship_to_site_use_id"
    t.string   "ship_to_location",      :limit => 40
  end

  create_table "ads_plan_status", :id => false, :force => true do |t|
    t.string "plan_status_id", :limit => 30
    t.string "plan_status",    :limit => 30
  end

  create_table "ads_po_req_int", :id => false, :force => true do |t|
    t.string  "business_unit",    :limit => 20
    t.string  "requisition_date", :limit => 15
    t.string  "user_id",          :limit => 20
    t.string  "ship_to_id",       :limit => 20
    t.string  "item_id",          :limit => 30
    t.decimal "quantity"
    t.string  "requisition_id",   :limit => 20
    t.string  "requisition_key",  :limit => 40
    t.decimal "row_id"
  end

  create_table "ads_prod_dimn", :primary_key => "product_id", :force => true do |t|
    t.string  "product_name", :limit => 50
    t.integer "prodgroup_id", :limit => 2,  :precision => 2, :scale => 0
  end

  create_table "ads_prodgroup_dimn", :primary_key => "prodgroup_id", :force => true do |t|
    t.string "prodgroup_name", :limit => 50
    t.string "totprod_id",     :limit => 1
    t.string "totprod_name",   :limit => 30
  end

  create_table "ads_profile_options_a", :id => false, :force => true do |t|
    t.datetime "timestamp"
    t.string   "action",                      :limit => 6
    t.string   "profile_option_name",         :limit => 80
    t.string   "user_profile_option_name",    :limit => 80
    t.string   "level_name",                  :limit => 15
    t.string   "level_value",                 :limit => 80
    t.string   "before_profile_option_value", :limit => 240
    t.string   "after_profile_option_value",  :limit => 240
  end

  create_table "ads_projlist", :id => false, :force => true do |t|
    t.string   "project_number",      :limit => 25,                                :null => false
    t.string   "project_name",        :limit => 30,                                :null => false
    t.string   "project_type",        :limit => 20,                                :null => false
    t.string   "project_status_code", :limit => 30,                                :null => false
    t.datetime "start_date"
    t.datetime "completion_date"
    t.integer  "created_by",          :limit => 15, :precision => 15, :scale => 0, :null => false
    t.datetime "creation_date",                                                    :null => false
    t.datetime "last_update_date",                                                 :null => false
    t.integer  "last_updated_by",     :limit => 15, :precision => 15, :scale => 0, :null => false
    t.integer  "last_update_login",   :limit => 15, :precision => 15, :scale => 0, :null => false
  end

  create_table "ads_qa_rejections", :id => false, :force => true do |t|
    t.decimal  "reject_id"
    t.datetime "reject_date"
    t.string   "reject_type",        :limit => 25
    t.string   "reject_item_number", :limit => 25
    t.string   "reject_value1",      :limit => 150
    t.string   "reject_value2",      :limit => 150
    t.string   "reject_value3",      :limit => 150
    t.string   "reject_value4",      :limit => 150
    t.string   "reject_value5",      :limit => 150
    t.decimal  "quantity_defective"
    t.string   "reject_applied",     :limit => 1
  end

  create_table "ads_qa_results", :id => false, :force => true do |t|
    t.decimal  "transaction_interface_id"
    t.datetime "last_update_date"
    t.decimal  "last_updated_by"
    t.decimal  "qa_last_updated_by"
    t.string   "qa_last_updated_by_name",        :limit => 100
    t.datetime "creation_date"
    t.decimal  "created_by"
    t.decimal  "qa_created_by"
    t.string   "qa_created_by_name",             :limit => 100
    t.decimal  "last_update_login"
    t.decimal  "request_id"
    t.decimal  "program_application_id"
    t.decimal  "program_id"
    t.datetime "program_update_date"
    t.decimal  "collection_id"
    t.decimal  "group_id"
    t.string   "source_code",                    :limit => 30
    t.decimal  "source_line_id"
    t.decimal  "process_status",                                 :null => false
    t.decimal  "validate_flag"
    t.decimal  "marker"
    t.decimal  "organization_id"
    t.string   "organization_code",              :limit => 3,    :null => false
    t.decimal  "plan_id"
    t.string   "plan_name",                      :limit => 30,   :null => false
    t.decimal  "spec_id"
    t.string   "spec_name",                      :limit => 30
    t.decimal  "department_id"
    t.string   "department",                     :limit => 10
    t.decimal  "resource_id"
    t.string   "resource_code",                  :limit => 10
    t.decimal  "quantity"
    t.decimal  "item_id"
    t.string   "item",                           :limit => 2000
    t.string   "uom",                            :limit => 3
    t.string   "revision",                       :limit => 3
    t.string   "subinventory",                   :limit => 10
    t.decimal  "locator_id"
    t.string   "locator",                        :limit => 2000
    t.string   "lot_number",                     :limit => 30
    t.string   "serial_number",                  :limit => 30
    t.decimal  "comp_item_id"
    t.string   "comp_item",                      :limit => 2000
    t.string   "comp_uom",                       :limit => 3
    t.string   "comp_revision",                  :limit => 3
    t.string   "comp_subinventory",              :limit => 10
    t.decimal  "comp_locator_id"
    t.string   "comp_locator",                   :limit => 2000
    t.string   "comp_lot_number",                :limit => 30
    t.string   "comp_serial_number",             :limit => 30
    t.decimal  "wip_entity_id"
    t.string   "job_name",                       :limit => 240
    t.decimal  "line_id"
    t.string   "production_line",                :limit => 10
    t.decimal  "to_op_seq_num"
    t.decimal  "from_op_seq_num"
    t.decimal  "vendor_id"
    t.string   "vendor_name",                    :limit => 240
    t.string   "receipt_num",                    :limit => 30
    t.decimal  "po_header_id"
    t.string   "po_number",                      :limit => 20
    t.decimal  "po_line_num"
    t.decimal  "po_shipment_num"
    t.decimal  "customer_id"
    t.string   "customer_name",                  :limit => 50
    t.decimal  "so_header_id"
    t.decimal  "sales_order"
    t.decimal  "restrict_locators_code"
    t.decimal  "location_control_code"
    t.decimal  "revision_qty_control_code"
    t.decimal  "restrict_subinv_code"
    t.decimal  "sub_locator_type"
    t.decimal  "gen_loc_ctrl_code"
    t.decimal  "comp_restrict_locators_code"
    t.decimal  "comp_location_control_code"
    t.decimal  "comp_revision_qty_control_code"
    t.decimal  "comp_restrict_subinv_code"
    t.decimal  "comp_sub_locator_type"
    t.decimal  "comp_gen_loc_ctrl_code"
    t.decimal  "rma_header_id"
    t.decimal  "rma_number"
    t.string   "character1",                     :limit => 150
    t.string   "character2",                     :limit => 150
    t.string   "character3",                     :limit => 150
    t.string   "character4",                     :limit => 150
    t.string   "character5",                     :limit => 150
    t.string   "character6",                     :limit => 150
    t.string   "character7",                     :limit => 150
    t.string   "character8",                     :limit => 150
    t.string   "character9",                     :limit => 150
    t.string   "character10",                    :limit => 150
    t.string   "character11",                    :limit => 150
    t.string   "character12",                    :limit => 150
    t.string   "character13",                    :limit => 150
    t.string   "character14",                    :limit => 150
    t.string   "character15",                    :limit => 150
    t.string   "character16",                    :limit => 150
    t.string   "character17",                    :limit => 150
    t.string   "character18",                    :limit => 150
    t.string   "character19",                    :limit => 150
    t.string   "character20",                    :limit => 150
    t.string   "character21",                    :limit => 150
    t.string   "character22",                    :limit => 150
    t.string   "character23",                    :limit => 150
    t.string   "character24",                    :limit => 150
    t.string   "character25",                    :limit => 150
    t.string   "character26",                    :limit => 150
    t.string   "character27",                    :limit => 150
    t.string   "character28",                    :limit => 150
    t.string   "character29",                    :limit => 150
    t.string   "character30",                    :limit => 150
    t.string   "character31",                    :limit => 150
    t.string   "character32",                    :limit => 150
    t.string   "character33",                    :limit => 150
    t.string   "character34",                    :limit => 150
    t.string   "character35",                    :limit => 150
    t.string   "character36",                    :limit => 150
    t.string   "character37",                    :limit => 150
    t.string   "character38",                    :limit => 150
    t.string   "character39",                    :limit => 150
    t.string   "character40",                    :limit => 150
    t.decimal  "to_department_id"
    t.string   "to_department",                  :limit => 10
    t.decimal  "po_release_id"
    t.decimal  "po_release_num"
    t.string   "po_type_lookup",                 :limit => 25
    t.decimal  "status"
    t.string   "character41",                    :limit => 150
    t.string   "character42",                    :limit => 150
    t.string   "character43",                    :limit => 150
    t.string   "character44",                    :limit => 150
    t.string   "character45",                    :limit => 150
    t.string   "character46",                    :limit => 150
    t.string   "character47",                    :limit => 150
    t.string   "character48",                    :limit => 150
    t.string   "character49",                    :limit => 150
    t.string   "character50",                    :limit => 150
    t.string   "character51",                    :limit => 150
    t.string   "character52",                    :limit => 150
    t.string   "character53",                    :limit => 150
    t.string   "character54",                    :limit => 150
    t.string   "character55",                    :limit => 150
    t.string   "character56",                    :limit => 150
    t.string   "character57",                    :limit => 150
    t.string   "character58",                    :limit => 150
    t.string   "character59",                    :limit => 150
    t.string   "character60",                    :limit => 150
    t.string   "character61",                    :limit => 150
    t.string   "character62",                    :limit => 150
    t.string   "character63",                    :limit => 150
    t.string   "character64",                    :limit => 150
    t.string   "character65",                    :limit => 150
    t.string   "character66",                    :limit => 150
    t.string   "character67",                    :limit => 150
    t.string   "character68",                    :limit => 150
    t.string   "character69",                    :limit => 150
    t.string   "character70",                    :limit => 150
    t.string   "character71",                    :limit => 150
    t.string   "character72",                    :limit => 150
    t.string   "character73",                    :limit => 150
    t.string   "character74",                    :limit => 150
    t.string   "character75",                    :limit => 150
    t.string   "character76",                    :limit => 150
    t.string   "character77",                    :limit => 150
    t.string   "character78",                    :limit => 150
    t.string   "character79",                    :limit => 150
    t.string   "character80",                    :limit => 150
    t.string   "character81",                    :limit => 150
    t.string   "character82",                    :limit => 150
    t.string   "character83",                    :limit => 150
    t.string   "character84",                    :limit => 150
    t.string   "character85",                    :limit => 150
    t.string   "character86",                    :limit => 150
    t.string   "character87",                    :limit => 150
    t.string   "character88",                    :limit => 150
    t.string   "character89",                    :limit => 150
    t.string   "character90",                    :limit => 150
    t.string   "character91",                    :limit => 150
    t.string   "character92",                    :limit => 150
    t.string   "character93",                    :limit => 150
    t.string   "character94",                    :limit => 150
    t.string   "character95",                    :limit => 150
    t.string   "character96",                    :limit => 150
    t.string   "character97",                    :limit => 150
    t.string   "character98",                    :limit => 150
    t.string   "character99",                    :limit => 150
    t.string   "character100",                   :limit => 150
    t.decimal  "project_id"
    t.string   "project_number",                 :limit => 25
    t.decimal  "task_id"
    t.string   "task_number",                    :limit => 25
    t.datetime "transaction_date"
    t.decimal  "insert_type"
    t.string   "matching_elements",              :limit => 1000
    t.decimal  "po_agent_id"
    t.decimal  "lpn_id"
    t.string   "license_plate_number",           :limit => 30
    t.decimal  "contract_id"
    t.string   "contract_number",                :limit => 120
    t.decimal  "contract_line_id"
    t.string   "contract_line_number",           :limit => 150
    t.decimal  "deliverable_id"
    t.string   "deliverable_number",             :limit => 150
    t.decimal  "asset_group_id"
    t.string   "asset_group",                    :limit => 2000
    t.string   "asset_number",                   :limit => 30
    t.decimal  "asset_activity_id"
    t.string   "asset_activity",                 :limit => 2000
    t.decimal  "work_order_id"
    t.string   "work_order",                     :limit => 240
    t.string   "sequence1",                      :limit => 50
    t.string   "sequence2",                      :limit => 50
    t.string   "sequence3",                      :limit => 50
    t.string   "sequence4",                      :limit => 50
    t.string   "sequence5",                      :limit => 50
    t.string   "sequence6",                      :limit => 50
    t.string   "sequence7",                      :limit => 50
    t.string   "sequence8",                      :limit => 50
    t.string   "sequence9",                      :limit => 50
    t.string   "sequence10",                     :limit => 50
    t.string   "sequence11",                     :limit => 50
    t.string   "sequence12",                     :limit => 50
    t.string   "sequence13",                     :limit => 50
    t.string   "sequence14",                     :limit => 50
    t.string   "sequence15",                     :limit => 50
    t.string   "comment1",                       :limit => 2000
    t.string   "comment2",                       :limit => 2000
    t.string   "comment3",                       :limit => 2000
    t.string   "comment4",                       :limit => 2000
    t.string   "comment5",                       :limit => 2000
    t.decimal  "party_id"
    t.string   "party_name",                     :limit => 360
    t.decimal  "csi_instance_id"
    t.string   "item_instance",                  :limit => 30
    t.decimal  "counter_id"
    t.string   "counter_name",                   :limit => 30
    t.decimal  "counter_reading_id"
    t.decimal  "counter_reading"
    t.decimal  "ahl_mr_id"
    t.string   "maintenance_requirement",        :limit => 80
    t.decimal  "version_number"
    t.decimal  "cs_incident_id"
    t.string   "service_request",                :limit => 64
    t.decimal  "wip_rework_id"
    t.string   "rework_job",                     :limit => 240
    t.string   "disposition_source",             :limit => 240
    t.string   "disposition",                    :limit => 240
    t.string   "disposition_action",             :limit => 240
    t.string   "disposition_status",             :limit => 240
    t.decimal  "mti_transaction_header_id"
    t.decimal  "mti_transaction_interface_id"
    t.decimal  "mmt_transaction_id"
    t.decimal  "wjsi_group_id"
    t.decimal  "wmti_group_id"
    t.decimal  "wmt_transaction_id"
    t.decimal  "rti_interface_transaction_id"
    t.decimal  "maintenance_op_seq"
    t.string   "nonconformance_source",          :limit => 150
    t.string   "nonconform_severity",            :limit => 150
    t.string   "nonconform_priority",            :limit => 150
    t.string   "nonconformance_type",            :limit => 150
    t.string   "nonconformance_code",            :limit => 150
    t.datetime "date_opened"
    t.datetime "date_closed"
    t.decimal  "days_to_close"
    t.string   "to_subinventory",                :limit => 240
    t.decimal  "to_locator_id"
    t.string   "to_locator",                     :limit => 2000
    t.decimal  "to_sub_locator_type"
    t.decimal  "bill_reference_id"
    t.string   "bill_reference",                 :limit => 2000
    t.decimal  "routing_reference_id"
    t.string   "routing_reference",              :limit => 2000
    t.decimal  "concurrent_request_id"
    t.decimal  "lot_status_id"
    t.decimal  "serial_status_id"
    t.string   "nonconformance_status",          :limit => 150
    t.decimal  "rcv_transaction_id"
    t.string   "lot_status",                     :limit => 30
    t.string   "serial_status",                  :limit => 30
    t.string   "request_status",                 :limit => 150
    t.string   "request_source",                 :limit => 150
    t.string   "request_priority",               :limit => 150
    t.string   "request_severity",               :limit => 150
    t.string   "eco_name",                       :limit => 150
  end

  create_table "ads_ra_customer_trx_all", :id => false, :force => true do |t|
    t.integer  "customer_trx_id",                :limit => 15,   :precision => 15, :scale => 0, :null => false
    t.datetime "last_update_date",                                                              :null => false
    t.integer  "last_updated_by",                :limit => 15,   :precision => 15, :scale => 0, :null => false
    t.datetime "creation_date",                                                                 :null => false
    t.integer  "created_by",                     :limit => 15,   :precision => 15, :scale => 0, :null => false
    t.integer  "last_update_login",              :limit => 15,   :precision => 15, :scale => 0
    t.string   "trx_number",                     :limit => 20,                                  :null => false
    t.integer  "cust_trx_type_id",               :limit => 15,   :precision => 15, :scale => 0, :null => false
    t.datetime "trx_date",                                                                      :null => false
    t.integer  "set_of_books_id",                :limit => 15,   :precision => 15, :scale => 0, :null => false
    t.integer  "bill_to_contact_id",             :limit => 15,   :precision => 15, :scale => 0
    t.integer  "batch_id",                       :limit => 15,   :precision => 15, :scale => 0
    t.integer  "batch_source_id",                :limit => 15,   :precision => 15, :scale => 0
    t.string   "reason_code",                    :limit => 30
    t.integer  "sold_to_customer_id",            :limit => 15,   :precision => 15, :scale => 0
    t.integer  "sold_to_contact_id",             :limit => 15,   :precision => 15, :scale => 0
    t.integer  "sold_to_site_use_id",            :limit => 15,   :precision => 15, :scale => 0
    t.integer  "bill_to_customer_id",            :limit => 15,   :precision => 15, :scale => 0
    t.integer  "bill_to_site_use_id",            :limit => 15,   :precision => 15, :scale => 0
    t.integer  "ship_to_customer_id",            :limit => 15,   :precision => 15, :scale => 0
    t.integer  "ship_to_contact_id",             :limit => 15,   :precision => 15, :scale => 0
    t.integer  "ship_to_site_use_id",            :limit => 15,   :precision => 15, :scale => 0
    t.integer  "shipment_id",                    :limit => 15,   :precision => 15, :scale => 0
    t.integer  "remit_to_address_id",            :limit => 15,   :precision => 15, :scale => 0
    t.integer  "term_id",                        :limit => 15,   :precision => 15, :scale => 0
    t.datetime "term_due_date"
    t.integer  "previous_customer_trx_id",       :limit => 15,   :precision => 15, :scale => 0
    t.integer  "primary_salesrep_id",            :limit => 15,   :precision => 15, :scale => 0
    t.datetime "printing_original_date"
    t.datetime "printing_last_printed"
    t.string   "printing_option",                :limit => 20
    t.integer  "printing_count",                 :limit => 15,   :precision => 15, :scale => 0
    t.string   "printing_pending",               :limit => 1
    t.string   "purchase_order",                 :limit => 50
    t.string   "purchase_order_revision",        :limit => 50
    t.datetime "purchase_order_date"
    t.string   "customer_reference",             :limit => 30
    t.datetime "customer_reference_date"
    t.string   "comments",                       :limit => 1760
    t.string   "internal_notes",                 :limit => 240
    t.string   "exchange_rate_type",             :limit => 30
    t.datetime "exchange_date"
    t.decimal  "exchange_rate"
    t.integer  "territory_id",                   :limit => 15,   :precision => 15, :scale => 0
    t.string   "invoice_currency_code",          :limit => 15
    t.integer  "initial_customer_trx_id",        :limit => 15,   :precision => 15, :scale => 0
    t.integer  "agreement_id",                   :limit => 15,   :precision => 15, :scale => 0
    t.datetime "end_date_commitment"
    t.datetime "start_date_commitment"
    t.integer  "last_printed_sequence_num",      :limit => 15,   :precision => 15, :scale => 0
    t.string   "attribute_category",             :limit => 30
    t.string   "attribute1",                     :limit => 150
    t.string   "attribute2",                     :limit => 150
    t.string   "attribute3",                     :limit => 150
    t.string   "attribute4",                     :limit => 150
    t.string   "attribute5",                     :limit => 150
    t.string   "attribute6",                     :limit => 150
    t.string   "attribute7",                     :limit => 150
    t.string   "attribute8",                     :limit => 150
    t.string   "attribute9",                     :limit => 150
    t.string   "attribute10",                    :limit => 150
    t.string   "orig_system_batch_name",         :limit => 40
    t.integer  "post_request_id",                :limit => 15,   :precision => 15, :scale => 0
    t.integer  "request_id",                     :limit => 15,   :precision => 15, :scale => 0
    t.integer  "program_application_id",         :limit => 15,   :precision => 15, :scale => 0
    t.integer  "program_id",                     :limit => 15,   :precision => 15, :scale => 0
    t.datetime "program_update_date"
    t.string   "finance_charges",                :limit => 1
    t.string   "complete_flag",                  :limit => 1,                                   :null => false
    t.integer  "posting_control_id",             :limit => 15,   :precision => 15, :scale => 0
    t.integer  "bill_to_address_id",             :limit => 15,   :precision => 15, :scale => 0
    t.integer  "ra_post_loop_number",            :limit => 15,   :precision => 15, :scale => 0
    t.integer  "ship_to_address_id",             :limit => 15,   :precision => 15, :scale => 0
    t.string   "credit_method_for_rules",        :limit => 30
    t.string   "credit_method_for_installments", :limit => 30
    t.integer  "receipt_method_id",              :limit => 15,   :precision => 15, :scale => 0
    t.string   "attribute11",                    :limit => 150
    t.string   "attribute12",                    :limit => 150
    t.string   "attribute13",                    :limit => 150
    t.string   "attribute14",                    :limit => 150
    t.string   "attribute15",                    :limit => 150
    t.integer  "related_customer_trx_id",        :limit => 15,   :precision => 15, :scale => 0
    t.integer  "invoicing_rule_id",              :limit => 15,   :precision => 15, :scale => 0
    t.string   "ship_via",                       :limit => 30
    t.datetime "ship_date_actual"
    t.string   "waybill_number",                 :limit => 50
    t.string   "fob_point",                      :limit => 30
    t.integer  "customer_bank_account_id",       :limit => 15,   :precision => 15, :scale => 0
    t.string   "interface_header_attribute1",    :limit => 30
    t.string   "interface_header_attribute2",    :limit => 30
    t.string   "interface_header_attribute3",    :limit => 30
    t.string   "interface_header_attribute4",    :limit => 30
    t.string   "interface_header_attribute5",    :limit => 30
    t.string   "interface_header_attribute6",    :limit => 30
    t.string   "interface_header_attribute7",    :limit => 30
    t.string   "interface_header_attribute8",    :limit => 30
    t.string   "interface_header_context",       :limit => 30
    t.string   "default_ussgl_trx_code_context", :limit => 30
    t.string   "interface_header_attribute10",   :limit => 30
    t.string   "interface_header_attribute11",   :limit => 30
    t.string   "interface_header_attribute12",   :limit => 30
    t.string   "interface_header_attribute13",   :limit => 30
    t.string   "interface_header_attribute14",   :limit => 30
    t.string   "interface_header_attribute15",   :limit => 30
    t.string   "interface_header_attribute9",    :limit => 30
    t.string   "default_ussgl_transaction_code", :limit => 30
    t.string   "recurred_from_trx_number",       :limit => 20
    t.string   "status_trx",                     :limit => 30
    t.integer  "doc_sequence_id",                :limit => 15,   :precision => 15, :scale => 0
    t.integer  "doc_sequence_value",             :limit => 15,   :precision => 15, :scale => 0
    t.integer  "paying_customer_id",             :limit => 15,   :precision => 15, :scale => 0
    t.integer  "paying_site_use_id",             :limit => 15,   :precision => 15, :scale => 0
    t.integer  "related_batch_source_id",        :limit => 15,   :precision => 15, :scale => 0
    t.string   "default_tax_exempt_flag",        :limit => 1
    t.string   "created_from",                   :limit => 30,                                  :null => false
    t.integer  "org_id",                         :limit => 15,   :precision => 15, :scale => 0
    t.datetime "wh_update_date"
    t.string   "global_attribute1",              :limit => 150
    t.string   "global_attribute2",              :limit => 150
    t.string   "global_attribute3",              :limit => 150
    t.string   "global_attribute4",              :limit => 150
    t.string   "global_attribute5",              :limit => 150
    t.string   "global_attribute6",              :limit => 150
    t.string   "global_attribute7",              :limit => 150
    t.string   "global_attribute8",              :limit => 150
    t.string   "global_attribute9",              :limit => 150
    t.string   "global_attribute10",             :limit => 150
    t.string   "global_attribute11",             :limit => 150
    t.string   "global_attribute12",             :limit => 150
    t.string   "global_attribute13",             :limit => 150
    t.string   "global_attribute14",             :limit => 150
    t.string   "global_attribute15",             :limit => 150
    t.string   "global_attribute16",             :limit => 150
    t.string   "global_attribute17",             :limit => 150
    t.string   "global_attribute18",             :limit => 150
    t.string   "global_attribute19",             :limit => 150
    t.string   "global_attribute20",             :limit => 150
    t.string   "global_attribute_category",      :limit => 30
    t.string   "edi_processed_flag",             :limit => 1
    t.string   "edi_processed_status",           :limit => 10
    t.string   "global_attribute21",             :limit => 150
    t.string   "global_attribute22",             :limit => 150
    t.string   "global_attribute23",             :limit => 150
    t.string   "global_attribute24",             :limit => 150
    t.string   "global_attribute25",             :limit => 150
    t.string   "global_attribute26",             :limit => 150
    t.string   "global_attribute27",             :limit => 150
    t.string   "global_attribute28",             :limit => 150
    t.string   "global_attribute29",             :limit => 150
    t.string   "global_attribute30",             :limit => 150
    t.string   "mrc_exchange_rate_type",         :limit => 2000
    t.string   "mrc_exchange_date",              :limit => 2000
    t.string   "mrc_exchange_rate",              :limit => 2000
    t.string   "payment_server_order_num",       :limit => 80
    t.string   "approval_code",                  :limit => 80
    t.string   "address_verification_code",      :limit => 80
    t.string   "old_trx_number",                 :limit => 20
    t.decimal  "br_amount"
    t.string   "br_unpaid_flag",                 :limit => 1
    t.string   "br_on_hold_flag",                :limit => 1
    t.integer  "drawee_id",                      :limit => 15,   :precision => 15, :scale => 0
    t.integer  "drawee_contact_id",              :limit => 15,   :precision => 15, :scale => 0
    t.integer  "drawee_site_use_id",             :limit => 15,   :precision => 15, :scale => 0
    t.integer  "remittance_bank_account_id",     :limit => 15,   :precision => 15, :scale => 0
    t.string   "override_remit_account_flag",    :limit => 1
    t.integer  "drawee_bank_account_id",         :limit => 15,   :precision => 15, :scale => 0
    t.string   "special_instructions",           :limit => 240
    t.integer  "remittance_batch_id",            :limit => 15,   :precision => 15, :scale => 0
    t.string   "prepayment_flag",                :limit => 1
    t.string   "ct_reference",                   :limit => 30
    t.decimal  "contract_id"
    t.integer  "bill_template_id",               :limit => 15,   :precision => 15, :scale => 0
    t.integer  "reversed_cash_receipt_id",       :limit => 15,   :precision => 15, :scale => 0
    t.string   "cc_error_code",                  :limit => 80
    t.string   "cc_error_text"
    t.string   "cc_error_flag",                  :limit => 1
  end

  add_index "ads_ra_customer_trx_all", ["customer_trx_id"], :name => "index1", :tablespace => "apps_ts_tx_idx"

  create_table "ads_region_dimn", :primary_key => "region_id", :force => true do |t|
    t.string "region_name", :limit => 50
    t.string "total_id",    :limit => 5
    t.string "total_desc",  :limit => 50
  end

  create_table "ads_res_trans_old", :id => false, :force => true do |t|
    t.decimal  "transaction_id"
    t.string   "transaction_type",        :limit => 20
    t.datetime "threshhold_date"
    t.string   "product_item",            :limit => 15
    t.decimal  "product_item_id"
    t.string   "transaction_resource",    :limit => 15
    t.decimal  "transaction_resource_id"
    t.string   "inventory_org",           :limit => 3
    t.decimal  "inventory_org_id"
    t.decimal  "transaction_quantity"
    t.string   "transaction_uom",         :limit => 10
    t.string   "operation_sequence",      :limit => 10
    t.datetime "processed_date"
  end

  create_table "ads_resource_transactions", :id => false, :force => true do |t|
    t.decimal  "transaction_id"
    t.string   "transaction_type",        :limit => 20
    t.datetime "threshhold_date"
    t.string   "product_item",            :limit => 15
    t.decimal  "product_item_id"
    t.string   "transaction_resource",    :limit => 15
    t.decimal  "transaction_resource_id"
    t.string   "inventory_org",           :limit => 3
    t.decimal  "inventory_org_id"
    t.decimal  "transaction_quantity"
    t.string   "transaction_uom",         :limit => 10
    t.string   "operation_sequence",      :limit => 10
    t.datetime "processed_date"
  end

  add_index "ads_resource_transactions", ["transaction_id"], :name => "ads_resource_transactions_uk", :unique => true, :tablespace => "apps_ts_tx_idx"

  create_table "ads_rsp_emp_random", :id => false, :force => true do |t|
    t.integer "person_id",       :limit => 9,  :precision => 9, :scale => 0
    t.integer "seq_number",      :limit => 9,  :precision => 9, :scale => 0
    t.string  "emp_selected",    :limit => 1
    t.string  "full_name",       :limit => 80
    t.string  "employee_number", :limit => 15
  end

  create_table "ads_salesrep_dimn", :primary_key => "salesrep_id", :force => true do |t|
    t.string  "salesrep_name", :limit => 50
    t.integer "branch_id",     :limit => 3,  :precision => 3, :scale => 0
  end

  create_table "ads_shipment_polling", :id => false, :force => true do |t|
    t.decimal  "order_number",                  :null => false
    t.datetime "inserted_date",                 :null => false
    t.string   "shipment_status", :limit => 30, :null => false
    t.decimal  "shipment_number"
    t.datetime "shipment_date"
    t.string   "carrier",         :limit => 30
  end

  create_table "ads_test", :id => false, :force => true do |t|
    t.decimal "t"
  end

  create_table "ads_time_dimn", :primary_key => "month_id", :force => true do |t|
    t.integer "year_name", :limit => 4, :precision => 4, :scale => 0
  end

  create_table "ads_transfers", :id => false, :force => true do |t|
    t.datetime "trans_date"
    t.string   "trans_msg",  :limit => 3000
  end

  create_table "ads_trigger_debug", :id => false, :force => true do |t|
    t.string "trigger_name", :limit => 35
    t.string "before1",      :limit => 35
    t.string "before2",      :limit => 35
    t.string "after1",       :limit => 35
    t.string "after2",       :limit => 35
  end

  create_table "ads_ukhr_otl_ld", :id => false, :force => true do |t|
    t.decimal  "record_number"
    t.string   "employee_no",   :limit => 10
    t.datetime "clock_date"
    t.string   "clock_time",    :limit => 10
    t.decimal  "paired_with"
  end

  create_table "ads_uplift", :id => false, :force => true do |t|
    t.decimal "avandia_q1",   :precision => 8, :scale => 2, :null => false
    t.decimal "avandia_q4",   :precision => 8, :scale => 2, :null => false
    t.decimal "actos_q1",     :precision => 8, :scale => 2, :null => false
    t.decimal "actos_q4",     :precision => 8, :scale => 2, :null => false
    t.decimal "denrigluc_q1", :precision => 8, :scale => 2, :null => false
    t.decimal "denrigluc_q4", :precision => 8, :scale => 2, :null => false
  end

  create_table "ads_user_sec", :id => false, :force => true do |t|
    t.integer "user_id", :limit => 15, :precision => 15, :scale => 0, :null => false
    t.string  "label",   :limit => 40
  end

  create_table "adx_pre_autoconfig", :id => false, :force => true do |t|
    t.decimal "application_id"
    t.string  "profile_option_name", :limit => 100
    t.decimal "level_id"
    t.decimal "level_value"
    t.string  "profile_value",       :limit => 300
    t.decimal "level_value_app_id"
    t.string  "context_name",        :limit => 100
    t.string  "update_only",         :limit => 1
    t.string  "insert_only",         :limit => 1
  end

  create_table "ams_acxiom_profiles", :id => false, :force => true do |t|
    t.integer  "ams_cus_no",                   :limit => 9,  :precision => 9, :scale => 0
    t.string   "ams_lst_upd_by",               :limit => 40,                               :null => false
    t.datetime "ams_lst_upd_dte",                                                          :null => false
    t.string   "ams_prsn_typ",                 :limit => 2,                                :null => false
    t.datetime "ams_lst_acxm_refresh"
    t.string   "ams_lgcy_customer",            :limit => 12
    t.string   "ams_abltc_cnsmr_lnk",          :limit => 13
    t.string   "ams_abltc_contact_lnk",        :limit => 13
    t.string   "ams_abltc_mtch_cde",           :limit => 80
    t.string   "ams_axm_frst_nme",             :limit => 20
    t.string   "ams_axm_mid_init",             :limit => 1
    t.string   "ams_axm_lst_nme",              :limit => 50
    t.string   "ams_axm_occup",                :limit => 80
    t.string   "ams_axm_marital_stat",         :limit => 40
    t.string   "ams_axm_age_rng_of_indv",      :limit => 40
    t.string   "ams_axm_gndr",                 :limit => 40
    t.string   "ams_axm_hshld_stat",           :limit => 40
    t.string   "ams_axm_estd_inc_cde",         :limit => 40
    t.string   "ams_axm_wrkng_wmn",            :limit => 40
    t.string   "ams_axm_mail_sprsn_ind",       :limit => 80
    t.string   "ams_axm_phone_sprsn_ind",      :limit => 80
    t.string   "ams_axm_email_sprsn_ind",      :limit => 80
    t.string   "ams_axm_sprsn_delete_flg",     :limit => 40
    t.string   "ams_axm_mrkt_decline_cde",     :limit => 40
    t.string   "ams_axm_lvl_mtch_ind",         :limit => 80
    t.string   "ams_axm_mtch_lvl",             :limit => 80
    t.string   "ams_axm_mail_ord_buyr",        :limit => 40
    t.string   "ams_axm_mail_rspndrs",         :limit => 40
    t.string   "ams_axm_nmbr_of_adlts",        :limit => 40
    t.string   "ams_axm_pres_of_chldrn",       :limit => 80
    t.string   "ams_axm_new_car_buyr",         :limit => 40
    t.string   "ams_axm_nmbr_vhcl",            :limit => 40
    t.string   "ams_axm_val_all_vhcls",        :limit => 40
    t.string   "ams_axm_vhcl_lfstyl",          :limit => 40
    t.string   "ams_axm_trck_ownr",            :limit => 40
    t.string   "ams_axm_rv_ownr",              :limit => 40
    t.string   "ams_axm_mtrcycl_ownr",         :limit => 40
    t.string   "ams_axm_incm_clsfctn",         :limit => 40
    t.string   "ams_axm_home_purch_dte",       :limit => 6
    t.string   "ams_axm_mth_home_bght",        :limit => 40
    t.string   "ams_axm_yr_home_bght",         :limit => 40
    t.string   "ams_axm_yr_built",             :limit => 40
    t.string   "ams_axm_len_of_res",           :limit => 40
    t.string   "ams_axm_own_rent_flg",         :limit => 40
    t.string   "ams_axm_prmr_dwelling_typ",    :limit => 40
    t.string   "ams_axm_avail_home_eqty",      :limit => 40
    t.string   "ams_axm_loan_to_val",          :limit => 40
    t.string   "ams_axm_lndbl_home_eqty",      :limit => 40
    t.string   "ams_axm_home_mkt_val",         :limit => 40
    t.string   "ams_axm_home_siz",             :limit => 40
    t.string   "ams_axm_lot_siz",              :limit => 40
    t.string   "ams_axm_prop_typ",             :limit => 80
    t.string   "ams_axm_dwelling_siz",         :limit => 40
    t.string   "ams_axm_prsnc_of_pool",        :limit => 40
    t.string   "ams_axm_msa_cde",              :limit => 4
    t.string   "ams_axm_multi_buyr",           :limit => 40
    t.string   "ams_axm_ins_x_dte",            :limit => 6
    t.string   "ams_axm_bnk_crd_hldr",         :limit => 40
    t.string   "ams_axm_new_bnk_crd",          :limit => 40
    t.string   "ams_axm_gas_crd_hldr",         :limit => 40
    t.string   "ams_axm_te_crd_hldr",          :limit => 40
    t.string   "ams_axm_uknw_crd_typ",         :limit => 40
    t.string   "ams_axm_prem_crd_hldr",        :limit => 40
    t.string   "ams_axm_upscl_crd_hldr",       :limit => 40
    t.string   "ams_axm_rtl_acty",             :limit => 40
    t.string   "ams_axm_lst_rtl_dte",          :limit => 6
    t.string   "ams_axm_bnk_rtl_acty",         :limit => 40
    t.string   "ams_axm_oil_rtl_acty",         :limit => 40
    t.string   "ams_axm_spclty_str_rtl",       :limit => 40
    t.string   "ams_axm_upscl_rtl",            :limit => 40
    t.string   "ams_axm_fncl_rtl",             :limit => 40
    t.string   "ams_axm_upscl_spclty_rtl",     :limit => 40
    t.string   "ams_axm_misc_rtl",             :limit => 40
    t.string   "ams_axm_males_0_2",            :limit => 40
    t.string   "ams_axm_females_0_2",          :limit => 40
    t.string   "ams_axm_uknw_gndr_0_2",        :limit => 40
    t.string   "ams_axm_males_3_5",            :limit => 40
    t.string   "ams_axm_females_3_5",          :limit => 40
    t.string   "ams_axm_uknw_gndr_3_5",        :limit => 40
    t.string   "ams_axm_males_6_10",           :limit => 40
    t.string   "ams_axm_females_6_10",         :limit => 40
    t.string   "ams_axm_uknw_gndr_6_10",       :limit => 40
    t.string   "ams_axm_males_11_15",          :limit => 40
    t.string   "ams_axm_females_11_15",        :limit => 40
    t.string   "ams_axm_uknw_gndr_11_15",      :limit => 40
    t.string   "ams_axm_males_16_17",          :limit => 40
    t.string   "ams_axm_females_16_17",        :limit => 40
    t.string   "ams_axm_uknw_gndr_16_17",      :limit => 40
    t.string   "ams_axm_males_18_24",          :limit => 40
    t.string   "ams_axm_females_18_24",        :limit => 40
    t.string   "ams_axm_uknw_gndr_18_24",      :limit => 40
    t.string   "ams_axm_males_25_34",          :limit => 40
    t.string   "ams_axm_females_25_34",        :limit => 40
    t.string   "ams_axm_uknw_gndr_25_34",      :limit => 40
    t.string   "ams_axm_males_35_44",          :limit => 40
    t.string   "ams_axm_females_35_44",        :limit => 40
    t.string   "ams_axm_uknw_gndr_35_44",      :limit => 40
    t.string   "ams_axm_males_45_54",          :limit => 40
    t.string   "ams_axm_females_45_54",        :limit => 40
    t.string   "ams_axm_uknw_gndr_45_54",      :limit => 40
    t.string   "ams_axm_males_55_64",          :limit => 40
    t.string   "ams_axm_females_55_64",        :limit => 40
    t.string   "ams_axm_uknw_gndr_55_64",      :limit => 40
    t.string   "ams_axm_males_65_74",          :limit => 40
    t.string   "ams_axm_females_65_74",        :limit => 40
    t.string   "ams_axm_uknw_gndr_65_74",      :limit => 40
    t.string   "ams_axm_males_75_over",        :limit => 40
    t.string   "ams_axm_females_75_over",      :limit => 40
    t.string   "ams_axm_uknw_gndr_75_over",    :limit => 40
    t.string   "ams_abltc_addr_lnk",           :limit => 13
    t.string   "ams_axm_addr_line1",           :limit => 50
    t.string   "ams_axm_addr_line2",           :limit => 50
    t.string   "ams_axm_cty",                  :limit => 40
    t.string   "ams_axm_st",                   :limit => 2
    t.string   "ams_axm_zip_cde",              :limit => 5
    t.string   "ams_axm_zip4_cde",             :limit => 4
    t.string   "ams_axm_latitude",             :limit => 10
    t.string   "ams_axm_longitude",            :limit => 11
    t.string   "ams_axm_fips_st_cde",          :limit => 2
    t.string   "ams_axm_fips_mcd_cde",         :limit => 5
    t.string   "ams_axm_fips_cnty_cde",        :limit => 3
    t.string   "ams_axm_fips_plc_cde",         :limit => 5
    t.string   "ams_axm_census_trct_cde",      :limit => 7
    t.string   "ams_axm_census_blck_cde",      :limit => 4
    t.string   "ams_axm_census_mcd_cde",       :limit => 3
    t.string   "ams_axm_census_plc_cde",       :limit => 4
    t.string   "ams_axm_mtch_cde",             :limit => 80
    t.string   "ams_axm_move_typ_cde",         :limit => 80
    t.string   "ams_axm_move_effc_dte",        :limit => 10
    t.string   "ams_axm_addr_mtch_flg",        :limit => 80
    t.string   "ams_axm_best_addr_lnk",        :limit => 13
    t.string   "ams_axm_carier_rte_cde",       :limit => 80
    t.string   "ams_axm_dlvr_ind",             :limit => 80
    t.string   "ams_axm_dlvr_typ",             :limit => 80
    t.string   "ams_axm_dlvrbl_cde",           :limit => 80
    t.string   "ams_axm_dlvry_point",          :limit => 80
    t.string   "ams_axm_dlvry_sqnc_key",       :limit => 80
    t.string   "ams_axm_do_not_mail_flg",      :limit => 80
    t.string   "ams_axm_do_not_phn_flg",       :limit => 80
    t.string   "ams_axm_sub_min_census_tract", :limit => 80
    t.string   "ams_axm_drop_pnt_ind",         :limit => 80
    t.string   "ams_axm_dsf_mtch_flg",         :limit => 80
    t.string   "ams_axm_foreign_mve_cde",      :limit => 80
    t.string   "ams_axm_ncoa_nme_mtch_typ",    :limit => 80
    t.string   "ams_axm_lacs_cnvrsn_dte",      :limit => 10
    t.string   "ams_axm_lacs_entity_typ",      :limit => 80
    t.string   "ams_axm_lacs_ind",             :limit => 80
    t.string   "ams_axm_lacs_new_addr",        :limit => 80
    t.string   "ams_axm_lacs_rcrd_typ",        :limit => 80
    t.string   "ams_axm_lot_cde",              :limit => 80
    t.string   "ams_axm_nixie_cde",            :limit => 80
    t.string   "ams_axm_pacs_cnfdnc_cde",      :limit => 80
    t.string   "ams_axm_pacs_nmbr_srcs",       :limit => 80
    t.string   "ams_axm_pacs_qlty_indx",       :limit => 80
    t.string   "ams_axm_srt_instr_cde",        :limit => 80
    t.string   "ams_axm_vacancy_ind",          :limit => 80
    t.string   "ams_axm_seasnl_ind",           :limit => 80
    t.string   "ams_axm_zip4_lvl_mtch",        :limit => 80
    t.string   "ams_axm_mve_typ_cde",          :limit => 80
    t.string   "ams_axm_mve_effc_dte",         :limit => 6
  end

  create_table "ams_infmet_lead_gt", :temporary => true, :id => false, :force => true do |t|
    t.decimal  "primary_party_id"
    t.decimal  "contact_rel_party_id"
    t.datetime "last_activation_date"
    t.decimal  "activity_metric_id"
    t.string   "source_category",      :limit => 3
    t.decimal  "object_id"
  end

  create_table "ams_infmet_order_gt", :temporary => true, :id => false, :force => true do |t|
    t.decimal  "primary_party_id"
    t.decimal  "contact_rel_party_id"
    t.datetime "last_activation_date"
    t.decimal  "activity_metric_id"
    t.string   "source_category",      :limit => 3
    t.decimal  "object_id"
  end

  create_table "ams_infmet_resp_gt", :temporary => true, :id => false, :force => true do |t|
    t.decimal  "primary_party_id"
    t.decimal  "contact_rel_party_id"
    t.datetime "last_activation_date"
    t.decimal  "activity_metric_id"
    t.string   "source_category",      :limit => 3
  end

  create_table "amv_temp_ids", :temporary => true, :id => false, :force => true do |t|
    t.decimal "id"
    t.decimal "number_value"
    t.decimal "score"
    t.string  "obj_code",          :limit => 30
    t.decimal "security_group_id"
  end

  create_table "amv_temp_numbers", :temporary => true, :id => false, :force => true do |t|
    t.decimal "number_value"
    t.decimal "security_group_id"
  end

  create_table "ap_6050423_emp_vendor_temp", :id => false, :force => true do |t|
    t.decimal  "vendor_id",                                     :null => false
    t.string   "vendor_num",    :limit => 30,                   :null => false
    t.string   "vendor_name",   :limit => 240,                  :null => false
    t.decimal  "person_id",                                     :null => false
    t.string   "employee_num",  :limit => 30
    t.string   "employee_name", :limit => 240
    t.datetime "creation_date",                                 :null => false
    t.string   "process_flag",  :limit => 1,   :default => "Y"
  end

  create_table "ap_cards_all_bak", :id => false, :force => true do |t|
    t.integer  "employee_id",               :limit => 15,  :precision => 15, :scale => 0
    t.string   "card_number",               :limit => 80
    t.integer  "card_id",                   :limit => 15,  :precision => 15, :scale => 0, :null => false
    t.decimal  "limit_override_amount"
    t.decimal  "trx_limit_override_amount"
    t.integer  "profile_id",                :limit => 15,  :precision => 15, :scale => 0
    t.string   "cardmember_name",           :limit => 80
    t.string   "department_name",           :limit => 80
    t.string   "physical_card_flag",        :limit => 1
    t.string   "paper_statement_req_flag",  :limit => 1
    t.integer  "location_id",               :limit => 15,  :precision => 15, :scale => 0
    t.string   "mothers_maiden_name",       :limit => 80
    t.string   "description",               :limit => 240
    t.integer  "org_id",                    :limit => 15,  :precision => 15, :scale => 0
    t.datetime "inactive_date"
    t.datetime "last_update_date",                                                        :null => false
    t.integer  "last_updated_by",           :limit => 15,  :precision => 15, :scale => 0, :null => false
    t.integer  "last_update_login",         :limit => 15,  :precision => 15, :scale => 0
    t.datetime "creation_date"
    t.integer  "created_by",                :limit => 15,  :precision => 15, :scale => 0
    t.string   "attribute_category",        :limit => 150
    t.string   "attribute1",                :limit => 150
    t.string   "attribute2",                :limit => 150
    t.string   "attribute3",                :limit => 150
    t.string   "attribute4",                :limit => 150
    t.string   "attribute5",                :limit => 150
    t.string   "attribute6",                :limit => 150
    t.string   "attribute7",                :limit => 150
    t.string   "attribute8",                :limit => 150
    t.string   "attribute9",                :limit => 150
    t.string   "attribute10",               :limit => 150
    t.string   "attribute11",               :limit => 150
    t.string   "attribute12",               :limit => 150
    t.string   "attribute13",               :limit => 150
    t.string   "attribute14",               :limit => 150
    t.string   "attribute15",               :limit => 150
    t.string   "attribute16",               :limit => 150
    t.string   "attribute17",               :limit => 150
    t.string   "attribute18",               :limit => 150
    t.string   "attribute19",               :limit => 150
    t.string   "attribute20",               :limit => 150
    t.string   "attribute21",               :limit => 150
    t.string   "attribute22",               :limit => 150
    t.string   "attribute23",               :limit => 150
    t.string   "attribute24",               :limit => 150
    t.string   "attribute25",               :limit => 150
    t.string   "attribute26",               :limit => 150
    t.string   "attribute27",               :limit => 150
    t.string   "attribute28",               :limit => 150
    t.string   "attribute29",               :limit => 150
    t.string   "attribute30",               :limit => 150
    t.datetime "card_expiration_date"
    t.integer  "card_program_id",           :limit => 15,  :precision => 15, :scale => 0, :null => false
    t.integer  "request_id",                :limit => 15,  :precision => 15, :scale => 0
    t.integer  "card_reference_id",         :limit => 15,  :precision => 15, :scale => 0
  end

  create_table "ap_credit_card_trxns_all_bak", :id => false, :force => true do |t|
    t.integer  "trx_id",                       :limit => 15,  :precision => 15, :scale => 0, :null => false
    t.string   "validate_code",                :limit => 25,                                 :null => false
    t.integer  "card_program_id",              :limit => 15,  :precision => 15, :scale => 0, :null => false
    t.decimal  "expensed_amount"
    t.string   "card_number",                  :limit => 80
    t.string   "reference_number",             :limit => 240,                                :null => false
    t.string   "transaction_type",             :limit => 80
    t.datetime "transaction_date"
    t.decimal  "transaction_amount"
    t.string   "debit_flag",                   :limit => 1
    t.datetime "billed_date"
    t.decimal  "billed_amount"
    t.boolean  "billed_decimal",                              :precision => 1,  :scale => 0
    t.string   "billed_currency_code",         :limit => 15
    t.datetime "posted_date"
    t.decimal  "posted_amount"
    t.boolean  "posted_decimal",                              :precision => 1,  :scale => 0
    t.string   "posted_currency_code",         :limit => 15
    t.boolean  "currency_conversion_exponent",                :precision => 1,  :scale => 0
    t.decimal  "currency_conversion_rate"
    t.string   "mis_industry_code",            :limit => 80
    t.integer  "sic_code",                     :limit => 15,  :precision => 15, :scale => 0
    t.string   "merchant_tax_id",              :limit => 80
    t.string   "merchant_reference",           :limit => 80
    t.string   "merchant_name1",               :limit => 80
    t.string   "merchant_name2",               :limit => 80
    t.string   "merchant_address1",            :limit => 80
    t.string   "merchant_address2",            :limit => 80
    t.string   "merchant_address3",            :limit => 80
    t.string   "merchant_address4",            :limit => 80
    t.string   "merchant_city",                :limit => 80
    t.string   "merchant_province_state",      :limit => 80
    t.string   "merchant_postal_code",         :limit => 80
    t.string   "merchant_country",             :limit => 80
    t.decimal  "total_tax"
    t.decimal  "local_tax"
    t.decimal  "national_tax"
    t.decimal  "other_tax"
    t.integer  "org_id",                       :limit => 15,  :precision => 15, :scale => 0
    t.datetime "last_update_date"
    t.integer  "last_updated_by",              :limit => 15,  :precision => 15, :scale => 0
    t.integer  "last_update_login",            :limit => 15,  :precision => 15, :scale => 0
    t.datetime "creation_date"
    t.integer  "created_by",                   :limit => 15,  :precision => 15, :scale => 0
    t.string   "folio_type",                   :limit => 80
    t.decimal  "atm_cash_advance"
    t.datetime "atm_transaction_date"
    t.decimal  "atm_fee_amount"
    t.string   "atm_type",                     :limit => 80
    t.string   "atm_id",                       :limit => 80
    t.string   "atm_network_id",               :limit => 80
    t.decimal  "restaurant_food_amount"
    t.decimal  "restaurant_beverage_amount"
    t.decimal  "restaurant_tip_amount"
    t.datetime "car_rental_date"
    t.datetime "car_return_date"
    t.string   "car_rental_location",          :limit => 80
    t.string   "car_rental_state",             :limit => 80
    t.string   "car_return_location",          :limit => 80
    t.string   "car_return_state",             :limit => 80
    t.string   "car_renter_name",              :limit => 80
    t.string   "car_rental_days",              :limit => 80
    t.string   "car_rental_agreement_number",  :limit => 80
    t.string   "car_class",                    :limit => 80
    t.decimal  "car_total_mileage"
    t.decimal  "car_gas_amount"
    t.decimal  "car_insurance_amount"
    t.decimal  "car_mileage_amount"
    t.decimal  "car_daily_rate"
    t.datetime "hotel_arrival_date"
    t.datetime "hotel_depart_date"
    t.string   "hotel_charge_desc",            :limit => 80
    t.string   "hotel_guest_name",             :limit => 80
    t.decimal  "hotel_stay_duration"
    t.decimal  "hotel_room_rate"
    t.string   "hotel_no_show_flag",           :limit => 1
    t.decimal  "hotel_room_amount"
    t.decimal  "hotel_telephone_amount"
    t.decimal  "hotel_room_tax"
    t.decimal  "hotel_bar_amount"
    t.decimal  "hotel_movie_amount"
    t.decimal  "hotel_gift_shop_amount"
    t.decimal  "hotel_laundry_amount"
    t.decimal  "hotel_health_amount"
    t.decimal  "hotel_restaurant_amount"
    t.decimal  "hotel_business_amount"
    t.decimal  "hotel_parking_amount"
    t.decimal  "hotel_room_service_amount"
    t.decimal  "hotel_tip_amount"
    t.decimal  "hotel_misc_amount"
    t.string   "hotel_city",                   :limit => 80
    t.string   "hotel_state",                  :limit => 80
    t.string   "hotel_folio_number",           :limit => 80
    t.string   "hotel_room_type",              :limit => 240
    t.datetime "air_departure_date"
    t.string   "air_departure_city",           :limit => 80
    t.string   "air_routing",                  :limit => 80
    t.string   "air_arrival_city",             :limit => 80
    t.string   "air_stopover_flag",            :limit => 1
    t.decimal  "air_base_fare_amount"
    t.string   "air_fare_basis_code",          :limit => 80
    t.string   "air_service_class",            :limit => 80
    t.string   "air_carrier_abbreviation",     :limit => 80
    t.string   "air_carrier_code",             :limit => 80
    t.string   "air_ticket_issuer",            :limit => 80
    t.string   "air_issuer_city",              :limit => 80
    t.string   "air_passenger_name",           :limit => 80
    t.string   "air_refund_ticket_number",     :limit => 80
    t.string   "air_exchanged_ticket_number",  :limit => 80
    t.string   "air_agency_number",            :limit => 80
    t.string   "air_ticket_number",            :limit => 80
    t.string   "financial_category",           :limit => 80
    t.string   "payment_flag",                 :limit => 1
    t.string   "record_type",                  :limit => 80
    t.string   "merchant_activity",            :limit => 80
    t.string   "category",                     :limit => 30
    t.integer  "report_header_id",             :limit => 15,  :precision => 15, :scale => 0
    t.string   "expense_status",               :limit => 15
    t.integer  "company_prepaid_invoice_id",   :limit => 15,  :precision => 15, :scale => 0
    t.string   "inactive_emp_wf_item_key",     :limit => 50
    t.integer  "location_id",                  :limit => 15,  :precision => 15, :scale => 0
    t.integer  "request_id",                   :limit => 15,  :precision => 15, :scale => 0
    t.string   "merchant_country_code",        :limit => 30
    t.datetime "dispute_date"
    t.string   "payment_due_from_code",        :limit => 30
    t.datetime "trx_available_date"
    t.integer  "card_acceptor_id",             :limit => 15,  :precision => 15, :scale => 0
    t.string   "trxn_detail_flag",             :limit => 1
    t.integer  "card_id",                      :limit => 15,  :precision => 15, :scale => 0, :null => false
  end

  create_table "ap_invoice_distributions_gt", :temporary => true, :id => false, :force => true do |t|
    t.integer  "invoice_distribution_id",      :limit => 15,  :precision => 15, :scale => 0
    t.integer  "invoice_id",                   :limit => 15,  :precision => 15, :scale => 0
    t.decimal  "invoice_line_number"
    t.integer  "po_distribution_id",           :limit => 15,  :precision => 15, :scale => 0
    t.integer  "org_id",                       :limit => 15,  :precision => 15, :scale => 0
    t.integer  "accounting_event_id",          :limit => 15,  :precision => 15, :scale => 0
    t.string   "description",                  :limit => 240
    t.integer  "asset_category_id",            :limit => 15,  :precision => 15, :scale => 0
    t.decimal  "quantity_invoiced"
    t.string   "historical_flag",              :limit => 1
    t.decimal  "corrected_quantity"
    t.integer  "dist_code_combination_id",     :limit => 15,  :precision => 15, :scale => 0
    t.string   "line_type_lookup_code",        :limit => 25
    t.integer  "distribution_line_number",     :limit => 15,  :precision => 15, :scale => 0
    t.datetime "accounting_date"
    t.integer  "corrected_invoice_dist_id",    :limit => 15,  :precision => 15, :scale => 0
    t.integer  "related_id",                   :limit => 15,  :precision => 15, :scale => 0
    t.integer  "charge_applicable_to_dist_id", :limit => 15,  :precision => 15, :scale => 0
    t.string   "asset_book_type_code",         :limit => 15
    t.integer  "set_of_books_id",              :limit => 15,  :precision => 15, :scale => 0
  end

  create_table "ap_payment_hist_sr_bkp", :id => false, :force => true do |t|
    t.integer  "payment_history_id",          :limit => 15,   :precision => 15, :scale => 0, :null => false
    t.integer  "check_id",                    :limit => 15,   :precision => 15, :scale => 0, :null => false
    t.datetime "accounting_date",                                                            :null => false
    t.string   "transaction_type",            :limit => 30,                                  :null => false
    t.string   "posted_flag",                 :limit => 1,                                   :null => false
    t.string   "matched_flag",                :limit => 1
    t.integer  "accounting_event_id",         :limit => 15,   :precision => 15, :scale => 0
    t.integer  "org_id",                      :limit => 15,   :precision => 15, :scale => 0
    t.datetime "creation_date",                                                              :null => false
    t.integer  "created_by",                  :limit => 15,   :precision => 15, :scale => 0, :null => false
    t.datetime "last_update_date",                                                           :null => false
    t.integer  "last_updated_by",             :limit => 15,   :precision => 15, :scale => 0, :null => false
    t.integer  "last_update_login",           :limit => 15,   :precision => 15, :scale => 0
    t.datetime "program_update_date"
    t.integer  "program_application_id",      :limit => 15,   :precision => 15, :scale => 0
    t.integer  "program_id",                  :limit => 15,   :precision => 15, :scale => 0
    t.integer  "request_id",                  :limit => 15,   :precision => 15, :scale => 0
    t.integer  "rev_pmt_hist_id",             :limit => 15,   :precision => 15, :scale => 0
    t.decimal  "trx_bank_amount"
    t.decimal  "errors_bank_amount"
    t.decimal  "charges_bank_amount"
    t.decimal  "trx_pmt_amount",                                                             :null => false
    t.decimal  "errors_pmt_amount"
    t.decimal  "charges_pmt_amount"
    t.decimal  "trx_base_amount"
    t.decimal  "errors_base_amount"
    t.decimal  "charges_base_amount"
    t.string   "bank_currency_code",          :limit => 15
    t.string   "bank_to_base_xrate_type",     :limit => 30
    t.datetime "bank_to_base_xrate_date"
    t.decimal  "bank_to_base_xrate"
    t.string   "pmt_currency_code",           :limit => 15,                                  :null => false
    t.string   "pmt_to_base_xrate_type",      :limit => 30
    t.datetime "pmt_to_base_xrate_date"
    t.decimal  "pmt_to_base_xrate"
    t.string   "mrc_pmt_to_base_xrate_type",  :limit => 2000
    t.string   "mrc_pmt_to_base_xrate_date",  :limit => 2000
    t.string   "mrc_pmt_to_base_xrate",       :limit => 2000
    t.string   "mrc_bank_to_base_xrate_type", :limit => 2000
    t.string   "mrc_bank_to_base_xrate_date", :limit => 2000
    t.string   "mrc_bank_to_base_xrate",      :limit => 2000
    t.string   "mrc_trx_base_amount",         :limit => 2000
    t.string   "mrc_errors_base_amount",      :limit => 2000
    t.string   "mrc_charges_base_amount",     :limit => 2000
    t.integer  "related_event_id",            :limit => 15,   :precision => 15, :scale => 0
    t.string   "historical_flag",             :limit => 1
    t.integer  "invoice_adjustment_event_id", :limit => 15,   :precision => 15, :scale => 0
    t.string   "gain_loss_indicator",         :limit => 1
  end

  create_table "ap_suppliers_backup_6050423", :id => false, :force => true do |t|
    t.decimal  "vendor_id",                                   :null => false
    t.decimal  "party_id",                                    :null => false
    t.datetime "creation_date",                               :null => false
    t.decimal  "worker_id"
    t.string   "num_1099",                      :limit => 30
    t.string   "individual_1099",               :limit => 30
    t.string   "organization_type_lookup_code", :limit => 25
    t.string   "vendor_type_lookup_code",       :limit => 30
    t.decimal  "employee_id"
  end

  create_table "ap_temp_data_driver_8525551", :id => false, :force => true do |t|
    t.integer  "checkrun_id",    :limit => 15, :precision => 15, :scale => 0
    t.datetime "check_date"
    t.string   "ppr_name"
    t.string   "ppr_status",     :limit => 30
    t.integer  "invoices_held",  :limit => 15, :precision => 15, :scale => 0
    t.integer  "schedules_held", :limit => 15, :precision => 15, :scale => 0
    t.string   "process_flag",   :limit => 1,                                 :default => "Y"
  end

  create_table "ap_temp_data_driver_8525551_d", :id => false, :force => true do |t|
    t.integer  "checkrun_id",  :limit => 15, :precision => 15, :scale => 0
    t.datetime "check_date"
    t.string   "ppr_name"
    t.string   "ppr_status",   :limit => 30
    t.integer  "invoice_id",   :limit => 15, :precision => 15, :scale => 0
    t.integer  "schedule_num", :limit => 15, :precision => 15, :scale => 0
    t.string   "invoice_num",  :limit => 50
    t.datetime "invoice_date"
  end

  create_table "apps_eni_oltp_item_star", :id => false, :force => true do |t|
    t.string   "id",                    :limit => 25
    t.string   "value",                 :limit => 240
    t.string   "organization_code",     :limit => 3
    t.decimal  "inventory_item_id"
    t.decimal  "organization_id"
    t.decimal  "po_category_id"
    t.decimal  "po_category_set_id"
    t.string   "po_concat_seg",         :limit => 200
    t.decimal  "inv_category_id"
    t.decimal  "inv_category_set_id"
    t.string   "inv_concat_seg",        :limit => 200
    t.decimal  "vbh_category_id"
    t.decimal  "vbh_category_set_id"
    t.string   "vbh_concat_seg",        :limit => 200
    t.string   "master_id",             :limit => 25
    t.datetime "creation_date",                        :null => false
    t.datetime "last_update_date",                     :null => false
    t.decimal  "item_catalog_group_id"
    t.string   "primary_uom_code",      :limit => 5
  end

# Could not dump table "aq$_wf_bpel_qtab_g" because of following StandardError
#   Unknown type 'RAW' for column 'msgid'

# Could not dump table "aq$_wf_bpel_qtab_h" because of following StandardError
#   Unknown type 'RAW' for column 'msgid'

# Could not dump table "aq$_wf_bpel_qtab_i" because of following StandardError
#   Unknown type 'RAW' for column 'msgid'

  create_table "aq$_wf_bpel_qtab_s", :primary_key => "subscriber_id", :force => true do |t|
    t.string    "queue_name",            :limit => 30,   :null => false
    t.string    "name",                  :limit => 30
    t.string    "address",               :limit => 1024
    t.decimal   "protocol"
    t.decimal   "subscriber_type"
    t.string    "rule_name",             :limit => 30
    t.string    "trans_name",            :limit => 61
    t.string    "ruleset_name",          :limit => 65
    t.string    "negative_ruleset_name", :limit => 65
    t.decimal   "scn_at_remove"
    t.timestamp "creation_time",         :limit => 6
    t.timestamp "modification_time",     :limit => 6
    t.timestamp "deletion_time",         :limit => 6
  end

# Could not dump table "aq$_wf_bpel_qtab_t" because of following StandardError
#   Unknown type 'RAW' for column 'msgid'

  create_table "ar_conc_process_requests_bk", :id => false, :force => true do |t|
    t.string  "concurrent_program_name", :limit => 30,                                :null => false
    t.integer "request_id",              :limit => 15, :precision => 15, :scale => 0, :null => false
  end

  create_table "ar_il_cash_receipts_gt", :temporary => true, :id => false, :force => true do |t|
    t.integer  "cash_receipt_id",         :limit => 15,  :precision => 15, :scale => 0
    t.string   "receipt_number",          :limit => 30
    t.datetime "receipt_date"
    t.string   "receipt_status",          :limit => 30
    t.integer  "document_number",         :limit => 15,  :precision => 15, :scale => 0
    t.decimal  "receipt_amount"
    t.string   "currency",                :limit => 15
    t.string   "credit_card_no",          :limit => 150
    t.string   "credit_card_type",        :limit => 150
    t.datetime "maturity_date"
    t.string   "method_name",             :limit => 30
    t.string   "bank_account",            :limit => 30
    t.string   "bank_name",               :limit => 360
    t.string   "bank_branch_name",        :limit => 360
    t.string   "customer_name",           :limit => 360
    t.string   "customer_number",         :limit => 30
    t.string   "tax_registration_number", :limit => 50
    t.integer  "cust_account_id",         :limit => 15,  :precision => 15, :scale => 0
    t.integer  "cust_acct_site_id",       :limit => 15,  :precision => 15, :scale => 0
    t.string   "address_line1",           :limit => 600
    t.string   "address_line2",           :limit => 240
    t.string   "user_name",               :limit => 150
    t.string   "attribute1",              :limit => 150
    t.string   "attribute2",              :limit => 150
    t.string   "city",                    :limit => 150
    t.string   "postal_code",             :limit => 150
    t.string   "copy_or_original",        :limit => 150
  end

  create_table "ar_memo_lines_bak", :id => false, :force => true do |t|
    t.integer  "memo_line_id",              :limit => 15,  :precision => 15, :scale => 0, :null => false
    t.string   "name",                      :limit => 50,                                 :null => false
    t.integer  "org_id",                    :limit => 15,  :precision => 15, :scale => 0
    t.integer  "set_of_books_id",           :limit => 15,  :precision => 15, :scale => 0, :null => false
    t.string   "line_type",                 :limit => 30,                                 :null => false
    t.datetime "start_date",                                                              :null => false
    t.datetime "last_update_date",                                                        :null => false
    t.integer  "last_updated_by",           :limit => 15,  :precision => 15, :scale => 0, :null => false
    t.integer  "created_by",                :limit => 15,  :precision => 15, :scale => 0, :null => false
    t.datetime "creation_date",                                                           :null => false
    t.string   "description",               :limit => 80
    t.integer  "gl_id_rev",                 :limit => 15,  :precision => 15, :scale => 0
    t.string   "tax_code",                  :limit => 50
    t.string   "uom_code",                  :limit => 3
    t.decimal  "unit_std_price"
    t.integer  "invoicing_rule_id",         :limit => 15,  :precision => 15, :scale => 0
    t.integer  "accounting_rule_id",        :limit => 15,  :precision => 15, :scale => 0
    t.datetime "end_date"
    t.string   "attribute_category",        :limit => 30
    t.string   "attribute1",                :limit => 150
    t.string   "attribute2",                :limit => 150
    t.string   "attribute3",                :limit => 150
    t.string   "attribute4",                :limit => 150
    t.string   "attribute5",                :limit => 150
    t.string   "attribute6",                :limit => 150
    t.string   "attribute7",                :limit => 150
    t.string   "attribute8",                :limit => 150
    t.string   "attribute9",                :limit => 150
    t.string   "attribute10",               :limit => 150
    t.string   "attribute11",               :limit => 150
    t.string   "attribute12",               :limit => 150
    t.string   "attribute13",               :limit => 150
    t.string   "attribute14",               :limit => 150
    t.string   "attribute15",               :limit => 150
    t.integer  "last_update_login",         :limit => 15,  :precision => 15, :scale => 0
    t.string   "global_attribute_category", :limit => 150
    t.string   "global_attribute1",         :limit => 150
    t.string   "global_attribute2",         :limit => 150
    t.string   "global_attribute3",         :limit => 150
    t.string   "global_attribute4",         :limit => 150
    t.string   "global_attribute5",         :limit => 150
    t.string   "global_attribute6",         :limit => 150
    t.string   "global_attribute7",         :limit => 150
    t.string   "global_attribute8",         :limit => 150
    t.string   "global_attribute9",         :limit => 150
    t.string   "global_attribute10",        :limit => 150
    t.string   "global_attribute11",        :limit => 150
    t.string   "global_attribute12",        :limit => 150
    t.string   "global_attribute13",        :limit => 150
    t.string   "global_attribute14",        :limit => 150
    t.string   "global_attribute15",        :limit => 150
    t.string   "global_attribute16",        :limit => 150
    t.string   "global_attribute17",        :limit => 150
    t.string   "global_attribute18",        :limit => 150
    t.string   "global_attribute19",        :limit => 150
    t.string   "global_attribute20",        :limit => 150
  end

  create_table "ar_rem_cr_id_gtt", :temporary => true, :id => false, :force => true do |t|
    t.decimal "cash_receipt_history_id"
    t.decimal "cash_receipt_id"
  end

  create_table "ar_system_parameters_back", :id => false, :force => true do |t|
    t.integer  "set_of_books_id",                :limit => 15,  :precision => 15, :scale => 0, :null => false
    t.integer  "created_by",                     :limit => 15,  :precision => 15, :scale => 0, :null => false
    t.datetime "creation_date",                                                                :null => false
    t.integer  "last_updated_by",                :limit => 15,  :precision => 15, :scale => 0, :null => false
    t.datetime "last_update_date",                                                             :null => false
    t.integer  "last_update_login",              :limit => 15,  :precision => 15, :scale => 0
    t.string   "accounting_method",              :limit => 30,                                 :null => false
    t.string   "accrue_interest",                :limit => 1,                                  :null => false
    t.string   "unearned_discount",              :limit => 1,                                  :null => false
    t.string   "partial_discount_flag",          :limit => 1,                                  :null => false
    t.string   "print_remit_to",                 :limit => 1,                                  :null => false
    t.string   "chars_per_inch",                 :limit => 30
    t.string   "default_cb_due_date",            :limit => 30,                                 :null => false
    t.string   "auto_site_numbering",            :limit => 1,                                  :null => false
    t.integer  "cash_basis_set_of_books_id",     :limit => 15,  :precision => 15, :scale => 0
    t.integer  "code_combination_id_gain",       :limit => 15,  :precision => 15, :scale => 0
    t.integer  "autocash_hierarchy_id",          :limit => 15,  :precision => 15, :scale => 0
    t.string   "run_gl_journal_import_flag",     :limit => 1,                                  :null => false
    t.integer  "cer_split_amount",               :limit => 9,   :precision => 9,  :scale => 0, :null => false
    t.integer  "cer_dso_days",                   :limit => 5,   :precision => 5,  :scale => 0, :null => false
    t.integer  "posting_days_per_cycle",         :limit => 5,   :precision => 5,  :scale => 0, :null => false
    t.string   "address_validation",             :limit => 30,                                 :null => false
    t.string   "attribute1",                     :limit => 150
    t.string   "attribute2",                     :limit => 150
    t.string   "attribute_category",             :limit => 30
    t.string   "attribute3",                     :limit => 150
    t.string   "attribute4",                     :limit => 150
    t.string   "attribute5",                     :limit => 150
    t.string   "attribute6",                     :limit => 150
    t.string   "attribute7",                     :limit => 150
    t.string   "attribute8",                     :limit => 150
    t.string   "attribute9",                     :limit => 150
    t.string   "attribute10",                    :limit => 150
    t.string   "calc_discount_on_lines_flag",    :limit => 1,                                  :null => false
    t.string   "change_printed_invoice_flag",    :limit => 1,                                  :null => false
    t.integer  "code_combination_id_loss",       :limit => 15,  :precision => 15, :scale => 0
    t.string   "create_reciprocal_flag",         :limit => 1,                                  :null => false
    t.string   "default_country",                :limit => 60
    t.string   "default_territory",              :limit => 30,                                 :null => false
    t.string   "generate_customer_number",       :limit => 1,                                  :null => false
    t.string   "invoice_deletion_flag",          :limit => 1,                                  :null => false
    t.integer  "location_structure_id",          :limit => 15,  :precision => 15, :scale => 0
    t.string   "site_required_flag",             :limit => 1,                                  :null => false
    t.string   "tax_allow_compound_flag",        :limit => 1,                                  :null => false
    t.string   "tax_invoice_print",              :limit => 30,                                 :null => false
    t.string   "tax_method",                     :limit => 30,                                 :null => false
    t.string   "tax_use_customer_exempt_flag",   :limit => 1,                                  :null => false
    t.string   "tax_use_cust_exc_rate_flag",     :limit => 1,                                  :null => false
    t.string   "tax_use_loc_exc_rate_flag",      :limit => 1,                                  :null => false
    t.string   "tax_use_product_exempt_flag",    :limit => 1,                                  :null => false
    t.string   "tax_use_prod_exc_rate_flag",     :limit => 1,                                  :null => false
    t.string   "tax_use_site_exc_rate_flag",     :limit => 1,                                  :null => false
    t.integer  "ai_log_file_message_level",      :limit => 15,  :precision => 15, :scale => 0
    t.integer  "ai_max_memory_in_bytes",         :limit => 15,  :precision => 15, :scale => 0
    t.string   "ai_acct_flex_key_left_prompt",   :limit => 80
    t.string   "ai_mtl_items_key_left_prompt",   :limit => 80
    t.string   "ai_territory_key_left_prompt",   :limit => 80
    t.string   "ai_purge_interface_tables_flag", :limit => 1
    t.string   "ai_activate_sql_trace_flag",     :limit => 1
    t.integer  "default_grouping_rule_id",       :limit => 15,  :precision => 15, :scale => 0, :null => false
    t.string   "salesrep_required_flag",         :limit => 1,                                  :null => false
    t.string   "attribute11",                    :limit => 150
    t.string   "attribute12",                    :limit => 150
    t.string   "attribute13",                    :limit => 150
    t.string   "attribute14",                    :limit => 150
    t.string   "attribute15",                    :limit => 150
    t.integer  "auto_rec_invoices_per_commit",   :limit => 8,   :precision => 8,  :scale => 0, :null => false
    t.integer  "auto_rec_receipts_per_commit",   :limit => 8,   :precision => 8,  :scale => 0, :null => false
    t.string   "pay_unrelated_invoices_flag",    :limit => 1,                                  :null => false
    t.integer  "tax_cache",                      :limit => 15,  :precision => 15, :scale => 0
    t.string   "print_home_country_flag",        :limit => 1,                                  :null => false
    t.integer  "location_tax_account",           :limit => 15,  :precision => 15, :scale => 0
    t.string   "from_postal_code",               :limit => 60,                                 :null => false
    t.string   "to_postal_code",                 :limit => 60,                                 :null => false
    t.string   "tax_registration_number",        :limit => 60
    t.string   "populate_gl_segments_flag",      :limit => 1,                                  :null => false
    t.integer  "unallocated_revenue_ccid",       :limit => 15,  :precision => 15, :scale => 0
    t.integer  "org_id",                         :limit => 15,  :precision => 15, :scale => 0
    t.string   "tax_currency_code",              :limit => 15
    t.boolean  "tax_precision",                                 :precision => 1,  :scale => 0
    t.integer  "tax_minimum_accountable_unit",                  :precision => 38, :scale => 0
    t.string   "tax_header_level_flag",          :limit => 1,                                  :null => false
    t.string   "tax_rounding_rule",              :limit => 30,                                 :null => false
    t.string   "tax_rounding_allow_override",    :limit => 1,                                  :null => false
    t.string   "tax_code",                       :limit => 50
    t.string   "global_attribute1",              :limit => 150
    t.string   "global_attribute2",              :limit => 150
    t.string   "global_attribute3",              :limit => 150
    t.string   "global_attribute4",              :limit => 150
    t.string   "global_attribute5",              :limit => 150
    t.string   "global_attribute6",              :limit => 150
    t.string   "global_attribute7",              :limit => 150
    t.string   "global_attribute8",              :limit => 150
    t.string   "global_attribute9",              :limit => 150
    t.string   "global_attribute10",             :limit => 150
    t.string   "global_attribute11",             :limit => 150
    t.string   "global_attribute12",             :limit => 150
    t.string   "global_attribute13",             :limit => 150
    t.string   "global_attribute14",             :limit => 150
    t.string   "global_attribute15",             :limit => 150
    t.string   "global_attribute16",             :limit => 150
    t.string   "global_attribute17",             :limit => 150
    t.string   "global_attribute18",             :limit => 150
    t.string   "global_attribute19",             :limit => 150
    t.string   "global_attribute20",             :limit => 150
    t.string   "global_attribute_category",      :limit => 30
  end

  create_table "ar_system_parameters_back1", :id => false, :force => true do |t|
    t.integer  "set_of_books_id",                :limit => 15,  :precision => 15, :scale => 0, :null => false
    t.integer  "created_by",                     :limit => 15,  :precision => 15, :scale => 0, :null => false
    t.datetime "creation_date",                                                                :null => false
    t.integer  "last_updated_by",                :limit => 15,  :precision => 15, :scale => 0, :null => false
    t.datetime "last_update_date",                                                             :null => false
    t.integer  "last_update_login",              :limit => 15,  :precision => 15, :scale => 0
    t.string   "accounting_method",              :limit => 30,                                 :null => false
    t.string   "accrue_interest",                :limit => 1,                                  :null => false
    t.string   "unearned_discount",              :limit => 1,                                  :null => false
    t.string   "partial_discount_flag",          :limit => 1,                                  :null => false
    t.string   "print_remit_to",                 :limit => 1,                                  :null => false
    t.string   "chars_per_inch",                 :limit => 30
    t.string   "default_cb_due_date",            :limit => 30,                                 :null => false
    t.string   "auto_site_numbering",            :limit => 1,                                  :null => false
    t.integer  "cash_basis_set_of_books_id",     :limit => 15,  :precision => 15, :scale => 0
    t.integer  "code_combination_id_gain",       :limit => 15,  :precision => 15, :scale => 0
    t.integer  "autocash_hierarchy_id",          :limit => 15,  :precision => 15, :scale => 0
    t.string   "run_gl_journal_import_flag",     :limit => 1,                                  :null => false
    t.integer  "cer_split_amount",               :limit => 9,   :precision => 9,  :scale => 0, :null => false
    t.integer  "cer_dso_days",                   :limit => 5,   :precision => 5,  :scale => 0, :null => false
    t.integer  "posting_days_per_cycle",         :limit => 5,   :precision => 5,  :scale => 0, :null => false
    t.string   "address_validation",             :limit => 30,                                 :null => false
    t.string   "attribute1",                     :limit => 150
    t.string   "attribute2",                     :limit => 150
    t.string   "attribute_category",             :limit => 30
    t.string   "attribute3",                     :limit => 150
    t.string   "attribute4",                     :limit => 150
    t.string   "attribute5",                     :limit => 150
    t.string   "attribute6",                     :limit => 150
    t.string   "attribute7",                     :limit => 150
    t.string   "attribute8",                     :limit => 150
    t.string   "attribute9",                     :limit => 150
    t.string   "attribute10",                    :limit => 150
    t.string   "calc_discount_on_lines_flag",    :limit => 1,                                  :null => false
    t.string   "change_printed_invoice_flag",    :limit => 1,                                  :null => false
    t.integer  "code_combination_id_loss",       :limit => 15,  :precision => 15, :scale => 0
    t.string   "create_reciprocal_flag",         :limit => 1,                                  :null => false
    t.string   "default_country",                :limit => 60
    t.string   "default_territory",              :limit => 30,                                 :null => false
    t.string   "generate_customer_number",       :limit => 1,                                  :null => false
    t.string   "invoice_deletion_flag",          :limit => 1,                                  :null => false
    t.integer  "location_structure_id",          :limit => 15,  :precision => 15, :scale => 0
    t.string   "site_required_flag",             :limit => 1,                                  :null => false
    t.string   "tax_allow_compound_flag",        :limit => 1,                                  :null => false
    t.string   "tax_invoice_print",              :limit => 30,                                 :null => false
    t.string   "tax_method",                     :limit => 30,                                 :null => false
    t.string   "tax_use_customer_exempt_flag",   :limit => 1,                                  :null => false
    t.string   "tax_use_cust_exc_rate_flag",     :limit => 1,                                  :null => false
    t.string   "tax_use_loc_exc_rate_flag",      :limit => 1,                                  :null => false
    t.string   "tax_use_product_exempt_flag",    :limit => 1,                                  :null => false
    t.string   "tax_use_prod_exc_rate_flag",     :limit => 1,                                  :null => false
    t.string   "tax_use_site_exc_rate_flag",     :limit => 1,                                  :null => false
    t.integer  "ai_log_file_message_level",      :limit => 15,  :precision => 15, :scale => 0
    t.integer  "ai_max_memory_in_bytes",         :limit => 15,  :precision => 15, :scale => 0
    t.string   "ai_acct_flex_key_left_prompt",   :limit => 80
    t.string   "ai_mtl_items_key_left_prompt",   :limit => 80
    t.string   "ai_territory_key_left_prompt",   :limit => 80
    t.string   "ai_purge_interface_tables_flag", :limit => 1
    t.string   "ai_activate_sql_trace_flag",     :limit => 1
    t.integer  "default_grouping_rule_id",       :limit => 15,  :precision => 15, :scale => 0, :null => false
    t.string   "salesrep_required_flag",         :limit => 1,                                  :null => false
    t.string   "attribute11",                    :limit => 150
    t.string   "attribute12",                    :limit => 150
    t.string   "attribute13",                    :limit => 150
    t.string   "attribute14",                    :limit => 150
    t.string   "attribute15",                    :limit => 150
    t.integer  "auto_rec_invoices_per_commit",   :limit => 8,   :precision => 8,  :scale => 0, :null => false
    t.integer  "auto_rec_receipts_per_commit",   :limit => 8,   :precision => 8,  :scale => 0, :null => false
    t.string   "pay_unrelated_invoices_flag",    :limit => 1,                                  :null => false
    t.integer  "tax_cache",                      :limit => 15,  :precision => 15, :scale => 0
    t.string   "print_home_country_flag",        :limit => 1,                                  :null => false
    t.integer  "location_tax_account",           :limit => 15,  :precision => 15, :scale => 0
    t.string   "from_postal_code",               :limit => 60,                                 :null => false
    t.string   "to_postal_code",                 :limit => 60,                                 :null => false
    t.string   "tax_registration_number",        :limit => 60
    t.string   "populate_gl_segments_flag",      :limit => 1,                                  :null => false
    t.integer  "unallocated_revenue_ccid",       :limit => 15,  :precision => 15, :scale => 0
    t.integer  "org_id",                         :limit => 15,  :precision => 15, :scale => 0
    t.string   "tax_currency_code",              :limit => 15
    t.boolean  "tax_precision",                                 :precision => 1,  :scale => 0
    t.integer  "tax_minimum_accountable_unit",                  :precision => 38, :scale => 0
    t.string   "tax_header_level_flag",          :limit => 1,                                  :null => false
    t.string   "tax_rounding_rule",              :limit => 30,                                 :null => false
    t.string   "tax_rounding_allow_override",    :limit => 1,                                  :null => false
    t.string   "tax_code",                       :limit => 50
    t.string   "global_attribute1",              :limit => 150
    t.string   "global_attribute2",              :limit => 150
    t.string   "global_attribute3",              :limit => 150
    t.string   "global_attribute4",              :limit => 150
    t.string   "global_attribute5",              :limit => 150
    t.string   "global_attribute6",              :limit => 150
    t.string   "global_attribute7",              :limit => 150
    t.string   "global_attribute8",              :limit => 150
    t.string   "global_attribute9",              :limit => 150
    t.string   "global_attribute10",             :limit => 150
    t.string   "global_attribute11",             :limit => 150
    t.string   "global_attribute12",             :limit => 150
    t.string   "global_attribute13",             :limit => 150
    t.string   "global_attribute14",             :limit => 150
    t.string   "global_attribute15",             :limit => 150
    t.string   "global_attribute16",             :limit => 150
    t.string   "global_attribute17",             :limit => 150
    t.string   "global_attribute18",             :limit => 150
    t.string   "global_attribute19",             :limit => 150
    t.string   "global_attribute20",             :limit => 150
    t.string   "global_attribute_category",      :limit => 30
  end

  create_table "as_sales_lead_ranks_vl_bak", :id => false, :force => true do |t|
    t.decimal  "rank_id",                          :null => false
    t.datetime "last_update_date",                 :null => false
    t.decimal  "last_update_login"
    t.decimal  "created_by",                       :null => false
    t.datetime "creation_date",                    :null => false
    t.decimal  "last_updated_by",                  :null => false
    t.decimal  "min_score",                        :null => false
    t.decimal  "max_score",                        :null => false
    t.string   "enabled_flag",      :limit => 1,   :null => false
    t.string   "meaning",           :limit => 240, :null => false
    t.string   "description",       :limit => 240
  end

  create_table "as_territory_link", :id => false, :force => true do |t|
    t.decimal "customer_id"
    t.decimal "site_id"
    t.decimal "territory_id"
  end

  create_table "asf07010325perz_lf_object_temp", :id => false, :force => true do |t|
    t.decimal  "object_id",                                                                  :null => false
    t.decimal  "parent_id"
    t.decimal  "application_id"
    t.string   "object_name",                  :limit => 60
    t.string   "object_description",           :limit => 240
    t.decimal  "object_version_number",                                                      :null => false
    t.integer  "created_by",                   :limit => 15,  :precision => 15, :scale => 0, :null => false
    t.datetime "last_update_date",                                                           :null => false
    t.integer  "last_updated_by",              :limit => 15,  :precision => 15, :scale => 0, :null => false
    t.integer  "last_update_login",            :limit => 15,  :precision => 15, :scale => 0
    t.decimal  "jtf_perz_lf_object_object_id"
    t.decimal  "security_group_id"
  end

  create_table "asf07010325perz_obj_map_temp", :id => false, :force => true do |t|
    t.decimal  "obj_map_id",                                                     :null => false
    t.decimal  "map_id"
    t.decimal  "object_id"
    t.integer  "created_by",        :limit => 15, :precision => 15, :scale => 0, :null => false
    t.datetime "last_update_date",                                               :null => false
    t.integer  "last_updated_by",   :limit => 15, :precision => 15, :scale => 0, :null => false
    t.integer  "last_update_login", :limit => 15, :precision => 15, :scale => 0
    t.decimal  "security_group_id"
  end

  create_table "asf08280959perz_lf_object_temp", :id => false, :force => true do |t|
    t.decimal  "object_id",                                                                  :null => false
    t.decimal  "parent_id"
    t.decimal  "application_id"
    t.string   "object_name",                  :limit => 60
    t.string   "object_description",           :limit => 240
    t.decimal  "object_version_number",                                                      :null => false
    t.integer  "created_by",                   :limit => 15,  :precision => 15, :scale => 0, :null => false
    t.datetime "last_update_date",                                                           :null => false
    t.integer  "last_updated_by",              :limit => 15,  :precision => 15, :scale => 0, :null => false
    t.integer  "last_update_login",            :limit => 15,  :precision => 15, :scale => 0
    t.decimal  "jtf_perz_lf_object_object_id"
    t.decimal  "security_group_id"
  end

  create_table "asf08280959perz_obj_map_temp", :id => false, :force => true do |t|
    t.decimal  "obj_map_id",                                                     :null => false
    t.decimal  "map_id"
    t.decimal  "object_id"
    t.integer  "created_by",        :limit => 15, :precision => 15, :scale => 0, :null => false
    t.datetime "last_update_date",                                               :null => false
    t.integer  "last_updated_by",   :limit => 15, :precision => 15, :scale => 0, :null => false
    t.integer  "last_update_login", :limit => 15, :precision => 15, :scale => 0
    t.decimal  "security_group_id"
  end

  create_table "asf11010153perz_lf_object_temp", :id => false, :force => true do |t|
    t.decimal  "object_id",                                                                  :null => false
    t.decimal  "parent_id"
    t.decimal  "application_id"
    t.string   "object_name",                  :limit => 60
    t.string   "object_description",           :limit => 240
    t.decimal  "object_version_number",                                                      :null => false
    t.integer  "created_by",                   :limit => 15,  :precision => 15, :scale => 0, :null => false
    t.datetime "last_update_date",                                                           :null => false
    t.integer  "last_updated_by",              :limit => 15,  :precision => 15, :scale => 0, :null => false
    t.integer  "last_update_login",            :limit => 15,  :precision => 15, :scale => 0
    t.decimal  "jtf_perz_lf_object_object_id"
    t.decimal  "security_group_id"
  end

  create_table "asf11010153perz_obj_map_temp", :id => false, :force => true do |t|
    t.decimal  "obj_map_id",                                                     :null => false
    t.decimal  "map_id"
    t.decimal  "object_id"
    t.integer  "created_by",        :limit => 15, :precision => 15, :scale => 0, :null => false
    t.datetime "last_update_date",                                               :null => false
    t.integer  "last_updated_by",   :limit => 15, :precision => 15, :scale => 0, :null => false
    t.integer  "last_update_login", :limit => 15, :precision => 15, :scale => 0
    t.decimal  "security_group_id"
  end

  create_table "asf_fndattdoc05310701_bak", :id => false, :force => true do |t|
    t.decimal  "attached_document_id",                    :null => false
    t.decimal  "document_id",                             :null => false
    t.datetime "creation_date",                           :null => false
    t.decimal  "created_by",                              :null => false
    t.datetime "last_update_date",                        :null => false
    t.decimal  "last_updated_by",                         :null => false
    t.decimal  "last_update_login"
    t.decimal  "seq_num",                                 :null => false
    t.string   "entity_name",              :limit => 40,  :null => false
    t.string   "pk1_value",                :limit => 100
    t.string   "pk2_value",                :limit => 100
    t.string   "pk3_value",                :limit => 100
    t.string   "pk4_value",                :limit => 150
    t.string   "pk5_value",                :limit => 150
    t.string   "automatically_added_flag", :limit => 1,   :null => false
    t.decimal  "program_application_id"
    t.decimal  "program_id"
    t.datetime "program_update_date"
    t.decimal  "request_id"
    t.string   "attribute_category",       :limit => 30
    t.string   "attribute1",               :limit => 150
    t.string   "attribute2",               :limit => 150
    t.string   "attribute3",               :limit => 150
    t.string   "attribute4",               :limit => 150
    t.string   "attribute5",               :limit => 150
    t.string   "attribute6",               :limit => 150
    t.string   "attribute7",               :limit => 150
    t.string   "attribute8",               :limit => 150
    t.string   "attribute9",               :limit => 150
    t.string   "attribute10",              :limit => 150
    t.string   "attribute11",              :limit => 150
    t.string   "attribute12",              :limit => 150
    t.string   "attribute13",              :limit => 150
    t.string   "attribute14",              :limit => 150
    t.string   "attribute15",              :limit => 150
    t.string   "column1",                  :limit => 30
    t.string   "app_source_version"
    t.decimal  "category_id"
    t.string   "status",                   :limit => 30
  end

  create_table "asf_fndattdoc07020655_bak", :id => false, :force => true do |t|
    t.decimal  "attached_document_id",                    :null => false
    t.decimal  "document_id",                             :null => false
    t.datetime "creation_date",                           :null => false
    t.decimal  "created_by",                              :null => false
    t.datetime "last_update_date",                        :null => false
    t.decimal  "last_updated_by",                         :null => false
    t.decimal  "last_update_login"
    t.decimal  "seq_num",                                 :null => false
    t.string   "entity_name",              :limit => 40,  :null => false
    t.string   "pk1_value",                :limit => 100
    t.string   "pk2_value",                :limit => 100
    t.string   "pk3_value",                :limit => 100
    t.string   "pk4_value",                :limit => 150
    t.string   "pk5_value",                :limit => 150
    t.string   "automatically_added_flag", :limit => 1,   :null => false
    t.decimal  "program_application_id"
    t.decimal  "program_id"
    t.datetime "program_update_date"
    t.decimal  "request_id"
    t.string   "attribute_category",       :limit => 30
    t.string   "attribute1",               :limit => 150
    t.string   "attribute2",               :limit => 150
    t.string   "attribute3",               :limit => 150
    t.string   "attribute4",               :limit => 150
    t.string   "attribute5",               :limit => 150
    t.string   "attribute6",               :limit => 150
    t.string   "attribute7",               :limit => 150
    t.string   "attribute8",               :limit => 150
    t.string   "attribute9",               :limit => 150
    t.string   "attribute10",              :limit => 150
    t.string   "attribute11",              :limit => 150
    t.string   "attribute12",              :limit => 150
    t.string   "attribute13",              :limit => 150
    t.string   "attribute14",              :limit => 150
    t.string   "attribute15",              :limit => 150
    t.string   "column1",                  :limit => 30
    t.string   "app_source_version"
    t.decimal  "category_id"
    t.string   "status",                   :limit => 30
  end

  create_table "asf_fndattdoc09171135_bak", :id => false, :force => true do |t|
    t.decimal  "attached_document_id",                    :null => false
    t.decimal  "document_id",                             :null => false
    t.datetime "creation_date",                           :null => false
    t.decimal  "created_by",                              :null => false
    t.datetime "last_update_date",                        :null => false
    t.decimal  "last_updated_by",                         :null => false
    t.decimal  "last_update_login"
    t.decimal  "seq_num",                                 :null => false
    t.string   "entity_name",              :limit => 40,  :null => false
    t.string   "pk1_value",                :limit => 100
    t.string   "pk2_value",                :limit => 100
    t.string   "pk3_value",                :limit => 100
    t.string   "pk4_value",                :limit => 150
    t.string   "pk5_value",                :limit => 150
    t.string   "automatically_added_flag", :limit => 1,   :null => false
    t.decimal  "program_application_id"
    t.decimal  "program_id"
    t.datetime "program_update_date"
    t.decimal  "request_id"
    t.string   "attribute_category",       :limit => 30
    t.string   "attribute1",               :limit => 150
    t.string   "attribute2",               :limit => 150
    t.string   "attribute3",               :limit => 150
    t.string   "attribute4",               :limit => 150
    t.string   "attribute5",               :limit => 150
    t.string   "attribute6",               :limit => 150
    t.string   "attribute7",               :limit => 150
    t.string   "attribute8",               :limit => 150
    t.string   "attribute9",               :limit => 150
    t.string   "attribute10",              :limit => 150
    t.string   "attribute11",              :limit => 150
    t.string   "attribute12",              :limit => 150
    t.string   "attribute13",              :limit => 150
    t.string   "attribute14",              :limit => 150
    t.string   "attribute15",              :limit => 150
    t.string   "column1",                  :limit => 30
    t.string   "app_source_version"
  end

  create_table "asf_fndattdoc10100832_bak", :id => false, :force => true do |t|
    t.decimal  "attached_document_id",                    :null => false
    t.decimal  "document_id",                             :null => false
    t.datetime "creation_date",                           :null => false
    t.decimal  "created_by",                              :null => false
    t.datetime "last_update_date",                        :null => false
    t.decimal  "last_updated_by",                         :null => false
    t.decimal  "last_update_login"
    t.decimal  "seq_num",                                 :null => false
    t.string   "entity_name",              :limit => 40,  :null => false
    t.string   "pk1_value",                :limit => 100
    t.string   "pk2_value",                :limit => 100
    t.string   "pk3_value",                :limit => 100
    t.string   "pk4_value",                :limit => 150
    t.string   "pk5_value",                :limit => 150
    t.string   "automatically_added_flag", :limit => 1,   :null => false
    t.decimal  "program_application_id"
    t.decimal  "program_id"
    t.datetime "program_update_date"
    t.decimal  "request_id"
    t.string   "attribute_category",       :limit => 30
    t.string   "attribute1",               :limit => 150
    t.string   "attribute2",               :limit => 150
    t.string   "attribute3",               :limit => 150
    t.string   "attribute4",               :limit => 150
    t.string   "attribute5",               :limit => 150
    t.string   "attribute6",               :limit => 150
    t.string   "attribute7",               :limit => 150
    t.string   "attribute8",               :limit => 150
    t.string   "attribute9",               :limit => 150
    t.string   "attribute10",              :limit => 150
    t.string   "attribute11",              :limit => 150
    t.string   "attribute12",              :limit => 150
    t.string   "attribute13",              :limit => 150
    t.string   "attribute14",              :limit => 150
    t.string   "attribute15",              :limit => 150
    t.string   "column1",                  :limit => 30
    t.string   "app_source_version"
  end

  create_table "asf_fndattdoc10190155_bak", :id => false, :force => true do |t|
    t.decimal  "attached_document_id",                    :null => false
    t.decimal  "document_id",                             :null => false
    t.datetime "creation_date",                           :null => false
    t.decimal  "created_by",                              :null => false
    t.datetime "last_update_date",                        :null => false
    t.decimal  "last_updated_by",                         :null => false
    t.decimal  "last_update_login"
    t.decimal  "seq_num",                                 :null => false
    t.string   "entity_name",              :limit => 40,  :null => false
    t.string   "pk1_value",                :limit => 100
    t.string   "pk2_value",                :limit => 100
    t.string   "pk3_value",                :limit => 100
    t.string   "pk4_value",                :limit => 150
    t.string   "pk5_value",                :limit => 150
    t.string   "automatically_added_flag", :limit => 1,   :null => false
    t.decimal  "program_application_id"
    t.decimal  "program_id"
    t.datetime "program_update_date"
    t.decimal  "request_id"
    t.string   "attribute_category",       :limit => 30
    t.string   "attribute1",               :limit => 150
    t.string   "attribute2",               :limit => 150
    t.string   "attribute3",               :limit => 150
    t.string   "attribute4",               :limit => 150
    t.string   "attribute5",               :limit => 150
    t.string   "attribute6",               :limit => 150
    t.string   "attribute7",               :limit => 150
    t.string   "attribute8",               :limit => 150
    t.string   "attribute9",               :limit => 150
    t.string   "attribute10",              :limit => 150
    t.string   "attribute11",              :limit => 150
    t.string   "attribute12",              :limit => 150
    t.string   "attribute13",              :limit => 150
    t.string   "attribute14",              :limit => 150
    t.string   "attribute15",              :limit => 150
    t.string   "column1",                  :limit => 30
    t.string   "app_source_version"
  end

  create_table "asf_fndattdoc10200106_bak", :id => false, :force => true do |t|
    t.decimal  "attached_document_id",                    :null => false
    t.decimal  "document_id",                             :null => false
    t.datetime "creation_date",                           :null => false
    t.decimal  "created_by",                              :null => false
    t.datetime "last_update_date",                        :null => false
    t.decimal  "last_updated_by",                         :null => false
    t.decimal  "last_update_login"
    t.decimal  "seq_num",                                 :null => false
    t.string   "entity_name",              :limit => 40,  :null => false
    t.string   "pk1_value",                :limit => 100
    t.string   "pk2_value",                :limit => 100
    t.string   "pk3_value",                :limit => 100
    t.string   "pk4_value",                :limit => 150
    t.string   "pk5_value",                :limit => 150
    t.string   "automatically_added_flag", :limit => 1,   :null => false
    t.decimal  "program_application_id"
    t.decimal  "program_id"
    t.datetime "program_update_date"
    t.decimal  "request_id"
    t.string   "attribute_category",       :limit => 30
    t.string   "attribute1",               :limit => 150
    t.string   "attribute2",               :limit => 150
    t.string   "attribute3",               :limit => 150
    t.string   "attribute4",               :limit => 150
    t.string   "attribute5",               :limit => 150
    t.string   "attribute6",               :limit => 150
    t.string   "attribute7",               :limit => 150
    t.string   "attribute8",               :limit => 150
    t.string   "attribute9",               :limit => 150
    t.string   "attribute10",              :limit => 150
    t.string   "attribute11",              :limit => 150
    t.string   "attribute12",              :limit => 150
    t.string   "attribute13",              :limit => 150
    t.string   "attribute14",              :limit => 150
    t.string   "attribute15",              :limit => 150
    t.string   "column1",                  :limit => 30
    t.string   "app_source_version"
    t.decimal  "category_id"
    t.string   "status",                   :limit => 30
  end

  create_table "asf_fndattdoc12140517_bak", :id => false, :force => true do |t|
    t.decimal  "attached_document_id",                    :null => false
    t.decimal  "document_id",                             :null => false
    t.datetime "creation_date",                           :null => false
    t.decimal  "created_by",                              :null => false
    t.datetime "last_update_date",                        :null => false
    t.decimal  "last_updated_by",                         :null => false
    t.decimal  "last_update_login"
    t.decimal  "seq_num",                                 :null => false
    t.string   "entity_name",              :limit => 40,  :null => false
    t.string   "pk1_value",                :limit => 100
    t.string   "pk2_value",                :limit => 100
    t.string   "pk3_value",                :limit => 100
    t.string   "pk4_value",                :limit => 150
    t.string   "pk5_value",                :limit => 150
    t.string   "automatically_added_flag", :limit => 1,   :null => false
    t.decimal  "program_application_id"
    t.decimal  "program_id"
    t.datetime "program_update_date"
    t.decimal  "request_id"
    t.string   "attribute_category",       :limit => 30
    t.string   "attribute1",               :limit => 150
    t.string   "attribute2",               :limit => 150
    t.string   "attribute3",               :limit => 150
    t.string   "attribute4",               :limit => 150
    t.string   "attribute5",               :limit => 150
    t.string   "attribute6",               :limit => 150
    t.string   "attribute7",               :limit => 150
    t.string   "attribute8",               :limit => 150
    t.string   "attribute9",               :limit => 150
    t.string   "attribute10",              :limit => 150
    t.string   "attribute11",              :limit => 150
    t.string   "attribute12",              :limit => 150
    t.string   "attribute13",              :limit => 150
    t.string   "attribute14",              :limit => 150
    t.string   "attribute15",              :limit => 150
    t.string   "column1",                  :limit => 30
    t.string   "app_source_version"
  end

  create_table "asf_leads_bin_mv", :id => false, :force => true do |t|
    t.decimal "parent_resource_id"
    t.string  "period_name",            :limit => 15, :null => false
    t.string  "period_type",            :limit => 15, :null => false
    t.decimal "cnt"
    t.decimal "amt"
    t.decimal "conversion_status_flag"
  end

  add_index "asf_leads_bin_mv", ["parent_resource_id", "period_name", "period_type", "conversion_status_flag"], :name => "asf_leads_bin_mv_n1", :tablespace => "apps_ts_summary"

  create_table "asf_leads_chn_main_mv", :id => false, :force => true do |t|
    t.decimal "channels"
    t.decimal "budgetamount"
    t.string  "currency_code",      :limit => 3
    t.string  "channel_code",       :limit => 30
    t.decimal "manager_person_id"
    t.string  "period_name",        :limit => 15, :null => false
    t.string  "period_type",        :limit => 15, :null => false
    t.decimal "parent_resource_id"
  end

  add_index "asf_leads_chn_main_mv", ["parent_resource_id", "period_type", "period_name"], :name => "asf_leads_chn_main_mv_n1", :tablespace => "apps_ts_summary"

  create_table "asf_leads_chn_mv", :id => false, :force => true do |t|
    t.decimal "sales_lead_id",                      :null => false
    t.decimal "budgetamount"
    t.string  "currency_code",      :limit => 3
    t.string  "channel_code",       :limit => 30
    t.decimal "customer_id",                        :null => false
    t.decimal "manager_person_id"
    t.string  "period_name",        :limit => 15,   :null => false
    t.string  "period_type",        :limit => 15,   :null => false
    t.decimal "parent_resource_id"
    t.string  "description",        :limit => 2000
  end

  add_index "asf_leads_chn_mv", ["parent_resource_id", "currency_code", "period_name", "customer_id", "period_type", "channel_code"], :name => "asf_leads_chn_mv_n1", :tablespace => "apps_ts_summary"

  create_table "asf_leads_chn_sum_mv", :id => false, :force => true do |t|
    t.decimal "lead_id",                             :null => false
    t.string  "description",         :limit => 2000
    t.decimal "budgetamount"
    t.string  "currency_code",       :limit => 3
    t.string  "channel_code",        :limit => 30
    t.decimal "source_promotion_id"
    t.decimal "customer_id",                         :null => false
    t.decimal "manager_person_id"
    t.string  "period_name",         :limit => 15,   :null => false
    t.string  "period_type",         :limit => 15,   :null => false
    t.decimal "parent_resource_id"
  end

  add_index "asf_leads_chn_sum_mv", ["parent_resource_id", "period_type", "period_name"], :name => "asf_leads_chn_sum_mv_n1", :tablespace => "apps_ts_summary"

  create_table "asf_leads_cmp_main_mv", :id => false, :force => true do |t|
    t.decimal "campaigns"
    t.decimal "budgetamount"
    t.decimal "source_promotion_id"
    t.string  "currency_code",       :limit => 3
    t.decimal "manager_person_id"
    t.string  "period_name",         :limit => 15, :null => false
    t.string  "period_type",         :limit => 15, :null => false
    t.decimal "parent_resource_id"
  end

  add_index "asf_leads_cmp_main_mv", ["parent_resource_id", "period_type", "period_name"], :name => "asf_leads_cmp_main_mv_n1", :tablespace => "apps_ts_summary"

  create_table "asf_leads_cmp_mv", :id => false, :force => true do |t|
    t.decimal "sales_lead_id",                       :null => false
    t.decimal "budgetamount"
    t.decimal "source_promotion_id"
    t.string  "currency_code",       :limit => 3
    t.decimal "customer_id",                         :null => false
    t.decimal "manager_person_id"
    t.string  "period_name",         :limit => 15,   :null => false
    t.string  "period_type",         :limit => 15,   :null => false
    t.decimal "parent_resource_id"
    t.string  "description",         :limit => 2000
  end

  add_index "asf_leads_cmp_mv", ["parent_resource_id", "period_type", "period_name", "manager_person_id"], :name => "asf_leads_cmp_mv_n1", :tablespace => "apps_ts_summary"

  create_table "asf_leads_grp_mv", :id => false, :force => true do |t|
    t.decimal "groups"
    t.decimal "sales_lead_id",                         :null => false
    t.decimal "budgetamount"
    t.decimal "group_id",                              :null => false
    t.string  "currency_code",           :limit => 3
    t.decimal "parent_group_id",                       :null => false
    t.string  "immediate_parent_flag",   :limit => 1,  :null => false
    t.decimal "parent_resource_id"
    t.decimal "assign_to_salesforce_id"
    t.string  "period_name",             :limit => 15, :null => false
    t.string  "period_type",             :limit => 15, :null => false
  end

  add_index "asf_leads_grp_mv", ["parent_group_id", "period_type", "period_name"], :name => "asf_leads_grp_mv_n1", :tablespace => "apps_ts_summary"

  create_table "asf_leads_prd_main_mv", :id => false, :force => true do |t|
    t.decimal "budgetamount"
    t.string  "currency_code",      :limit => 3
    t.decimal "manager_person_id"
    t.string  "period_name",        :limit => 15, :null => false
    t.string  "period_type",        :limit => 15, :null => false
    t.decimal "category_id"
    t.decimal "category_set_id"
    t.decimal "products"
    t.decimal "parent_resource_id"
  end

  add_index "asf_leads_prd_main_mv", ["parent_resource_id", "currency_code", "period_name", "period_type"], :name => "asf_leads_prd_main_mv_n1", :tablespace => "apps_ts_summary"

  create_table "asf_leads_prd_mv", :id => false, :force => true do |t|
    t.decimal "sales_lead_id",                    :null => false
    t.decimal "budgetamount"
    t.string  "currency_code",      :limit => 3
    t.decimal "manager_person_id"
    t.string  "period_name",        :limit => 15, :null => false
    t.string  "period_type",        :limit => 15, :null => false
    t.decimal "category_id"
    t.decimal "category_set_id"
    t.decimal "customer_id",                      :null => false
    t.decimal "parent_resource_id"
  end

  add_index "asf_leads_prd_mv", ["parent_resource_id", "period_type", "period_name", "manager_person_id"], :name => "asf_leads_prd_mv_n1", :tablespace => "apps_ts_summary"

  create_table "asf_leads_prd_sum_mv", :id => false, :force => true do |t|
    t.decimal "lead_id",                            :null => false
    t.string  "description",        :limit => 2000
    t.decimal "budgetamount"
    t.string  "currency_code",      :limit => 3
    t.decimal "customer_id",                        :null => false
    t.decimal "manager_person_id"
    t.string  "period_name",        :limit => 15,   :null => false
    t.string  "period_type",        :limit => 15,   :null => false
    t.decimal "parent_id"
    t.decimal "category_set_id"
    t.decimal "products"
    t.decimal "parent_resource_id"
  end

  add_index "asf_leads_prd_sum_mv", ["parent_resource_id", "period_type", "period_name", "manager_person_id"], :name => "asf_leads_prd_sum_mv_n1", :tablespace => "apps_ts_summary"

  create_table "asf_leads_top_mv", :id => false, :force => true do |t|
    t.decimal "leads"
    t.decimal "budgetamount"
    t.decimal "customer_id",                      :null => false
    t.string  "currency_code",      :limit => 3
    t.decimal "manager_person_id"
    t.string  "period_name",        :limit => 15, :null => false
    t.string  "period_type",        :limit => 15, :null => false
    t.decimal "parent_resource_id"
  end

  add_index "asf_leads_top_mv", ["parent_resource_id", "period_name", "period_type"], :name => "asf_leads_top_mv_n1", :tablespace => "apps_ts_summary"

  create_table "asf_opp_chn_frcst_mv", :id => false, :force => true do |t|
    t.decimal "leads"
    t.decimal "lead_id",                              :null => false
    t.string  "channel_code",           :limit => 30
    t.decimal "budget"
    t.string  "currency_code",          :limit => 15
    t.decimal "conversion_status_flag"
    t.decimal "sales_group_id"
    t.decimal "credit_type_id"
    t.decimal "salesforce_id",                        :null => false
    t.decimal "parent_group_id",                      :null => false
    t.decimal "product_category_id"
    t.decimal "product_cat_set_id"
    t.string  "period_name",            :limit => 15, :null => false
    t.string  "immediate_parent_flag",  :limit => 1,  :null => false
    t.string  "win_loss_indicator",     :limit => 1
    t.string  "opp_open_status_flag",   :limit => 1
    t.string  "forecast_rollup_flag",   :limit => 1
  end

  add_index "asf_opp_chn_frcst_mv", ["parent_group_id", "period_name", "credit_type_id", "product_category_id", "product_cat_set_id", "win_loss_indicator", "opp_open_status_flag", "forecast_rollup_flag"], :name => "asf_opp_chn_frcst_mv_n1", :tablespace => "apps_ts_summary"
  add_index "asf_opp_chn_frcst_mv", ["sales_group_id", "salesforce_id", "period_name", "credit_type_id", "product_category_id", "product_cat_set_id", "win_loss_indicator", "opp_open_status_flag", "forecast_rollup_flag"], :name => "asf_opp_chn_frcst_mv_n2", :tablespace => "apps_ts_summary"

  create_table "asf_opp_chn_mv", :id => false, :force => true do |t|
    t.string  "channel_code",           :limit => 30
    t.decimal "leads"
    t.decimal "budget"
    t.string  "win_loss_indicator",     :limit => 1
    t.string  "opp_open_status_flag",   :limit => 1
    t.decimal "manager_person_id"
    t.string  "conversion_period_type", :limit => 15, :null => false
    t.string  "conversion_period_name", :limit => 15, :null => false
    t.string  "to_currency_code",       :limit => 15
    t.decimal "parent_resource_id"
  end

  add_index "asf_opp_chn_mv", ["parent_resource_id", "conversion_period_type", "conversion_period_name", "opp_open_status_flag", "win_loss_indicator", "budget", "manager_person_id"], :name => "asf_opp_chn_mv_n1", :tablespace => "apps_ts_summary"

  create_table "asf_opp_cmp_frcst_mv", :id => false, :force => true do |t|
    t.decimal "leads"
    t.decimal "lead_id",                              :null => false
    t.decimal "source_promotion_id"
    t.decimal "budget"
    t.string  "currency_code",          :limit => 15
    t.decimal "conversion_status_flag"
    t.decimal "sales_group_id"
    t.decimal "credit_type_id"
    t.decimal "salesforce_id",                        :null => false
    t.decimal "parent_group_id",                      :null => false
    t.decimal "product_category_id"
    t.decimal "product_cat_set_id"
    t.string  "period_name",            :limit => 15, :null => false
    t.string  "immediate_parent_flag",  :limit => 1,  :null => false
    t.string  "win_loss_indicator",     :limit => 1
    t.string  "opp_open_status_flag",   :limit => 1
    t.string  "forecast_rollup_flag",   :limit => 1
  end

  add_index "asf_opp_cmp_frcst_mv", ["parent_group_id", "period_name", "credit_type_id", "product_category_id", "product_cat_set_id", "win_loss_indicator", "opp_open_status_flag", "forecast_rollup_flag"], :name => "asf_opp_cmp_frcst_mv_n1", :tablespace => "apps_ts_summary"
  add_index "asf_opp_cmp_frcst_mv", ["sales_group_id", "salesforce_id", "period_name", "credit_type_id", "product_category_id", "product_cat_set_id", "win_loss_indicator", "opp_open_status_flag", "forecast_rollup_flag"], :name => "asf_opp_cmp_frcst_mv_n2", :tablespace => "apps_ts_summary"

  create_table "asf_opp_cmp_mv", :id => false, :force => true do |t|
    t.decimal "source_promotion_id"
    t.decimal "leads"
    t.decimal "budget"
    t.string  "win_loss_indicator",     :limit => 1
    t.string  "opp_open_status_flag",   :limit => 1
    t.decimal "manager_person_id"
    t.string  "conversion_period_type", :limit => 15, :null => false
    t.string  "conversion_period_name", :limit => 15, :null => false
    t.string  "to_currency_code",       :limit => 15
    t.decimal "parent_resource_id"
  end

  add_index "asf_opp_cmp_mv", ["parent_resource_id", "conversion_period_type", "conversion_period_name", "opp_open_status_flag", "win_loss_indicator", "budget", "manager_person_id"], :name => "asf_opp_cmp_mv_n1", :tablespace => "apps_ts_summary"

  create_table "asf_opp_prd_mv", :id => false, :force => true do |t|
    t.decimal "product_category_id"
    t.decimal "product_cat_set_id"
    t.decimal "leads"
    t.decimal "budget"
    t.string  "win_loss_indicator",     :limit => 1
    t.string  "forecast_rollup_flag",   :limit => 1
    t.string  "opp_open_status_flag",   :limit => 1
    t.decimal "manager_person_id"
    t.string  "conversion_period_type", :limit => 15, :null => false
    t.string  "conversion_period_name", :limit => 15, :null => false
    t.string  "to_currency_code",       :limit => 15
    t.decimal "parent_resource_id"
    t.decimal "sales_group_id"
    t.decimal "salesforce_id",                        :null => false
    t.decimal "credit_type_id"
  end

  add_index "asf_opp_prd_mv", ["parent_resource_id", "conversion_period_type", "conversion_period_name", "opp_open_status_flag", "win_loss_indicator", "budget", "manager_person_id"], :name => "asf_opp_prd_mv_n1", :tablespace => "apps_ts_summary"

  create_table "asf_opp_top_frcst_mv", :id => false, :force => true do |t|
    t.decimal  "leads"
    t.decimal  "sales_credit_id",                       :null => false
    t.string   "customer_name",          :limit => 360
    t.decimal  "customer_id",                           :null => false
    t.string   "party_type",             :limit => 30
    t.decimal  "lead_id",                               :null => false
    t.string   "opp_description",        :limit => 240
    t.decimal  "budget"
    t.string   "currency_code",          :limit => 15
    t.decimal  "conversion_status_flag"
    t.decimal  "sales_group_id"
    t.decimal  "credit_type_id"
    t.decimal  "salesforce_id",                         :null => false
    t.decimal  "win_probability"
    t.datetime "decision_date"
    t.string   "sales_stage",            :limit => 60
    t.string   "status",                 :limit => 240
    t.decimal  "parent_group_id",                       :null => false
    t.decimal  "product_category_id"
    t.decimal  "product_cat_set_id"
    t.string   "period_name",            :limit => 15,  :null => false
    t.string   "immediate_parent_flag",  :limit => 1,   :null => false
    t.string   "win_loss_indicator",     :limit => 1
    t.string   "opp_open_status_flag",   :limit => 1
    t.string   "forecast_rollup_flag",   :limit => 1
  end

  add_index "asf_opp_top_frcst_mv", ["period_name", "parent_group_id", "credit_type_id", "product_category_id", "product_cat_set_id", "win_loss_indicator", "opp_open_status_flag", "forecast_rollup_flag"], :name => "asf_opp_top_frcst_mv_n2", :tablespace => "apps_ts_summary"
  add_index "asf_opp_top_frcst_mv", ["period_name", "sales_group_id", "salesforce_id", "immediate_parent_flag", "credit_type_id", "product_category_id", "product_cat_set_id", "win_loss_indicator", "opp_open_status_flag", "forecast_rollup_flag"], :name => "asf_opp_top_frcst_mv_n1", :tablespace => "apps_ts_summary"

  create_table "asf_opp_top_mv", :id => false, :force => true do |t|
    t.string   "customer_name",          :limit => 360
    t.decimal  "customer_id",                           :null => false
    t.string   "party_type",             :limit => 30
    t.decimal  "lead_id",                               :null => false
    t.decimal  "total_amount"
    t.string   "opp_description",        :limit => 240
    t.string   "win_loss_indicator",     :limit => 1
    t.string   "opp_open_status_flag",   :limit => 1
    t.decimal  "manager_person_id"
    t.string   "conversion_period_type", :limit => 15,  :null => false
    t.string   "conversion_period_name", :limit => 15,  :null => false
    t.string   "to_currency_code",       :limit => 15
    t.decimal  "win_probability"
    t.datetime "decision_date"
    t.string   "sales_stage",            :limit => 60
    t.string   "status",                 :limit => 240
    t.decimal  "parent_resource_id"
    t.decimal  "currency_amount"
  end

  add_index "asf_opp_top_mv", ["parent_resource_id", "conversion_period_type", "conversion_period_name", "to_currency_code", "opp_open_status_flag", "total_amount", "manager_person_id"], :name => "asf_opp_top_mv_n1", :tablespace => "apps_ts_summary"
  add_index "asf_opp_top_mv", ["parent_resource_id", "conversion_period_type", "conversion_period_name", "to_currency_code", "win_loss_indicator", "total_amount", "manager_person_id"], :name => "asf_opp_top_mv_n2", :tablespace => "apps_ts_summary"
  add_index "asf_opp_top_mv", ["parent_resource_id", "opp_open_status_flag", "conversion_period_type", "conversion_period_name", "to_currency_code", "currency_amount"], :name => "asf_opp_top_mv_n3", :tablespace => "apps_ts_summary"
  add_index "asf_opp_top_mv", ["parent_resource_id", "win_loss_indicator", "conversion_period_type", "conversion_period_name", "to_currency_code", "currency_amount"], :name => "asf_opp_top_mv_n4", :tablespace => "apps_ts_summary"

  create_table "asf_sc_bin_frcst_mv", :id => false, :force => true do |t|
    t.decimal  "cnt"
    t.decimal  "pipeline_amount"
    t.decimal  "won_amount"
    t.string   "currency_code",         :limit => 15
    t.string   "forecast_rollup_flag",  :limit => 1
    t.string   "opp_deleted_flag",      :limit => 1
    t.datetime "forecast_date"
    t.decimal  "sales_group_id"
    t.decimal  "credit_type_id"
    t.decimal  "salesforce_id",                       :null => false
    t.decimal  "parent_group_id",                     :null => false
    t.decimal  "forecast_category_id",                :null => false
    t.string   "period_name",           :limit => 15, :null => false
    t.decimal  "lead_id",                             :null => false
    t.string   "immediate_parent_flag", :limit => 1,  :null => false
  end

  add_index "asf_sc_bin_frcst_mv", ["parent_group_id", "forecast_rollup_flag", "opp_deleted_flag", "forecast_date", "credit_type_id", "forecast_category_id", "currency_code", "period_name"], :name => "asf_scbin_frcst_n1", :tablespace => "apps_ts_summary"
  add_index "asf_sc_bin_frcst_mv", ["sales_group_id", "salesforce_id", "forecast_rollup_flag", "opp_deleted_flag", "forecast_date", "credit_type_id", "forecast_category_id", "currency_code", "period_name"], :name => "asf_scbin_frcst_n2", :tablespace => "apps_ts_summary"

# Could not dump table "asf_sl_bin_mv" because of following StandardError
#   Unknown type 'ROWID' for column 'arowid'

