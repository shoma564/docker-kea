TYPE=TRIGGERS
triggers='CREATE DEFINER=`kea`@`%` TRIGGER dhcp4_shared_network_AINS AFTER INSERT ON dhcp4_shared_network\n    FOR EACH ROW\n    BEGIN\n        CALL createAuditEntryDHCP4(\'dhcp4_shared_network\', NEW.id, "create");\n    END' 'CREATE DEFINER=`kea`@`%` TRIGGER dhcp4_shared_network_AUPD AFTER UPDATE ON dhcp4_shared_network\n    FOR EACH ROW\n    BEGIN\n        CALL createAuditEntryDHCP4(\'dhcp4_shared_network\', NEW.id, "update");\n    END' 'CREATE DEFINER=`kea`@`%` TRIGGER dhcp4_shared_network_BDEL BEFORE DELETE ON dhcp4_shared_network\n    FOR EACH ROW\n    BEGIN\n        CALL createAuditEntryDHCP4(\'dhcp4_shared_network\', OLD.id, "delete");\n        \n        \n        UPDATE dhcp4_subnet SET shared_network_name = NULL WHERE shared_network_name = OLD.name;\n        DELETE FROM dhcp4_options WHERE shared_network_name = OLD.name;\n    END'
sql_modes=1411383296 1411383296 1411383296
definers='kea@%' 'kea@%' 'kea@%'
client_cs_names='latin1' 'latin1' 'latin1'
connection_cl_names='latin1_swedish_ci' 'latin1_swedish_ci' 'latin1_swedish_ci'
db_cl_names='utf8mb4_unicode_ci' 'utf8mb4_unicode_ci' 'utf8mb4_unicode_ci'
created=1695776804337399 1695776804338759 1695776804821382
