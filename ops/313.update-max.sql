-- @operation: export
-- @entity: batch
-- @name: Update MAX
-- @exportedAt: 2026-08-27T20:48:15.431Z
-- @opIds: 13807, 13808

-- --- BEGIN op 13807 ( update custom_format "MAX" )
DELETE FROM custom_format_conditions
	WHERE custom_format_name = 'MAX'
	  AND name = 'MAX Rename Regex'
	  AND type = 'release_title'
	  AND arr_type = 'all'
	  AND negate = 0
	  AND required = 0;
-- --- END op 13807

-- --- BEGIN op 13808 ( update custom_format "MAX" )
UPDATE custom_format_conditions
SET required = 1
WHERE custom_format_name = 'MAX'
  AND name = 'MAX Regex'
  AND type = 'release_title'
  AND arr_type = 'all'
  AND negate = 0
  AND required = 0;
-- --- END op 13808
