TYPE=TRIGGERS
triggers='CREATE DEFINER=`kea`@`%` TRIGGER dhcp6_pd_pool_BDEL BEFORE DELETE ON dhcp6_pd_pool FOR EACH ROW\nBEGIN\nDELETE FROM dhcp6_options WHERE scope_id = 6 AND pd_pool_id = OLD.id;\nEND'
sql_modes=1411383296
definers='kea@%'
client_cs_names='latin1'
connection_cl_names='latin1_swedish_ci'
db_cl_names='utf8mb4_unicode_ci'
created=1695776804512980
