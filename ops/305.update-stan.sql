-- @operation: export
-- @entity: batch
-- @name: Update STAN
-- @exportedAt: 2026-08-26T22:36:43.027Z
-- @opIds: 13744, 13745, 13746

-- --- BEGIN op 13744 ( update regular_expression "Stan" )
update "regular_expressions" set "pattern" = '\b(STAN)(?=[\W_]+WEB[ ._-]?(DL|RIP)\b)' where "name" = 'Stan' and "pattern" = '\b(STAN)\b[ ._-]WEB[ ._-]?(DL|RIP)?\b';
-- --- END op 13744

-- --- BEGIN op 13745 ( update custom_format "STAN" )
DELETE FROM custom_format_conditions
	WHERE custom_format_name = 'STAN'
	  AND name = 'STAN Rename Regex'
	  AND type = 'release_title'
	  AND arr_type = 'all'
	  AND negate = 0
	  AND required = 0;
-- --- END op 13745

-- --- BEGIN op 13746 ( update custom_format "STAN" )
UPDATE custom_format_conditions
SET required = 1
WHERE custom_format_name = 'STAN'
  AND name = 'STAN Regex'
  AND type = 'release_title'
  AND arr_type = 'all'
  AND negate = 0
  AND required = 0;
-- --- END op 13746
