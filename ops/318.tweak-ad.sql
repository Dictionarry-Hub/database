-- @operation: export
-- @entity: batch
-- @name: Tweak AD
-- @exportedAt: 2026-08-28T23:56:02.736Z
-- @opIds: 14157

-- --- BEGIN op 14157 ( update regular_expression "Audio Description" )
update "regular_expressions" set "pattern" = '\b(Audio[ ._-]?Description)\b' where "name" = 'Audio Description' and "pattern" = '\b(Audio[ ._-]Description)\b';
-- --- END op 14157
