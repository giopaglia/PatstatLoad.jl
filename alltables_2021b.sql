USE patstat2021b
GO
/****** Object:  Table dbo.tls201_appln    Script Date: 06/22/2018 08:13:34 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE dbo.tls201_appln(
	appln_id int NOT NULL DEFAULT ('0'),
	appln_auth char(2) NOT NULL DEFAULT (''),
	appln_nr varchar(15)  NOT NULL DEFAULT (''),
	appln_kind char(2) NOT NULL DEFAULT ('  '),
	appln_filing_date date NOT NULL DEFAULT ('9999-12-31'),
	appln_filing_year smallint NOT NULL DEFAULT '9999',
	appln_nr_epodoc varchar(20)  NOT NULL DEFAULT (''),
	appln_nr_original varchar(100) NOT NULL DEFAULT (''),
	ipr_type char(2) NOT NULL DEFAULT (''),
	receiving_office char(2) NOT NULL DEFAULT (''),
	internat_appln_id int NOT NULL DEFAULT ('0'),
	int_phase char(1) NOT NULL DEFAULT ('N'),
	reg_phase char(1) NOT NULL DEFAULT ('N'),
	nat_phase char(1) NOT NULL DEFAULT ('N'),
	earliest_filing_date date NOT NULL DEFAULT ('9999-12-31'),
	earliest_filing_year smallint NOT NULL DEFAULT '9999',
	earliest_filing_id int NOT NULL DEFAULT '0',
	earliest_publn_date date NOT NULL DEFAULT ('9999-12-31'),
	earliest_publn_year smallint NOT NULL DEFAULT '9999',
	earliest_pat_publn_id int NOT NULL DEFAULT '0',
	granted char(1) NOT NULL DEFAULT ('N'),
	docdb_family_id int NOT NULL DEFAULT ('0'),
	inpadoc_family_id int NOT NULL DEFAULT ('0'),
	docdb_family_size smallint NOT NULL default '0',
	nb_citing_docdb_fam smallint NOT NULL default '0',
	nb_applicants smallint NOT NULL default '0',
	nb_inventors smallint NOT NULL default '0',
PRIMARY KEY CLUSTERED 
(
	appln_id ASC
)WITH (IGNORE_DUP_KEY = OFF) ON PRIMARY
) ON PRIMARY
USE patstat2021b
GO
/****** Object:  Table dbo.tls202_appln_title    Script Date: 07/07/2015 08:16:03 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE dbo.tls202_appln_title(
	appln_id int NOT NULL DEFAULT ('0'),
	appln_title_lg char(2) NOT NULL DEFAULT (''),
	appln_title nvarchar(max) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	appln_id ASC
)WITH (IGNORE_DUP_KEY = OFF) ON PRIMARY
) ON PRIMARY
USE patstat2021b
GO
/****** Object:  Table dbo.tls203_appln_abstr    Script Date: 07/07/2015 08:16:50 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE dbo.tls203_appln_abstr(
	appln_id int NOT NULL DEFAULT ('0'),
	appln_abstract_lg char(2) NOT NULL DEFAULT (''),
	appln_abstract nvarchar(max) NOT NULL DEFAULT (''),
PRIMARY KEY CLUSTERED 
(
	appln_id ASC
)WITH (IGNORE_DUP_KEY = OFF) ON PRIMARY
) ON PRIMARY TEXTIMAGE_ON PRIMARYUSE patstat2021b
GO
/****** Object:  Table dbo.tls204_appln_prior    Script Date: 07/07/2015 08:17:25 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE dbo.tls204_appln_prior(
	appln_id int NOT NULL DEFAULT ('0'),
	prior_appln_id int NOT NULL DEFAULT ('0'),
	prior_appln_seq_nr smallint NOT NULL DEFAULT ('0'),
PRIMARY KEY CLUSTERED 
(
	appln_id ASC,
	prior_appln_id ASC
)WITH (IGNORE_DUP_KEY = OFF) ON PRIMARY
) ON PRIMARY
USE patstat2021b
GO
/****** Object:  Table dbo.tls205_tech_rel    Script Date: 07/07/2015 08:17:51 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE dbo.tls205_tech_rel(
	appln_id int NOT NULL DEFAULT ('0'),
	tech_rel_appln_id int NOT NULL DEFAULT ('0'),
PRIMARY KEY CLUSTERED 
(
	appln_id ASC,
	tech_rel_appln_id ASC
)WITH (IGNORE_DUP_KEY = OFF) ON PRIMARY
) ON PRIMARY
USE patstat2021b
GO
/****** Object:  Table dbo.tls206_person    Script Date: 13/09/2019 08:18:13 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE dbo.tls206_person(
	person_id int NOT NULL DEFAULT ('0'),
	person_name nvarchar(500) NOT NULL DEFAULT (''),
	person_name_orig_lg nvarchar(500) NOT NULL DEFAULT (''),
	person_address nvarchar(1000) NOT NULL DEFAULT (''),
	person_ctry_code char(2) NOT NULL DEFAULT (''),
	nuts varchar(5) NOT NULL DEFAULT '',
	nuts_level tinyint NOT NULL DEFAULT ('9'),
	doc_std_name_id int NOT NULL DEFAULT ('0'),
	doc_std_name nvarchar(500) NOT NULL DEFAULT (''),
	psn_id int NOT NULL DEFAULT ('0'),
	psn_name nvarchar(500) NOT NULL DEFAULT (''),
	psn_level tinyint NOT NULL DEFAULT ('0'),
	psn_sector varchar(50) NOT NULL DEFAULT (''),
	han_id int NOT NULL DEFAULT ('0'),
	han_name nvarchar(500) NOT NULL DEFAULT (''),
	han_harmonized int NOT NULL DEFAULT ('0'),
PRIMARY KEY CLUSTERED 
(
	person_id ASC
)WITH (IGNORE_DUP_KEY = OFF) ON PRIMARY
) ON PRIMARY
USE patstat2021b
GO
/****** Object:  Table dbo.tls207_pers_appln    Script Date: 07/07/2015 08:18:39 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE dbo.tls207_pers_appln(
	person_id int NOT NULL DEFAULT ('0'),
	appln_id int NOT NULL DEFAULT ('0'),
	applt_seq_nr smallint NOT NULL DEFAULT ('0'),
	invt_seq_nr smallint NOT NULL DEFAULT ('0')
PRIMARY KEY CLUSTERED 
(
	person_id ASC,
	appln_id ASC,
	applt_seq_nr ASC,
	invt_seq_nr ASC
)WITH (IGNORE_DUP_KEY = OFF) ON PRIMARY
) ON PRIMARY
USE patstat2021b
GO
/****** Object:  Table dbo.tls209_appln_ipc    Script Date: 07/07/2015 08:19:22 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE dbo.tls209_appln_ipc(
	appln_id int NOT NULL DEFAULT ('0'),
	ipc_class_symbol varchar(15) NOT NULL DEFAULT (''),
	ipc_class_level char(1) NOT NULL DEFAULT (''),
	ipc_version date NOT NULL DEFAULT ('9999-12-31'),
	ipc_value char(1) NOT NULL DEFAULT (''),
	ipc_position char(1) NOT NULL DEFAULT (''),
	ipc_gener_auth char(2) NOT NULL DEFAULT (''),
PRIMARY KEY CLUSTERED 
(
	appln_id ASC,
	ipc_class_symbol ASC
)WITH (IGNORE_DUP_KEY = OFF) ON PRIMARY
) ON PRIMARY
USE patstat2021b
GO
/****** Object:  Table dbo.tls210_appln_n_cls    Script Date: 16/03/2018 08:19:52 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE dbo.tls210_appln_n_cls(
	appln_id int NOT NULL DEFAULT ('0'),
	nat_class_symbol nvarchar(15) NOT NULL DEFAULT (''),
PRIMARY KEY CLUSTERED 
(
	appln_id ASC,
	nat_class_symbol ASC
)WITH (IGNORE_DUP_KEY = ON) ON PRIMARY
) ON PRIMARY
USE patstat2021b
GO

/****** Object:  Table dbo.tls211_pat_publn    Script Date: 06/22/2018 01:03:14 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE dbo.tls211_pat_publn(
	pat_publn_id int NOT NULL DEFAULT ('0'),
	publn_auth char(2) NOT NULL DEFAULT (''),
	publn_nr varchar(15) NOT NULL DEFAULT (''),
	publn_nr_original varchar(100) NOT NULL DEFAULT (''),
	publn_kind char(2) NOT NULL DEFAULT (''),
	appln_id int NOT NULL DEFAULT ('0'),
	publn_date date NOT NULL DEFAULT ('9999-12-31'),
	publn_lg char(2) NOT NULL DEFAULT (''),
	publn_first_grant char(1) NOT NULL DEFAULT ('N'),
	publn_claims smallint NOT NULL DEFAULT ('0'),
PRIMARY KEY CLUSTERED 
(
	pat_publn_id ASC
)WITH (IGNORE_DUP_KEY = OFF) ON PRIMARY
) ON PRIMARY




USE patstat2021b
GO
/****** Object:  Table dbo.tls212_citation    Script Date: 12/12/2021 18:00:00 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE dbo.tls212_citation(
	pat_publn_id int NOT NULL DEFAULT ('0'),
	citn_replenished int NOT NULL DEFAULT ('0'),
	citn_id smallint NOT NULL DEFAULT ('0'),
	citn_origin char(3) NOT NULL DEFAULT (''),
	cited_pat_publn_id int NOT NULL DEFAULT ('0'),
	cited_appln_id int NOT NULL DEFAULT ('0'),
	pat_citn_seq_nr smallint NOT NULL DEFAULT ('0'),
	cited_npl_publn_id varchar(32) NOT NULL DEFAULT ('0'),
	npl_citn_seq_nr smallint NOT NULL DEFAULT ('0'),
	citn_gener_auth char(2) NOT NULL DEFAULT (''),	
PRIMARY KEY CLUSTERED 
(
	pat_publn_id ASC,
	citn_replenished ASC,
	citn_id ASC
)WITH (IGNORE_DUP_KEY = OFF) ON PRIMARY
) ON PRIMARY
USE patstat2021b
GO
/****** Object:  Table dbo.tls214_npl_publn    Script Date: 29/03/2021 08:20:55 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE dbo.tls214_npl_publn(
	npl_publn_id varchar(32) NOT NULL DEFAULT ('0'),
	xp_nr int NOT NULL DEFAULT ('0'),
	npl_type char(1) NOT NULL DEFAULT (''),
	npl_biblio nvarchar(max) NOT NULL DEFAULT (''),
	npl_author nvarchar(1000) NOT NULL DEFAULT (''),
	npl_title1 nvarchar(1000) NOT NULL DEFAULT (''),
	npl_title2 nvarchar(1000) NOT NULL DEFAULT (''),
	npl_editor nvarchar(500) NOT NULL DEFAULT (''),
	npl_volume nvarchar(50) NOT NULL DEFAULT (''),
	npl_issue nvarchar(50) NOT NULL DEFAULT (''),
	npl_publn_date varchar(8) NOT NULL DEFAULT (''),
	npl_publn_end_date varchar(8) NOT NULL DEFAULT (''),
	npl_publisher nvarchar(500) NOT NULL DEFAULT (''),
	npl_page_first varchar(200) NOT NULL DEFAULT (''),
	npl_page_last varchar(200) NOT NULL DEFAULT (''),
	npl_abstract_nr varchar(50) NOT NULL DEFAULT (''),
	npl_doi varchar(500) NOT NULL DEFAULT (''),
	npl_isbn varchar(30) NOT NULL DEFAULT (''),
	npl_issn varchar(30) NOT NULL DEFAULT (''),
	online_availability varchar(500) NOT NULL DEFAULT (''),	
	online_classification varchar(35) NOT NULL DEFAULT (''),
	online_search_date varchar(8) NOT NULL DEFAULT (''),
PRIMARY KEY CLUSTERED 
(
	npl_publn_id ASC
)WITH (IGNORE_DUP_KEY = OFF) ON PRIMARY
) ON PRIMARY
USE patstat2021b
GO
/****** Object:  Table dbo.tls215_citn_categ    Script Date: 22/03/2019 09:00:00 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE dbo.tls215_citn_categ(
	pat_publn_id int NOT NULL DEFAULT ('0'),
	citn_replenished int NOT NULL DEFAULT ('0'),
	citn_id smallint NOT NULL DEFAULT ('0'),
	citn_categ nvarchar(10) NOT NULL DEFAULT (''),
	relevant_claim smallint NOT NULL DEFAULT ('0'),
PRIMARY KEY CLUSTERED 
(
	pat_publn_id ASC,
	citn_replenished ASC,
	citn_id ASC,
	citn_categ ASC,
	relevant_claim ASC
)WITH (IGNORE_DUP_KEY = OFF) ON PRIMARY
) ON PRIMARY
USE patstat2021b
GO
/****** Object:  Table dbo.tls216_appln_contn    Script Date: 07/07/2015 08:21:31 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE dbo.tls216_appln_contn(
	appln_id int NOT NULL DEFAULT ('0'),
	parent_appln_id int NOT NULL DEFAULT ('0'),
	contn_type char(3) NOT NULL DEFAULT (''),
PRIMARY KEY CLUSTERED 
(
	APPLN_ID ASC,
	PARENT_APPLN_ID ASC
)WITH (IGNORE_DUP_KEY = OFF) ON PRIMARY
) ON PRIMARY
USE patstat2021b
GO

/****** Object:  Table dbo.tls222_appln_jp_class    Script Date: 07/07/2015 04:32:25 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE dbo.tls222_appln_jp_class(
	appln_id int NOT NULL DEFAULT ('0'),
	jp_class_scheme varchar(5) NOT NULL DEFAULT (''),
	jp_class_symbol varchar(50) NOT NULL DEFAULT (''),
PRIMARY KEY CLUSTERED 
(
	appln_id ASC,
	jp_class_scheme ASC,
	jp_class_symbol ASC
)WITH (IGNORE_DUP_KEY = ON) ON PRIMARY
) ON PRIMARY

GO



USE patstat2021b
GO

/****** Object:  Table dbo.tls223_appln_docus    Script Date: 07/07/2015 04:32:25 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE dbo.tls223_appln_docus(
	appln_id int NOT NULL DEFAULT ('0'),
	docus_class_symbol varchar(50) NOT NULL DEFAULT (''),
PRIMARY KEY CLUSTERED 
(
	appln_id ASC,
	docus_class_symbol ASC
)WITH (IGNORE_DUP_KEY = ON) ON PRIMARY
) ON PRIMARY

GO

USE patstat2021b
GO

/****** Object:  Table dbo.tls224_appln_cpc    Script Date: 30/12/2019 18:00:00 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE dbo.tls224_appln_cpc(
	appln_id int NOT NULL DEFAULT ('0'),
	cpc_class_symbol varchar(19) NOT NULL DEFAULT (''),
PRIMARY KEY CLUSTERED 
(
	appln_id ASC,
	cpc_class_symbol ASC
)WITH (IGNORE_DUP_KEY = OFF) ON PRIMARY
) ON PRIMARY
GO
USE patstat2021b
GO

/****** Object:  Table dbo.tls225_docdb_fam_cpc    Script Date: 30/12/2019 18:00:00 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE dbo.tls225_docdb_fam_cpc(
	docdb_family_id int NOT NULL DEFAULT ('0'),
	cpc_class_symbol varchar(19) NOT NULL DEFAULT (''),
	cpc_gener_auth char(2) NOT NULL DEFAULT (''),
	cpc_version date NOT NULL DEFAULT ('9999-12-31'),
	cpc_position char(1) NOT NULL DEFAULT (''),
	cpc_value char(1) NOT NULL DEFAULT (''),
	cpc_action_date date NOT NULL DEFAULT ('9999-12-31'),
	cpc_status char(1) NOT NULL DEFAULT (''),
	cpc_data_source char(1) NOT NULL DEFAULT (''),
PRIMARY KEY CLUSTERED 
(
	docdb_family_id ASC,
	cpc_class_symbol ASC,
	cpc_gener_auth ASC,
	cpc_version ASC
)WITH (IGNORE_DUP_KEY = OFF) ON PRIMARY
) ON PRIMARY
GO
USE patstat2021b
GO

/****** Object:  Table dbo.tls226_person_orig    Script Date: person_name 04:32:25 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE dbo.tls226_person_orig(
	person_orig_id int NOT NULL DEFAULT ('0'),
	person_id int NOT NULL DEFAULT ('0'),
	source char(5) NOT NULL DEFAULT (''),
	source_version varchar(10) NOT NULL DEFAULT (''),
	name_freeform nvarchar(500) NOT NULL DEFAULT (''),
	person_name_orig_lg nvarchar(500) NOT NULL DEFAULT (''),
	last_name nvarchar(500) NOT NULL DEFAULT (''),
	first_name nvarchar(500) NOT NULL DEFAULT (''),
	middle_name nvarchar(500) NOT NULL DEFAULT (''),
	address_freeform nvarchar(1000) NOT NULL DEFAULT (''),
	address_1 nvarchar(500) NOT NULL DEFAULT (''),
	address_2 nvarchar(500) NOT NULL DEFAULT (''),
	address_3 nvarchar(500) NOT NULL DEFAULT (''),
	address_4 nvarchar(500) NOT NULL DEFAULT (''),
	address_5 nvarchar(500) NOT NULL DEFAULT (''),
	street nvarchar(500) NOT NULL DEFAULT (''),
	city nvarchar(200) NOT NULL DEFAULT (''),
  	zip_code nvarchar(30) NOT NULL DEFAULT (''),
	state char(2) NOT NULL DEFAULT (''),
	person_ctry_code char(2) NOT NULL DEFAULT (''),
	residence_ctry_code char(2) NOT NULL DEFAULT (''),
	role varchar(2) NOT NULL DEFAULT (''),
PRIMARY KEY CLUSTERED 
(
	person_orig_id ASC
)WITH (IGNORE_DUP_KEY = OFF) ON PRIMARY
) ON PRIMARY

GO




USE patstat2021b
GO

/****** Object:  Table dbo.tls227_pers_publn    Script Date: 07/07/2015 04:32:25 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE dbo.tls227_pers_publn(
	person_id int NOT NULL DEFAULT ('0'),
	pat_publn_id int NOT NULL DEFAULT ('0'),
	applt_seq_nr smallint NOT NULL DEFAULT ('0'),
	invt_seq_nr smallint NOT NULL DEFAULT ('0')
PRIMARY KEY CLUSTERED 
(
	person_id ASC,
	pat_publn_id ASC,
	applt_seq_nr ASC,
	invt_seq_nr ASC
)WITH (IGNORE_DUP_KEY = OFF) ON PRIMARY
) ON PRIMARY

GO
USE patstat2021b
GO
/****** Object:  Table dbo.tls228_docdb_fam_citn    Script Date: 07/07/2015 18:32:52 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE dbo.tls228_docdb_fam_citn(
	docdb_family_id int NOT NULL DEFAULT ('0'),
	cited_docdb_family_id int NOT NULL DEFAULT ('0'),
PRIMARY KEY CLUSTERED 
(
	docdb_family_id ASC,
	cited_docdb_family_id ASC
)WITH (IGNORE_DUP_KEY = ON) ON PRIMARY
) ON PRIMARY
USE patstat2021b
GO
/****** Object:  Table dbo.tls229_appln_nace2    Script Date: 07/07/2015 08:19:22 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE dbo.tls229_appln_nace2(
	appln_id int NOT NULL DEFAULT ('0'),
	nace2_code varchar(5) NOT NULL DEFAULT (''),
	weight real NOT NULL DEFAULT (1),
PRIMARY KEY CLUSTERED 
(
	appln_id ASC,
	nace2_code ASC
)WITH (IGNORE_DUP_KEY = OFF) ON PRIMARY
) ON PRIMARY
USE patstat2021b
GO
/****** Object:  Table dbo.tls230_appln_techn_field    Script Date: 07/07/2015 08:19:22 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE dbo.tls230_appln_techn_field(
	appln_id int NOT NULL DEFAULT ('0'),
	techn_field_nr tinyint NOT NULL DEFAULT ('0'),
	weight real NOT NULL DEFAULT (1),
PRIMARY KEY CLUSTERED 
(
	appln_id ASC,
	techn_field_nr ASC
)WITH (IGNORE_DUP_KEY = ON) ON PRIMARY
) ON PRIMARYUSE patstat2021b
GO
/****** Object:  Table dbo.tls231_inpadoc_legal_event    Script Date: 19/01/2018 17:00:00 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE dbo.tls231_inpadoc_legal_event(
	event_id int NOT NULL DEFAULT '0',
	appln_id int NOT NULL DEFAULT '0',
	event_seq_nr smallint NOT NULL default '0',
	event_type char(3) NOT NULL DEFAULT ('	'),
	event_auth char(2) NOT NULL DEFAULT ('  '),
	event_code varchar(4)  NOT NULL DEFAULT (''),
	event_filing_date date NOT NULL DEFAULT ('9999-12-31'),
	event_publn_date date NOT NULL DEFAULT ('9999-12-31'),
	event_effective_date date NOT NULL DEFAULT ('9999-12-31'),
	event_text varchar(1000) NOT NULL DEFAULT (''),
	ref_doc_auth char(2) NOT NULL DEFAULT ('  '),
	ref_doc_nr varchar(20) NOT NULL DEFAULT (''),
	ref_doc_kind char(2) NOT NULL DEFAULT ('  '),
	ref_doc_date date NOT NULL DEFAULT ('9999-12-31'),
	ref_doc_text varchar(1000) NOT NULL DEFAULT (''),
	party_type varchar(3) NOT NULL DEFAULT ('	'),
	party_seq_nr smallint NOT NULL default '0',
	party_new varchar(1000) NOT NULL DEFAULT (''),
	party_old varchar(1000) NOT NULL DEFAULT (''),
	spc_nr varchar(40) NOT NULL DEFAULT (''),
	spc_filing_date date NOT NULL DEFAULT ('9999-12-31'),
	spc_patent_expiry_date date NOT NULL DEFAULT ('9999-12-31'),
	spc_extension_date date NOT NULL DEFAULT ('9999-12-31'),
	spc_text varchar(1000) NOT NULL DEFAULT (''),
	designated_states varchar(1000) NOT NULL DEFAULT (''),
	extension_states varchar(30) NOT NULL DEFAULT (''),
	fee_country char(2) NOT NULL DEFAULT ('  '),
	fee_payment_date date NOT NULL DEFAULT ('9999-12-31'),
	fee_renewal_year smallint NOT NULL default '9999',
	fee_text varchar(1000) NOT NULL DEFAULT (''),
	lapse_country char(2) NOT NULL DEFAULT ('  '),
	lapse_date date NOT NULL DEFAULT ('9999-12-31'),
	lapse_text varchar(1000) NOT NULL DEFAULT (''),
	reinstate_country char(2) NOT NULL DEFAULT ('  '),
	reinstate_date date NOT NULL DEFAULT ('9999-12-31'),
	reinstate_text varchar(1000) NOT NULL DEFAULT (''),
	class_scheme varchar(4) NOT NULL DEFAULT (''),
	class_symbol varchar(50) NOT NULL DEFAULT (''),
PRIMARY KEY CLUSTERED 
(
	event_id ASC
)WITH (IGNORE_DUP_KEY = OFF) ON PRIMARY
) ON PRIMARY
USE patstat2021b
GO
/****** Object:  Table dbo.tls801_country    Script Date: 30/12/2019 08:13:34 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE dbo.tls801_country(
	ctry_code char(2) NOT NULL DEFAULT (''),
	iso_alpha3 char(3) NOT NULL DEFAULT (''),
	st3_name varchar(100) NOT NULL DEFAULT (''),
	organisation_flag char(1) NOT NULL DEFAULT (''),
	continent varchar(25) NOT NULL DEFAULT (''),
	eu_member char(1) NOT NULL DEFAULT (''),
	epo_member char(1) NOT NULL DEFAULT (''),
	oecd_member char(1) NOT NULL DEFAULT (''),
	discontinued char(1) NOT NULL DEFAULT (''),
PRIMARY KEY CLUSTERED 
(
	ctry_code ASC
)WITH (IGNORE_DUP_KEY = OFF) ON PRIMARY
) ON PRIMARY

USE patstat2021b
GO
/****** Object:  Table dbo.tls803_legal_event_code    Script Date: 06/22/2018 08:13:34 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE dbo.tls803_legal_event_code(
	event_auth char(2) NOT NULL DEFAULT (''),
	event_code varchar(4) NOT NULL DEFAULT (''),
	event_impact char(1) NOT NULL DEFAULT (''),
	event_descr varchar(250) NOT NULL DEFAULT (''),
	event_descr_orig varchar(250) NOT NULL DEFAULT (''),
	event_category_code char(1) NOT NULL DEFAULT (''),
	event_category_title varchar(100) NOT NULL DEFAULT (''),
PRIMARY KEY CLUSTERED 
(
	event_auth ASC,
	event_code ASC
)WITH (IGNORE_DUP_KEY = OFF) ON PRIMARY
) ON PRIMARY
USE patstat2021b
GO
/****** Object:  Table dbo.tls901_techn_field_ipc    Script Date: 07/07/2015 08:13:34 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE dbo.tls901_techn_field_ipc(
	ipc_maingroup_symbol varchar(8) NOT NULL DEFAULT (''),
	techn_field_nr tinyint NOT NULL DEFAULT ('0'),
	techn_sector varchar(50) NOT NULL DEFAULT (''),
	techn_field varchar(50) NOT NULL DEFAULT (''),
PRIMARY KEY CLUSTERED 
(
	ipc_maingroup_symbol ASC	
)WITH (IGNORE_DUP_KEY = OFF) ON PRIMARY
) ON PRIMARY

USE patstat2021b
GO
/****** Object:  Table dbo.tls902_ipc_nace2    Script Date: 02/16/2016 18:13:34 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE dbo.tls902_ipc_nace2(
	ipc varchar(8) NOT NULL DEFAULT (''),
	not_with_ipc varchar(8) NOT NULL DEFAULT (''),
	unless_with_ipc varchar(8) NOT NULL DEFAULT (''),
	nace2_code varchar(5) NOT NULL DEFAULT (''),
	nace2_weight tinyint NOT NULL DEFAULT (1),
	nace2_descr varchar(150) NOT NULL DEFAULT (''),
PRIMARY KEY CLUSTERED 
(
	ipc ASC,
	not_with_ipc ASC,
	unless_with_ipc ASC,
	nace2_code ASC
)WITH (IGNORE_DUP_KEY = OFF) ON PRIMARY
) ON PRIMARY

USE patstat2021b
GO
/****** Object:  Table dbo.tls904_nuts    Script Date: 02/28/2018 18:00:00 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE dbo.tls904_nuts(
	nuts varchar(5) NOT NULL DEFAULT (''),
	nuts_level tinyint NOT NULL DEFAULT ('0'),
	nuts_label nvarchar(250) NOT NULL DEFAULT (''),
PRIMARY KEY CLUSTERED 
(
	nuts ASC
)WITH (IGNORE_DUP_KEY = OFF) ON PRIMARY
) ON PRIMARY

