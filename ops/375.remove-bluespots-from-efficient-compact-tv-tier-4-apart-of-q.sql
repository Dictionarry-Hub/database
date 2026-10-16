-- @operation: export
-- @entity: batch
-- @name: Remove Bluespots From Efficient/Compact TV Tier 4 Apart of QxR
-- @exportedAt: 2026-10-16T19:15:22.474Z
-- @opIds: 15073, 15074, 15075

-- --- BEGIN op 15073 ( update custom_format "1080p Compact TV WEB Tier 4" )
DELETE FROM custom_format_conditions
	WHERE custom_format_name = '1080p Compact TV WEB Tier 4'
	  AND name = 'bluespots'
	  AND type = 'release_group'
	  AND arr_type = 'all'
	  AND negate = 0
	  AND required = 0;
-- --- END op 15073

-- --- BEGIN op 15074 ( update custom_format "1080p Efficient TV WEB Tier 4" )
DELETE FROM custom_format_conditions
	WHERE custom_format_name = '1080p Efficient TV WEB Tier 4'
	  AND name = 'bluespots'
	  AND type = 'release_group'
	  AND arr_type = 'all'
	  AND negate = 0
	  AND required = 0;
-- --- END op 15074

-- --- BEGIN op 15075 ( delete regular_expression "bluespots" )
DELETE FROM regular_expression_tags WHERE regular_expression_name = 'bluespots' AND tag_name = 'Release Group';

DELETE FROM regular_expression_tags WHERE regular_expression_name = 'bluespots' AND tag_name = 'WEB-DL';

delete from "regular_expressions" where "name" = 'bluespots';
-- --- END op 15075
