-- @operation: export
-- @entity: batch
-- @name: Update HBO
-- @exportedAt: 2026-08-27T01:35:32.004Z
-- @opIds: 13792, 13793, 13794

-- --- BEGIN op 13792 ( update regular_expression "HBO" )
update "regular_expressions" set "pattern" = '\b(HBO)(?=[\W_]+WEB[ ._-]?(DL|RIP)\b)' where "name" = 'HBO' and "pattern" = '\b(HBO)(?![ ._-]MAX)\b(?=[ ._-]WEB[ ._-]?(DL|RIP)\b)';
-- --- END op 13792

-- --- BEGIN op 13793 ( update custom_format "HBO" )
DELETE FROM custom_format_conditions
	WHERE custom_format_name = 'HBO'
	  AND name = 'HBO Rename Regex'
	  AND type = 'release_title'
	  AND arr_type = 'all'
	  AND negate = 0
	  AND required = 0;
-- --- END op 13793

-- --- BEGIN op 13794 ( update custom_format "HBO" )
UPDATE custom_format_conditions
SET required = 1
WHERE custom_format_name = 'HBO'
  AND name = 'HBO Regex'
  AND type = 'release_title'
  AND arr_type = 'all'
  AND negate = 0
  AND required = 0;
-- --- END op 13794
