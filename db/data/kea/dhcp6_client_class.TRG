TYPE=TRIGGERS
triggers='CREATE DEFINER=`kea`@`%` TRIGGER dhcp6_client_class_AINS AFTER INSERT ON dhcp6_client_class FOR EACH ROW BEGIN\n    CALL setClientClass6Order(NEW.id, NEW.follow_class_name, NULL);\n    CALL createAuditEntryDHCP6(\'dhcp6_client_class\', NEW.id, "create");\nEND' 'CREATE DEFINER=`kea`@`%` TRIGGER dhcp6_client_class_AUPD AFTER UPDATE ON dhcp6_client_class FOR EACH ROW BEGIN\n    SET @depend_on_known_directly = OLD.depend_on_known_directly;\n    SET @client_class_id = NEW.id;\n    CALL setClientClass6Order(NEW.id, NEW.follow_class_name, OLD.follow_class_name);\n    CALL createAuditEntryDHCP6(\'dhcp6_client_class\', NEW.id, "update");\nEND' 'CREATE DEFINER=`kea`@`%` TRIGGER dhcp6_client_class_ADEL AFTER DELETE ON dhcp6_client_class FOR EACH ROW BEGIN\n    CALL createAuditEntryDHCP6(\'dhcp6_client_class\', OLD.id, "delete");\nEND'
sql_modes=1411383296 1411383296 1411383296
definers='kea@%' 'kea@%' 'kea@%'
client_cs_names='latin1' 'latin1' 'latin1'
connection_cl_names='latin1_swedish_ci' 'latin1_swedish_ci' 'latin1_swedish_ci'
db_cl_names='utf8mb4_unicode_ci' 'utf8mb4_unicode_ci' 'utf8mb4_unicode_ci'
created=1695776804725148 1695776804726504 1695776804728545
