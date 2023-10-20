TYPE=TRIGGERS
triggers='CREATE DEFINER=`kea`@`%` TRIGGER dhcp4_global_parameter_AINS AFTER INSERT ON dhcp4_global_parameter\n    FOR EACH ROW\n    BEGIN\n        CALL createAuditEntryDHCP4(\'dhcp4_global_parameter\', NEW.id, "create");\n    END' 'CREATE DEFINER=`kea`@`%` TRIGGER dhcp4_global_parameter_AUPD AFTER UPDATE ON dhcp4_global_parameter\n    FOR EACH ROW\n    BEGIN\n        CALL createAuditEntryDHCP4(\'dhcp4_global_parameter\', NEW.id, "update");\n    END' 'CREATE DEFINER=`kea`@`%` TRIGGER dhcp4_global_parameter_ADEL AFTER DELETE ON dhcp4_global_parameter\n    FOR EACH ROW\n    BEGIN\n        CALL createAuditEntryDHCP4(\'dhcp4_global_parameter\', OLD.id, "delete");\n    END'
sql_modes=1411383296 1411383296 1411383296
definers='kea@%' 'kea@%' 'kea@%'
client_cs_names='latin1' 'latin1' 'latin1'
connection_cl_names='latin1_swedish_ci' 'latin1_swedish_ci' 'latin1_swedish_ci'
db_cl_names='utf8mb4_unicode_ci' 'utf8mb4_unicode_ci' 'utf8mb4_unicode_ci'
created=1695776804326976 1695776804328342 1695776804330342
