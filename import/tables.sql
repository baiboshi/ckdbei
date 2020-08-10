CREATE TABLE PCI.cdr_info_local (
`found_time` Int64,
 `calling_party_category` String,
 `call_duration` Int64,
 `msisdn_calling` String,
 `msisdn_called` String,
 `imsi_calling` String,
 `imsi_called` String,
 `imei_calling` String,
 `imei_called` String,
 `ll` String,
 `province` String,
 `city` String,
 `calling_belong_country` String,
 `called_belong_country` String,
 `content` String,
 `voice_text` String,
 `heat_words` String,
 `entity_extraction` String,
 `voice_language` String,
 `call_type` String,
 `left_gender` String,
 `right_gender` String,
 `base_station_id` String,
 `source_voice_path` String,
 `show_voice_path` String,
 `calling_country_abbr` String,
 `called_country_abbr` String,
 `id` String
) ENGINE = MergeTree PARTITION BY toRelativeHourNum(toDateTime(found_time)) ORDER BY found_time SETTINGS index_granularity = 8192;


CREATE TABLE PCI.collection_info_local (
`id` String,
 `collection_module` String,
 `msisdn` String,
 `msisdn_calling` String,
 `msisdn_called` String,
 `call_voice_id` String,
 `collection_time` Int64,
 `found_time` Int64,
 `user_id` String
) ENGINE = MergeTree PARTITION BY toRelativeHourNum(toDateTime(found_time)) ORDER BY found_time SETTINGS index_granularity = 8192;



CREATE TABLE PCI.insight_voice_search_history_local (
`id` String,
 `msisdn1` String,
 `msisdn2` String,
 `condition_time` Int64,
 `match_rate` String,
 `create_time` Int64,
 `country_code1` String,
 `country_code2` String,
 `search_time` Int64
) ENGINE = MergeTree PARTITION BY toRelativeHourNum(toDateTime(create_time)) ORDER BY create_time SETTINGS index_granularity = 8192;



CREATE TABLE PCI.lexicon_management_local (
`id` String,
 `lexicon_name` String,
 `language` String,
 `lexicon_status` Int64,
 `flag` Int64,
 `create_time` Int64,
 `update_time` Int64,
 `user_id` String
) ENGINE = MergeTree PARTITION BY toRelativeHourNum(toDateTime(create_time)) ORDER BY create_time SETTINGS index_granularity = 8192;



CREATE TABLE PCI.lexicon_sensitive_word_local (
`id` String,
 `lexicon_id` String,
 `sensitive_word` String,
 `flag` Int64,
 `found_time` Int64
) ENGINE = MergeTree PARTITION BY toRelativeHourNum(toDateTime(found_time)) ORDER BY found_time SETTINGS index_granularity = 8192;



CREATE TABLE PCI.loc_info_local (
`msisdn` String,
 `lac` Int64,
 `cell` Int64,
 `found_time` Int64,
 `imsi` String,
 `imei` String,
 `ll` String,
 `base_station_id` String
) ENGINE = MergeTree PARTITION BY toRelativeHourNum(toDateTime(found_time)) ORDER BY found_time SETTINGS index_granularity = 8192;



CREATE TABLE PCI.msisdn_info_local (
`msisdn` String,
 `belong_country` String,
 `open_account_name` String,
 `open_account_gender` String,
 `open_account_time` String,
 `tel_operator` String,
 `belong_location` String,
 `date_birth` String,
 `found_time` Int64
) ENGINE = MergeTree PARTITION BY toRelativeHourNum(toDateTime(found_time)) ORDER BY found_time SETTINGS index_granularity = 8192;



CREATE TABLE PCI.pro_city_local (
`id` String,
 `longitude` String,
 `latitude` String,
 `province` String,
 `city` String,
 `found_time` Int64
) ENGINE = MergeTree PARTITION BY toRelativeHourNum(toDateTime(found_time)) ORDER BY found_time SETTINGS index_granularity = 8192;



CREATE TABLE PCI.remark_info_local (
`id` String,
 `title` String,
 `text` String,
 `update_time` Int64,
 `create_time` Int64,
 `user_id` String
) ENGINE = MergeTree PARTITION BY toRelativeHourNum(toDateTime(create_time)) ORDER BY create_time SETTINGS index_granularity = 8192;




CREATE TABLE PCI.time_setting_local (
`id` String,
 `module_name` String,
 `start_time` String,
 `start_timestamp` Int64,
 `end_time` String,
 `end_timestamp` Int64,
 `found_time` Int64
) ENGINE = MergeTree PARTITION BY toRelativeHourNum(toDateTime(found_time)) ORDER BY found_time SETTINGS index_granularity = 8192;




CREATE TABLE PCI.voice_search_country_local (
`id` String,
 `found_time` Int64,
 `aim_country` String,
 `user_id` String
) ENGINE = MergeTree PARTITION BY toRelativeHourNum(toDateTime(found_time)) ORDER BY found_time SETTINGS index_granularity = 8192;




CREATE TABLE PCI.voiceprint_lib_local (
`id` String,
 `speak_id` String,
 `head_image_source_url` String,
 `head_image_show_url` String,
 `name` String,
 `gender` String,
 `label` String,
 `license_number` String,
 `phone_number` String,
 `note` String,
 `voiceprint_source_url` String,
 `voiceprint_show_url` String,
 `update_time` Int64,
 `create_time` Int64,
 `user_id` String,
 `flag` String
) ENGINE = MergeTree PARTITION BY toRelativeHourNum(toDateTime(create_time)) ORDER BY create_time SETTINGS index_granularity = 8192;
