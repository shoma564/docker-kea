TYPE=TRIGGERS
triggers='CREATE DEFINER=`kea`@`%` TRIGGER dhcp4_server_AINS AFTER INSERT ON dhcp4_server\n    FOR EACH ROW\n    BEGIN\n        CALL createAuditEntryDHCP4(\'dhcp4_server\', NEW.id, "create");\n    END' 'CREATE DEFINER=`kea`@`%` TRIGGER dhcp4_server_AUPD AFTER UPDATE ON dhcp4_server\n    FOR EACH ROW\n    BEGIN\n        CALL createAuditEntryDHCP4(\'dhcp4_server\', NEW.id, "update");\n    END' 'CREATE DEFINER=`kea`@`%` TRIGGER dhcp4_server_ADEL AFTER DELETE ON dhcp4_server\n    FOR EACH ROW\n    BEGIN\n        CALL createAuditEntryDHCP4(\'dhcp4_server\', OLD.id, "delete");\n    END'
sql_modes=1411383296 1411383296 1411383296
definers='kea@%' 'kea@%' 'kea@%'
client_cs_names='latin1' 'latin1' 'latin1'
connection_cl_names='latin1_swedish_ci' 'latin1_swedish_ci' 'latin1_swedish_ci'
db_cl_names='utf8mb4_unicode_ci' 'utf8mb4_unicode_ci' 'utf8mb4_unicode_ci'
created=1695776804467430 1695776804468743 1695776804470758
