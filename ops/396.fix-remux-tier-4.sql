-- @operation: export
-- @entity: batch
-- @name: Fix Remux Tier 4
-- @exportedAt: 2026-10-30T17:33:31.055Z
-- @opIds: 15547

-- --- BEGIN op 15547 ( update custom_format "Remux Tier 4" )
UPDATE custom_format_conditions
SET type = 'release_group'
WHERE custom_format_name = 'Remux Tier 4'
  AND name = 'SiCFoI'
  AND type = 'release_title'
  AND arr_type = 'all'
  AND negate = 0
  AND required = 0;

DELETE FROM condition_patterns WHERE custom_format_name = 'Remux Tier 4' AND condition_name = 'SiCFoI' AND regular_expression_name = 'SiCFoI';

INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name) VALUES ('Remux Tier 4', 'SiCFoI', 'SiCFoI');
-- --- END op 15547
