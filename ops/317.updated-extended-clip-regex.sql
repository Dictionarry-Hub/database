-- @operation: export
-- @entity: batch
-- @name: Updated Extended Clip Regex
-- @exportedAt: 2026-08-28T23:49:04.046Z
-- @opIds: 14155

-- --- BEGIN op 14155 ( update regular_expression "Extended Clip" )
update "regular_expressions" set "pattern" = '\bExtended[ ._-]?Clip\b' where "name" = 'Extended Clip' and "pattern" = '\b(extended.?clip)\b';
-- --- END op 14155
