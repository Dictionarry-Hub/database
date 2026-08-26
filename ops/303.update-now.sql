-- @operation: export
-- @entity: batch
-- @name: Update NOW
-- @exportedAt: 2026-08-26T22:32:24.195Z
-- @opIds: 13736, 13737, 13738

-- --- BEGIN op 13736 ( update regular_expression "Now" )
update "regular_expressions" set "pattern" = '\b(NOW)(?=[\W_]+WEB[ ._-]?(DL|RIP)\b)' where "name" = 'Now' and "pattern" = '\b(NOW)\b[ ._-]WEB[ ._-]?(DL|RIP)?\b';
-- --- END op 13736

-- --- BEGIN op 13737 ( update custom_format "NOW" )
DELETE FROM custom_format_conditions
	WHERE custom_format_name = 'NOW'
	  AND name = 'NOW Rename Regex'
	  AND type = 'release_title'
	  AND arr_type = 'all'
	  AND negate = 0
	  AND required = 0;
-- --- END op 13737

-- --- BEGIN op 13738 ( update custom_format "NOW" )
UPDATE custom_format_conditions
SET required = 1
WHERE custom_format_name = 'NOW'
  AND name = 'NOW Regex'
  AND type = 'release_title'
  AND arr_type = 'all'
  AND negate = 0
  AND required = 0;
-- --- END op 13738
