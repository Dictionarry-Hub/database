-- @operation: export
-- @entity: batch
-- @name: Update IQIYI
-- @exportedAt: 2026-08-26T22:30:02.718Z
-- @opIds: 13732, 13733, 13734

-- --- BEGIN op 13732 ( update regular_expression "iQIYI" )
update "regular_expressions" set "pattern" = '\b(iQ(IYI)?)(?=[\W_]+WEB[ ._-]?(DL|RIP)\b)' where "name" = 'iQIYI' and "pattern" = '\b(iQIY|IQ|iQIYI)\b(?=[ ._-]WEB[ ._-]?(DL|RIP)\b)';
-- --- END op 13732

-- --- BEGIN op 13733 ( update custom_format "IQIYI" )
DELETE FROM custom_format_conditions
	WHERE custom_format_name = 'IQIYI'
	  AND name = 'IQIYI Rename'
	  AND type = 'release_title'
	  AND arr_type = 'all'
	  AND negate = 0
	  AND required = 0;
-- --- END op 13733

-- --- BEGIN op 13734 ( update custom_format "IQIYI" )
UPDATE custom_format_conditions
SET required = 1
WHERE custom_format_name = 'IQIYI'
  AND name = 'IQIYI Regex'
  AND type = 'release_title'
  AND arr_type = 'all'
  AND negate = 0
  AND required = 0;
-- --- END op 13734
