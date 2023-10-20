TYPE=TRIGGERS
triggers='CREATE DEFINER=`kea`@`%` TRIGGER dhcp4_subnet_AINS AFTER INSERT ON dhcp4_subnet\n    FOR EACH ROW\n    BEGIN\n        CALL createAuditEntryDHCP4(\'dhcp4_subnet\', NEW.subnet_id, "create");\n    END' 'CREATE DEFINER=`kea`@`%` TRIGGER dhcp4_subnet_AUPD AFTER UPDATE ON dhcp4_subnet\n    FOR EACH ROW\n    BEGIN\n        CALL createAuditEntryDHCP4(\'dhcp4_subnet\', NEW.subnet_id, "update");\n    END' 'CREATE DEFINER=`kea`@`%` TRIGGER dhcp4_subnet_BDEL BEFORE DELETE ON dhcp4_subnet\n    FOR EACH ROW\n    BEGIN\n        CALL createAuditEntryDHCP4(\'dhcp4_subnet\', OLD.subnet_id, "delete");\n        DELETE FROM dhcp4_pool WHERE subnet_id = OLD.subnet_id;\n        DELETE FROM dhcp4_options WHERE dhcp4_subnet_id = OLD.subnet_id;\n    END'
sql_modes=1411383296 1411383296 1411383296
definers='kea@%' 'kea@%' 'kea@%'
client_cs_names='latin1' 'latin1' 'latin1'
connection_cl_names='latin1_swedish_ci' 'latin1_swedish_ci' 'latin1_swedish_ci'
db_cl_names='utf8mb4_unicode_ci' 'utf8mb4_unicode_ci' 'utf8mb4_unicode_ci'
created=1695776804332290 1695776804333621 1695776804485177
