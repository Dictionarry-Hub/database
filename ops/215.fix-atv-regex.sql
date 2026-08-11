-- @operation: export
-- @entity: batch
-- @name: Fix ATV Regex
-- @exportedAt: 2026-08-11T23:58:33.782Z
-- @opIds: 12918

-- --- BEGIN op 12918 ( update regular_expression "Apple TV" )
update "regular_expressions" set "pattern" = '\b(ATV)\b' where "name" = 'Apple TV' and "pattern" = '\b(ATV)b';
-- --- END op 12918
