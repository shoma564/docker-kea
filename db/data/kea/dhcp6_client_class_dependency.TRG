TYPE=TRIGGERS
triggers='CREATE DEFINER=`kea`@`%` TRIGGER dhcp6_client_class_check_dependency_BINS BEFORE INSERT ON dhcp6_client_class_dependency FOR EACH ROW\nBEGIN\n    CALL checkDHCPv6ClientClassDependency(NEW.class_id, NEW.dependency_id);\nEND' 'CREATE DEFINER=`kea`@`%` TRIGGER dhcp6_client_class_dependency_AINS AFTER INSERT ON dhcp6_client_class_dependency FOR EACH ROW\nBEGIN\n    CALL updateDHCPv6ClientClassKnownDependency(NEW.class_id, NEW.dependency_id);\nEND'
sql_modes=1411383296 1411383296
definers='kea@%' 'kea@%'
client_cs_names='latin1' 'latin1'
connection_cl_names='latin1_swedish_ci' 'latin1_swedish_ci'
db_cl_names='utf8mb4_unicode_ci' 'utf8mb4_unicode_ci'
created=1695776804734256 1695776804736404
