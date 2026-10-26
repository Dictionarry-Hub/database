-- @operation: export
-- @entity: batch
-- @name: Fix 1080p WEB-DL HEVC
-- @exportedAt: 2026-10-26T06:18:36.782Z
-- @opIds: 15497, 15498

-- --- BEGIN op 15497 ( update custom_format "1080p WEB-DL HEVC" )
DELETE FROM custom_format_conditions
	WHERE custom_format_name = '1080p WEB-DL HEVC'
	  AND name = 'h265'
	  AND type = 'release_title'
	  AND arr_type = 'all'
	  AND negate = 0
	  AND required = 1;
-- --- END op 15497

-- --- BEGIN op 15498 ( update custom_format "1080p WEB-DL HEVC" )
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('1080p WEB-DL HEVC', 'HEVC', 'release_title', 'all', 0, 1);

INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name) VALUES ('1080p WEB-DL HEVC', 'HEVC', 'HEVC');
-- --- END op 15498
