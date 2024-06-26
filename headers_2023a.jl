HEADERS = [
"tls201.csv" => ["appln_id",	"appln_auth",	"appln_nr",	"appln_kind",	"appln_filing_date",	"appln_filing_year",	"appln_nr_epodoc",	"appln_nr_original",	"ipr_type",	"receiving_office",	"internat_appln_id",	"int_phase",	"reg_phase",	"nat_phase",	"earliest_filing_date",	"earliest_filing_year",	"earliest_filing_id",	"earliest_publn_date",	"earliest_publn_year",	"earliest_pat_publn_id",	"granted",	"docdb_family_id",	"inpadoc_family_id",	"docdb_family_size",	"nb_citing_docdb_fam",	"nb_applicants",	"nb_inventors"],
"tls202.csv" => ["appln_id",	"appln_title_lg",	"appln_title"],
"tls203.csv" => ["appln_id",	"appln_abstract_lg",	"appln_abstract"],
"tls204.csv" => ["appln_id",	"prior_appln_id",	"prior_appln_seq_nr"],
"tls205.csv" => ["appln_id",	"tech_rel_appln_id"],
"tls206.csv" => ["person_id",	"person_name",	"person_name_orig_lg",	"person_address",	"person_ctry_code",	"nuts",	"nuts_level",	"doc_std_name_id",	"doc_std_name",	"psn_id",	"psn_name",	"psn_level",	"psn_sector",	"han_id",	"han_name",	"han_harmonized"],
"tls207.csv" => ["person_id",	"appln_id",	"applt_seq_nr",	"invt_seq_nr"],
"tls209.csv" => ["appln_id",	"ipc_class_symbol",	"ipc_class_level",	"ipc_version",	"ipc_value",	"ipc_position",	"ipc_gener_auth"],
"tls210.csv" => ["appln_id",	"nat_class_symbol"],
"tls211.csv" => ["pat_publn_id",	"publn_auth",	"publn_nr",	"publn_nr_original",	"publn_kind",	"appln_id",	"publn_date",	"publn_lg",	"publn_first_grant",	"publn_claims"],
"tls212.csv" => ["pat_publn_id",	"citn_replenished",	"citn_id",	"citn_origin",	"cited_pat_publn_id",	"cited_appln_id",	"pat_citn_seq_nr",	"cited_npl_publn_id",	"npl_citn_seq_nr",	"citn_gener_auth"],
"tls214.csv" => ["npl_publn_id",	"xp_nr",	"npl_type",	"npl_biblio",	"npl_author",	"npl_title1",	"npl_title2",	"npl_editor",	"npl_volume",	"npl_issue",	"npl_publn_date",	"npl_publn_end_date",	"npl_publisher",	"npl_page_first",	"npl_page_last",	"npl_abstract_nr",	"npl_doi",	"npl_isbn",	"npl_issn",	"online_availability",	"online_classification",	"online_search_date"],
"tls215.csv" => ["pat_publn_id",	"citn_replenished",	"citn_id",	"citn_categ",	"relevant_claim"],
"tls216.csv" => ["appln_id",	"parent_appln_id",	"contn_type"],
"tls222.csv" => ["appln_id",	"jp_class_scheme",	"jp_class_symbol"],
"tls223.csv" => ["appln_id",	"docus_class_symbol"],
"tls224.csv" => ["appln_id",	"cpc_class_symbol"],
"tls225.csv" => ["docdb_family_id",	"cpc_class_symbol",	"cpc_gener_auth",	"cpc_version",	"cpc_position",	"cpc_value",	"cpc_action_date",	"cpc_status",	"cpc_data_source"],
"tls226.csv" => ["person_orig_id",	"person_id",	"source",	"source_version",	"name_freeform",	"person_name_orig_lg",	"last_name",	"first_name",	"middle_name",	"address_freeform",	"address_1",	"address_2",	"address_3",	"address_4",	"address_5",	"street",	"city",	"zip_code",	"state",	"person_ctry_code",	"residence_ctry_code",	"role"],
"tls227.csv" => ["person_id",	"pat_publn_id",	"applt_seq_nr",	"invt_seq_nr"],
"tls228.csv" => ["docdb_family_id",	"cited_docdb_family_id"],
"tls229.csv" => ["appln_id",	"nace2_code",	"weight"],
"tls230.csv" => ["appln_id",	"techn_field_nr",	"weight"],
"tls231.csv" => ["event_id",	"appln_id",	"event_seq_nr",	"event_type",	"event_auth",	"event_code",	"event_filing_date",	"event_publn_date",	"event_effective_date",	"event_text",	"ref_doc_auth",	"ref_doc_nr",	"ref_doc_kind",	"ref_doc_date",	"ref_doc_text",	"party_type",	"party_seq_nr",	"party_new",	"party_old",	"spc_nr",	"spc_filing_date",	"spc_patent_expiry_date",	"spc_extension_date",	"spc_text",	"designated_states",	"extension_states",	"fee_country",	"fee_payment_date",	"fee_renewal_year",	"fee_text",	"lapse_country",	"lapse_date",	"lapse_text",	"reinstate_country",	"reinstate_date",	"reinstate_text",	"class_scheme",	"class_symbol"],
"tls801.csv" => ["ctry_code",	"iso_alpha3",	"st3_name",	"organisation_flag",	"continent",	"eu_member",	"epo_member",	"oecd_member",	"discontinued"],
"tls803.csv" => ["event_auth",	"event_code",	"event_impact",	"event_descr",	"event_descr_orig",	"event_category_code",	"event_category_title"],
"tls901.csv" => ["ipc_maingroup_symbol",	"techn_field_nr",	"techn_sector",	"techn_field"],
"tls902.csv" => ["ipc",	"not_with_ipc",	"unless_with_ipc",	"nace2_code",	"nace2_weight",	"nace2_descr"],
"tls904.csv" => ["nuts",	"nuts_level",	"nuts_label"],
]

length.(last.(HEADERS))

# tls201.csv = 28
# tls202.csv = 4
# tls203.csv = 4
# tls204.csv = 4
# tls205.csv = 3
# tls206.csv = 17
# tls207.csv = 5
# tls209.csv = 8
# tls210.csv = 3
# tls211.csv = 11
# tls212.csv = 11
# tls214.csv = 23
# tls215.csv = 6
# tls216.csv = 4
# tls222.csv = 4
# tls223.csv = 3
# tls224.csv = 3
# tls225.csv = 10
# tls226.csv = 23
# tls227.csv = 5
# tls228.csv = 3
# tls229.csv = 4
# tls230.csv = 4
# tls231.csv = 39
# tls801.csv = 10
# tls803.csv = 8
# tls901.csv = 5
# tls902.csv = 7
# tls904.csv = 4
