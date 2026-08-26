-- @operation: export
-- @entity: batch
-- @name: Update SHO
-- @exportedAt: 2026-08-26T22:35:35.910Z
-- @opIds: 13740, 13741, 13742

-- --- BEGIN op 13740 ( update regular_expression "Showtime" )
update "regular_expressions" set "pattern" = '\b(SHO(WTIME)?)(?=[\W_]+WEB[ ._-]?(DL|RIP)\b)' where "name" = 'Showtime' and "pattern" = '\b(SHO|Showtime)\b[ ._-]WEB[ ._-]?(DL|RIP)?\b';
-- --- END op 13740

-- --- BEGIN op 13741 ( update custom_format "SHO" )
DELETE FROM custom_format_conditions
	WHERE custom_format_name = 'SHO'
	  AND name = 'SHO Rename Regex'
	  AND type = 'release_title'
	  AND arr_type = 'all'
	  AND negate = 0
	  AND required = 0;
-- --- END op 13741

-- --- BEGIN op 13742 ( update custom_format "SHO" )
UPDATE custom_format_conditions
SET required = 1
WHERE custom_format_name = 'SHO'
  AND name = 'SHO Regex'
  AND type = 'release_title'
  AND arr_type = 'all'
  AND negate = 0
  AND required = 0;
-- --- END op 13742
