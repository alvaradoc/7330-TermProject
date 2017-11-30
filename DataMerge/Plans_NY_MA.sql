use mysql;
create table Plans_NY_MA (id MEDIUMINT NOT NULL AUTO_INCREMENT,
BUSINESS_YEAR year(4),
STATE_CODE varchar(7),
ISSUER_NAME varchar(50),
ISSUER_ID int(5),
SOURCE_NAME varchar(10),
VERSION_NUMBER int(1),
IMPORT_DATE date,
BENEFIT_PACKAGE_ID varchar(50),
MARKET_COVERAGE varchar(15),
DENTAL_ONLY_PLAN int(1),
TIN varchar(15),
STANDARD_COMPONENT_ID varchar(19),
PLAN_MARKETING_NAME varchar(100),
HIOS_PRODUCT_ID varchar(15),
HPID varchar(5),
NETWORK_ID varchar(11),
SERVICE_AREA_ID varchar(11),
FORMULARY_ID varchar(11),
IS_IT_A_NEW_PLAN int(1),
PLAN_TYPE varchar(8),
METAL_LEVEL varchar(11),
UNIQUE_PLAN_DESIGN int(1),
QHP_NONQHP_TYPE_ID varchar(9),
IS_NOTICE_REQUIRED_FOR_PREGNACY int(1),
IS_REFERRAL_REQUIRED_FOR_SPECIALIST int(1),
SPECIALIST_REQUIRING_REFERRAL varchar(50),
PLAN_LEVEL_EXCLUSIONS varchar(5),
IS_HSA_ELIGIBLE int(1),
HSA_OR_HRA_EMPLOYER_CONTRIBUTION varchar(5),
HSA_OR_HRA_EMPLOYER_CONTRIBUTION_AMOUNT varchar(5),
CHILD_ONLY_OFFERING varchar(22),
CHILD_ONLY_PLAN_ID varchar(5),
WELLNESS_PROGRAM_OFFERED int(1),
DISEASE_MANAGEMENT_PROGRAMS_OFFERED varchar(100),
EHB_PEDIATRIC_DENTAL_APPORTIONMENT_QUANTITY float(5,2),
IS_GUARANTEED_RATE varchar(5),
SPECIALITY_DRUG_MAXIMUM_COINSURANCE varchar(5),
INPATIENT_COPAYMENT_MAXIMUM_DAYS varchar(5),
BEGIN_PRIMARY_CARE_COST_SHARING_AFTER_NUMBER_OF_VISITS int(1),
BEGIN_PRIMARY_CARE_DEDUCTIBLE_COINSURANCE_AFTER_NUMBER_OF_COPAYS int(1),
PLAN_EFFECTIVE_DATE date,
PLAN_EXPIRATION_DATE date,
OUT_OF_COUNTRY_COVERAGE int(1),
OUT_OF_COUNTRY_COVERAGE_DESCRIPTION varchar(50),
OUT_OF_SERVICE_AREA_COVERAGE int(1),
OUT_OF_SERVICE_AREA_COVERAGE_DESCRIPTION varchar(50),
NATIONAL_NETWORK int(1),
URL_FOR_SUMMARY_OF_BENEFITS_COVERAGE varchar(5),
URL_FOR_ENROLLMENT_PAYMENT varchar(26),
PLAN_BROCHURE varchar(5),
FORMULARY_URL varchar(100),
PLAN_ID varchar(22),
CSR_VARIATION_TYPE varchar(29),
ISSUER_ACTUARIAL_VALUE varchar(9),
AV_CALCULATOR_OUTPUT_NUMBER float(11,9),
MEDICAL_DRUG_DEDUCTIBLES_INTEGRATED int(1),
MEDICAL_DRUG_MAXIMUM_OUT_OF_POCKET_INTEGRATED int(1),
MULTIPLE_NETWORK_TIERS int(1),
FIRST_TIER_UTILIZATION varchar(6),
SECOND_TIER_UTILIZATION varchar(5),
MEHB_INN_TIER_1_INDIVIDUAL_MOOP int(5),
MEHB_INN_TIER_1_FAMILY_MOOP varchar(5),
MEHB_INN_TIER_2_INDIVIDUAL_MOOP varchar(5),
MEHB_INN_TIER_2_FAMILY_MOOP varchar(5),
MEHB_OUT_OF_NET_INDIVIDUAL_MOOP varchar(5),
MEHB_OUT_OF_NET_FAMILY_MOOP varchar(5),
MEHB_COMB_INN_OON_INDIVIDUAL_MOOP int(5),
MEHB_COMB_INN_OON_FAMILY_MOOP varchar(5),
DEHB_INN_TIER_1_INDIVIDUAL_MOOP int(5),
DEHB_INN_TIER_2_INDIVIDUAL_MOOP varchar(5),
DEHB_INN_TIER_1_FAMILY_MOOP varchar(5),
DEHB_INN_TIER_2_FAMILY_MOOP varchar(5),
DEHB_OUT_OF_NET_INDIVIDUAL_MOOP varchar(5),
DEHB_OUT_OF_NET_FAMILY_MOOP varchar(5),
DEHB_COMB_INN_OON_INDIVIDUAL_MOOP int(5),
DEHB_COMB_INN_OON_FAMILY_MOOP varchar(5),
TEHB_INN_TIER_1_INDIVIDUAL_MOOP int(6),
TEHB_INN_TIER_1_FAMILY_MOOP varchar(100),
TEHB_INN_TIER_2_INDIVIDUAL_MOOP int(5),
TEHB_INN_TIER_2_FAMILY_MOOP varchar(5),
TEHB_OUT_OF_NET_INDIVIDUAL_MOOP int(19),
TEHB_OUT_OF_NET_FAMILY_MOOP varchar(100),
TEHB_COMB_INN_OON_INDIVIDUAL_MOOP int(5),
TEHB_COMB_INN_OON_FAMILY_MOOP varchar(100),
MEHB_DED_INN_TIER1_INDIVIDUAL int(5),
MEHB_DED_INN_TIER1_FAMILY varchar(5),
MEHB_DED_INN_TIER1_COINSURNACE varchar(5),
MEHB_DED_INN_TIER2_INDIVIDUAL varchar(5),
MEHB_DED_INN_TIER2_FAMILY varchar(5),
MEHB_DED_INN_TIER2_COINSURANCE varchar(5),
MEHB_DED_OUT_OF_NET_INDIVIDUAL int(5),
MEHB_DED_OUT_OF_NET_FAMILY varchar(5),
MEHB_DED_COMB_INN_OON_INDIVIDUAL int(5),
MEHB_DED_COMB_INN_OON_FAMILY varchar(5),
DEHB_DED_INN_TIER1_INDIVIDUAL int(5),
DEHB_DED_INN_TIER1_FAMILY varchar(5),
DEHB_DED_INN_TIER1_COINSURNACE varchar(5),
DEHB_DED_INN_TIER2_INDIVIDUAL varchar(5),
DEHB_DED_INN_TIER2_FAMILY varchar(5),
DEHB_DED_INN_TIER2_COINSURANCE varchar(5),
DEHB_DED_OUT_OF_NET_INDIVIDUAL int(5),
DEHB_DED_OUT_OF_NET_FAMILY varchar(5),
DEHB_DED_COMB_INN_OON_INDIVIDUAL int(5),
DEHB_DED_COMB_INN_OON_FAMILY varchar(5),
TEHB_DED_INN_TIER_1_INDIVIDUAL int(5),
TEHB_DED_INN_TIER_1_FAMILY varchar(100),
TEHB_DED_INN_TIER_1_COINSURANCE varchar(8),
TEHB_DED_INN_TIER_2_INDIVIDUAL varchar(5),
TEHB_DED_INN_TIER_2_FAMILY varchar(5),
TEHB_DED_INN_TIER_2_COINSURANCE varchar(5),
TEHB_DED_OUT_OF_NET_INDIVIDUAL int(5),
TEHB_DED_OUT_OF_NET_FAMILY varchar(100),
TEHB_DED_OUT_COMB_INN_OON_INDIVIDUAL int(5),
TEHB_DED_OUT_COMB_INN_OON_FAMILY varchar(100),
SBC_HAVING_A_BABY_DEDUCTIBLE int(6),
SBC_HAVING_A_BABY_COPAYMENT int(6),
SBC_HAVING_A_BABY_COINSURANCE int(6),
SBC_HAVING_A_BABY_LIMIT int(6),
SBC_HAVING_DIABETES_DEDUCTIBLE int(6),
SBC_HAVING__DIABETES_COPAYMENT int(6),
SBC_HAVING_DIABETES_COINSURANCE int(6),
SBC_HAVING_DIABETES_LIMIT int(6),
PRIMARY KEY (id));

LOAD DATA LOCAL INFILE 'C:\\Nithya\\MSDS\\Term2\\7330-FileOrg-DBMgmt\\Term_Project\\FinalDataSet\\PUFPLAN_NY_MA.csv' INTO TABLE Plans_NY_MA FIELDS TERMINATED BY ',' ENCLOSED BY '"' LINES TERMINATED BY '\r\n' IGNORE 1 LINES;