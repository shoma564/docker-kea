TYPE=TRIGGERS
triggers='CREATE DEFINER=`kea`@`%` TRIGGER dhcp4_client_class_check_dependency_BINS BEFORE INSERT ON dhcp4_client_class_dependency FOR EACH ROW\nBEGIN\n    CALL checkDHCPv4ClientClassDependency(NEW.class_id, NEW.dependency_id);\nEND' 'CREATE DEFINER=`kea`@`%` TRIGGER dhcp4_client_class_dependency_AINS AFTER INSERT ON dhcp4_client_class_dependency FOR EACH ROW\nBEGIN\n    CALL updateDHCPv4ClientClassKnownDependency(NEW.class_id, NEW.dependency_id);\nEND'
sql_modes=1411383296 1411383296
definers='kea@%' 'kea@%'
client_cs_names='latin1' 'latin1'
connection_cl_names='latin1_swedish_ci' 'latin1_swedish_ci'
db_cl_names='utf8mb4_unicode_ci' 'utf8mb4_unicode_ci'
created=1695776804703640 1695776804705714
