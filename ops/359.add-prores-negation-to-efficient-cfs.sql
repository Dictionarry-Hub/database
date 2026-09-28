-- @operation: export
-- @entity: batch
-- @name: Add ProRes Negation to Efficient CFs
-- @exportedAt: 2026-09-28T23:50:25.811Z
-- @opIds: 14625, 14626, 14627, 14628

-- --- BEGIN op 14625 ( update custom_format "1080p WEB-DL (Efficient)" )
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('1080p WEB-DL (Efficient)', 'Not ProRes', 'release_title', 'all', 1, 1);

INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name) VALUES ('1080p WEB-DL (Efficient)', 'Not ProRes', 'ProRes');
-- --- END op 14625

-- --- BEGIN op 14626 ( update custom_format "1080p WEB-DL (Efficient)" )
DELETE FROM custom_format_conditions
	WHERE custom_format_name = '1080p WEB-DL (Efficient)'
	  AND name = 'Not ProRes'
	  AND type = 'release_title'
	  AND arr_type = 'all'
	  AND negate = 1
	  AND required = 1;
-- --- END op 14626

-- --- BEGIN op 14627 ( update custom_format "1080p WEB-DL (Efficient)" )
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('1080p WEB-DL (Efficient)', 'ProRes', 'release_title', 'all', 1, 1);

INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name) VALUES ('1080p WEB-DL (Efficient)', 'ProRes', 'ProRes');
-- --- END op 14627

-- --- BEGIN op 14628 ( update custom_format "2160p WEB-DL (Efficient)" )
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('2160p WEB-DL (Efficient)', 'ProRes', 'release_title', 'all', 1, 1);

INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name) VALUES ('2160p WEB-DL (Efficient)', 'ProRes', 'ProRes');
-- --- END op 14628
