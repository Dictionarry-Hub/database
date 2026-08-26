-- @operation: export
-- @entity: batch
-- @name: Update PLAY
-- @exportedAt: 2026-08-26T22:24:24.108Z
-- @opIds: 13728, 13729, 13730

-- --- BEGIN op 13728 ( update regular_expression "Google TV" )
update "regular_expressions" set "pattern" = '\b(PLAY)(?=[\W_]+WEB[ ._-]?(DL|RIP)\b)' where "name" = 'Google TV' and "pattern" = '\b(PLAY)\b[ ._-]WEB[ ._-]?(DL|RIP)?\b';
-- --- END op 13728

-- --- BEGIN op 13729 ( update custom_format "PLAY" )
DELETE FROM custom_format_conditions
	WHERE custom_format_name = 'PLAY'
	  AND name = 'PLAY Rename Regex'
	  AND type = 'release_title'
	  AND arr_type = 'all'
	  AND negate = 0
	  AND required = 0;
-- --- END op 13729

-- --- BEGIN op 13730 ( update custom_format "PLAY" )
UPDATE custom_format_conditions
SET required = 1
WHERE custom_format_name = 'PLAY'
  AND name = 'PLAY Regex'
  AND type = 'release_title'
  AND arr_type = 'all'
  AND negate = 0
  AND required = 0;
-- --- END op 13730
