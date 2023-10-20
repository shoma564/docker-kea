TYPE=TRIGGERS
triggers='CREATE DEFINER=`kea`@`%` TRIGGER dhcp4_options_AINS AFTER INSERT ON dhcp4_options\n    FOR EACH ROW\n    BEGIN\n        CALL createOptionAuditDHCP4("create", NEW.scope_id, NEW.option_id, NEW.dhcp4_subnet_id,\n                                    NEW.host_id, NEW.shared_network_name, NEW.pool_id,\n                                    NEW.modification_ts);\n    END' 'CREATE DEFINER=`kea`@`%` TRIGGER dhcp4_options_AUPD AFTER UPDATE ON dhcp4_options\n    FOR EACH ROW\n    BEGIN\n        CALL createOptionAuditDHCP4("update", NEW.scope_id, NEW.option_id, NEW.dhcp4_subnet_id,\n                                    NEW.host_id, NEW.shared_network_name, NEW.pool_id,\n                                    NEW.modification_ts);\n    END' 'CREATE DEFINER=`kea`@`%` TRIGGER dhcp4_options_ADEL AFTER DELETE ON dhcp4_options\n    FOR EACH ROW\n    BEGIN\n        CALL createOptionAuditDHCP4("delete", OLD.scope_id, OLD.option_id, OLD.dhcp4_subnet_id,\n                                    OLD.host_id, OLD.shared_network_name, OLD.pool_id,\n                                    NOW());\n    END'
sql_modes=1411383296 1411383296 1411383296
definers='kea@%' 'kea@%' 'kea@%'
client_cs_names='latin1' 'latin1' 'latin1'
connection_cl_names='latin1_swedish_ci' 'latin1_swedish_ci' 'latin1_swedish_ci'
db_cl_names='utf8mb4_unicode_ci' 'utf8mb4_unicode_ci' 'utf8mb4_unicode_ci'
created=1695776804523923 1695776804526986 1695776804530087
