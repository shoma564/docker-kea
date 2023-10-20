TYPE=TRIGGERS
triggers='CREATE DEFINER=`kea`@`%` TRIGGER dhcp6_option_def_AINS AFTER INSERT ON dhcp6_option_def\n    FOR EACH ROW\n    BEGIN\n        CALL createAuditEntryDHCP6(\'dhcp6_option_def\', NEW.id, "create");\n    END' 'CREATE DEFINER=`kea`@`%` TRIGGER dhcp6_option_def_AUPD AFTER UPDATE ON dhcp6_option_def\n    FOR EACH ROW\n    BEGIN\n        CALL createAuditEntryDHCP6(\'dhcp6_option_def\', NEW.id, "update");\n    END' 'CREATE DEFINER=`kea`@`%` TRIGGER dhcp6_option_def_ADEL AFTER DELETE ON dhcp6_option_def\n    FOR EACH ROW\n    BEGIN\n        CALL createAuditEntryDHCP6(\'dhcp6_option_def\', OLD.id, "delete");\n    END'
sql_modes=1411383296 1411383296 1411383296
definers='kea@%' 'kea@%' 'kea@%'
client_cs_names='latin1' 'latin1' 'latin1'
connection_cl_names='latin1_swedish_ci' 'latin1_swedish_ci' 'latin1_swedish_ci'
db_cl_names='utf8mb4_unicode_ci' 'utf8mb4_unicode_ci' 'utf8mb4_unicode_ci'
created=1695776804446284 1695776804447540 1695776804450176
