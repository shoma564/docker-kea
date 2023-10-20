TYPE=TRIGGERS
triggers='CREATE DEFINER=`kea`@`%` TRIGGER dhcp6_options_AINS AFTER INSERT ON dhcp6_options\n    FOR EACH ROW\n    BEGIN\n        CALL createOptionAuditDHCP6("create", NEW.scope_id, NEW.option_id, NEW.dhcp6_subnet_id,\n                                    NEW.host_id, NEW.shared_network_name, NEW.pool_id,\n                                    NEW.pd_pool_id, NEW.modification_ts);\n    END' 'CREATE DEFINER=`kea`@`%` TRIGGER dhcp6_options_AUPD AFTER UPDATE ON dhcp6_options\n    FOR EACH ROW\n    BEGIN\n        CALL createOptionAuditDHCP6("update", NEW.scope_id, NEW.option_id, NEW.dhcp6_subnet_id,\n                                    NEW.host_id, NEW.shared_network_name, NEW.pool_id,\n                                    NEW.pd_pool_id, NEW.modification_ts);\n    END' 'CREATE DEFINER=`kea`@`%` TRIGGER dhcp6_options_ADEL AFTER DELETE ON dhcp6_options\n    FOR EACH ROW\n    BEGIN\n        CALL createOptionAuditDHCP6("delete", OLD.scope_id, OLD.option_id, OLD.dhcp6_subnet_id,\n                                    OLD.host_id, OLD.shared_network_name, OLD.pool_id,\n                                    OLD.pd_pool_id, NOW());\n    END'
sql_modes=1411383296 1411383296 1411383296
definers='kea@%' 'kea@%' 'kea@%'
client_cs_names='latin1' 'latin1' 'latin1'
connection_cl_names='latin1_swedish_ci' 'latin1_swedish_ci' 'latin1_swedish_ci'
db_cl_names='utf8mb4_unicode_ci' 'utf8mb4_unicode_ci' 'utf8mb4_unicode_ci'
created=1695776804535411 1695776804538678 1695776804541904
