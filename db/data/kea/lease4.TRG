TYPE=TRIGGERS
triggers='CREATE DEFINER=`kea`@`%` TRIGGER lease4_AINS AFTER INSERT ON lease4 FOR EACH ROW\nBEGIN\n    CALL lease4_AINS_lease4_stat(NEW.state, NEW.subnet_id);\n    IF @json_supported IS NULL THEN\n        SELECT isJsonSupported() INTO @json_supported;\n    END IF;\n    IF @json_supported = 1 THEN\n        CALL lease4_AINS_lease4_stat_by_client_class(NEW.state, NEW.user_context);\n    END IF;\nEND' 'CREATE DEFINER=`kea`@`%` TRIGGER lease4_AUPD AFTER UPDATE ON lease4 FOR EACH ROW\nBEGIN\n    CALL lease4_AUPD_lease4_stat(OLD.state, OLD.subnet_id, NEW.state, NEW.subnet_id);\n    IF @json_supported IS NULL THEN\n        SELECT isJsonSupported() INTO @json_supported;\n    END IF;\n    IF @json_supported = 1 THEN\n        CALL lease4_AUPD_lease4_stat_by_client_class(OLD.state, OLD.user_context, NEW.state, NEW.user_context);\n    END IF;\nEND' 'CREATE DEFINER=`kea`@`%` TRIGGER lease4_ADEL AFTER DELETE ON lease4 FOR EACH ROW\nBEGIN\n    CALL lease4_ADEL_lease4_stat(OLD.state, OLD.subnet_id);\n    IF @json_supported IS NULL THEN\n        SELECT isJsonSupported() INTO @json_supported;\n    END IF;\n    IF @json_supported = 1 THEN\n        CALL lease4_ADEL_lease4_stat_by_client_class(OLD.state, OLD.user_context);\n    END IF;\nEND'
sql_modes=1411383296 1411383296 1411383296
definers='kea@%' 'kea@%' 'kea@%'
client_cs_names='latin1' 'latin1' 'latin1'
connection_cl_names='latin1_swedish_ci' 'latin1_swedish_ci' 'latin1_swedish_ci'
db_cl_names='utf8mb4_unicode_ci' 'utf8mb4_unicode_ci' 'utf8mb4_unicode_ci'
created=1695776804859514 1695776804863595 1695776804867220
