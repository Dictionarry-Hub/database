-- @operation: export
-- @entity: batch
-- @name: Update iT CF/Regex
-- @exportedAt: 2026-08-26T18:53:35.134Z
-- @opIds: 13724, 13725, 13726

-- --- BEGIN op 13724 ( update regular_expression "iTunes" )
update "regular_expressions" set "pattern" = '\b(iT(unes)?)(?=[\W_]+WEB[ ._-]?(DL|RIP)\b)' where "name" = 'iTunes' and "pattern" = '\b(iT|iTunes)\b(?=[ ._-]WEB[ ._-]?(DL|RIP)\b)';
-- --- END op 13724

-- --- BEGIN op 13725 ( update custom_format "iT" )
DELETE FROM custom_format_conditions
	WHERE custom_format_name = 'iT'
	  AND name = 'iT Rename Regex'
	  AND type = 'release_title'
	  AND arr_type = 'all'
	  AND negate = 0
	  AND required = 0;
-- --- END op 13725

-- --- BEGIN op 13726 ( update custom_format "iT" )
UPDATE custom_format_conditions
SET required = 1
WHERE custom_format_name = 'iT'
  AND name = 'iT Regex'
  AND type = 'release_title'
  AND arr_type = 'all'
  AND negate = 0
  AND required = 0;
-- --- END op 13726
