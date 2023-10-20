TYPE=TRIGGERS
triggers='CREATE DEFINER=`kea`@`%` TRIGGER dhcp6_pool_BDEL BEFORE DELETE ON dhcp6_pool FOR EACH ROW\n\nBEGIN\nDELETE FROM dhcp6_options WHERE scope_id = 5 AND pool_id = OLD.id;\nEND'
sql_modes=1411383296
definers='kea@%'
client_cs_names='latin1'
connection_cl_names='latin1_swedish_ci'
db_cl_names='utf8mb4_unicode_ci'
created=1695776804201050
