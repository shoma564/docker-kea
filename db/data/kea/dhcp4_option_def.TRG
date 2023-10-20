TYPE=TRIGGERS
triggers='CREATE DEFINER=`kea`@`%` TRIGGER dhcp4_option_def_AINS AFTER INSERT ON dhcp4_option_def\n    FOR EACH ROW\n    BEGIN\n        CALL createAuditEntryDHCP4(\'dhcp4_option_def\', NEW.id, "create");\n    END' 'CREATE DEFINER=`kea`@`%` TRIGGER dhcp4_option_def_AUPD AFTER UPDATE ON dhcp4_option_def\n    FOR EACH ROW\n    BEGIN\n        CALL createAuditEntryDHCP4(\'dhcp4_option_def\', NEW.id, "update");\n    END' 'CREATE DEFINER=`kea`@`%` TRIGGER dhcp4_option_def_ADEL AFTER DELETE ON dhcp4_option_def\n    FOR EACH ROW\n    BEGIN\n        CALL createAuditEntryDHCP4(\'dhcp4_option_def\', OLD.id, "delete");\n    END'
sql_modes=1411383296 1411383296 1411383296
definers='kea@%' 'kea@%' 'kea@%'
client_cs_names='latin1' 'latin1' 'latin1'
connection_cl_names='latin1_swedish_ci' 'latin1_swedish_ci' 'latin1_swedish_ci'
db_cl_names='utf8mb4_unicode_ci' 'utf8mb4_unicode_ci' 'utf8mb4_unicode_ci'
created=1695776804342556 1695776804343856 1695776804345714
